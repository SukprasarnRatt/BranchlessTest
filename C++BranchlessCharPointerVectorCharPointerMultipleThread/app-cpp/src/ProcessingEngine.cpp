// ProcessingEngine.cpp

#include "ProcessingEngine.hpp"
// #include <queue>
#include <iostream>
// #include <string>
// #include <filesystem>
// #include <chrono>
// #include <fstream>
// #include <vector>
// #include <unordered_map>
#include <thread>
#include <mutex>
// #include <iomanip>
// #include <sstream>
#include <algorithm>
#include <numa.h>    // Include NUMA API
#include <numaif.h>  // Include NUMA memory policy functions
#include <sched.h>   // Include scheduling functions
// #include <cstring>   // Include C string manipulation functions
// #include <stdexcept> // For std::invalid_argument
#include <fcntl.h>
#include <unistd.h>  // For read, close, and other POSIX functions

// Global mutex for synchronizing std::cout
std::mutex cout_mutex;

// Constructor for ProcessingEngine class that accepts the number of threads
ProcessingEngine::ProcessingEngine(int numThreads, int affinityFlag) {
    this->numThreads = numThreads;  // Initialize the numThreads member variable with the provided number of threads
    this->affinityFlag = affinityFlag;
}

// Load files on a specific NUMA node
void ProcessingEngine::loadFilesOnNode(int thread_id,
                                       int node_id,
                                       const std::vector<std::pair<std::string, uintmax_t>>& files,
                                       std::queue<FileData>& fileBuffer,
                                       std::mutex& bufferMutex) {
    // Set thread affinity to the specified NUMA node
    cpu_set_t cpuset;
    CPU_ZERO(&cpuset);

    // Allocate a bitmask to represent the CPUs associated with the specified NUMA node
    struct bitmask* cpumask = numa_bitmask_alloc(numa_num_possible_cpus());

    // Populate cpumask with the CPUs that are part of the specified NUMA node
    if (numa_node_to_cpus(node_id, cpumask) != 0) {
        std::lock_guard<std::mutex> guard(cout_mutex);
        std::cerr << "Error retrieving CPUs for node " << node_id << std::endl;
        numa_bitmask_free(cpumask);
        return;
    }

    // Iterate over all possible CPUs and set the CPU set
    for (int i = 0; i < cpumask->size; ++i) {
        if (numa_bitmask_isbitset(cpumask, i)) {
            CPU_SET(i, &cpuset);
        }
    }

    // Free the cpumask as it's no longer needed
    numa_bitmask_free(cpumask);

    // Set the CPU affinity of the calling thread using sched_setaffinity
    int ret = sched_setaffinity(0, sizeof(cpu_set_t), &cpuset);
    if (ret != 0) {
        std::lock_guard<std::mutex> guard(cout_mutex);
        std::cerr << "Error setting thread affinity for loader thread " << thread_id
                  << " on node " << node_id << std::endl;
    } else {
        std::lock_guard<std::mutex> guard(cout_mutex);
        std::cout << "Loader Thread " << thread_id << " affinity set to Node " << node_id << std::endl;
    }

    // Optionally, retrieve and print the current CPU the thread is running on
    int current_cpu = sched_getcpu();
    int current_node = numa_node_of_cpu(current_cpu);
    {
        std::lock_guard<std::mutex> guard(cout_mutex);
        std::cout << "Loader Thread " << thread_id << " is running on CPU " << current_cpu
                  << " (Node " << current_node << ")" << std::endl;
    }

    for (const auto& [filePath, fileSize] : files) {
        if (filePath.empty() || filePath.find("/.") != std::string::npos) {
            continue;
        }

        // Open the file using open system call
        int fd = open(filePath.c_str(), O_RDONLY);
        if (fd == -1) {
            std::lock_guard<std::mutex> guard(cout_mutex);
            std::cerr << "Loader Thread " << thread_id << " - Error opening file: " << filePath << std::endl;
            continue;
        }

        // Allocate a buffer to hold the file content
        char* buffer = new char[fileSize + 1];  // +1 for null terminator

        // Read the file content into the buffer
        ssize_t bytesRead = read(fd, buffer, fileSize);
        if (bytesRead == static_cast<ssize_t>(fileSize)) {
            buffer[fileSize] = '\0';  // Null-terminate the buffer

            // Advise the kernel to drop the cached pages
            posix_fadvise(fd, 0, 0, POSIX_FADV_DONTNEED);

            // Close the file
            close(fd);

            // Store the buffer in a vector<char*>
            std::vector<char*> bufferVector;
            bufferVector.push_back(buffer);

            {
                std::lock_guard<std::mutex> lock(bufferMutex);
                // Push FileData struct into the buffer queue
                fileBuffer.push({filePath, std::move(bufferVector), fileSize});
            }
        } else {
            // If reading failed, print an error and free the allocated buffer
            std::lock_guard<std::mutex> guard(cout_mutex);
            std::cerr << "Loader Thread " << thread_id << " - Error reading file: " << filePath << std::endl;
            delete[] buffer;
            close(fd);
        }
    }

    std::lock_guard<std::mutex> guard(cout_mutex);
    std::cout << "Loader Thread " << thread_id << " completed loading files on Node " << node_id << std::endl;
}

void ProcessingEngine::indexFiles(const std::string& path) {
    std::cout << "Starting indexFiles with path: " << path << std::endl;

    uintmax_t totalBytes = 0;
    uintmax_t totalTokens = 0;

    // Get file paths and sizes
    std::vector<std::pair<std::string, uintmax_t>> fileInfos = crawlDataset(path);
    std::cout << "Crawled dataset. Number of files: " << fileInfos.size() << std::endl;

    // Sort files by size in descending order
    std::sort(fileInfos.begin(), fileInfos.end(), [](const auto& a, const auto& b) {
        return a.second > b.second;
    });

    // Determine the number of NUMA nodes
    int totalNodes = numa_max_node() + 1;
    if (totalNodes <= 0) {
        std::cerr << "NUMA is not available or could not determine the number of nodes." << std::endl;
        totalNodes = 1;
    }
    std::cout << "Total NUMA nodes detected: " << totalNodes << std::endl;

    // Divide the file paths among the NUMA nodes
    std::vector<std::vector<std::pair<std::string, uintmax_t>>> filesPerNode(totalNodes);
    for (size_t i = 0; i < fileInfos.size(); ++i) {
        int node = i % totalNodes;
        filesPerNode[node].emplace_back(fileInfos[i]);
    }

    // Create a vector of queues to hold file data for each node
    std::vector<std::queue<FileData>> fileBuffersPerNode(totalNodes);
    std::vector<std::mutex> bufferMutexes(totalNodes);

    // Create and launch loader threads
    std::vector<std::thread> loaderThreads;
    for (int node = 0; node < totalNodes; ++node) {
        loaderThreads.emplace_back(
            &ProcessingEngine::loadFilesOnNode,
            this,
            node + 1,
            node,
            std::cref(filesPerNode[node]),
            std::ref(fileBuffersPerNode[node]),
            std::ref(bufferMutexes[node])
        );
    }

    // Wait for all loader threads to finish
    for (auto& t : loaderThreads) {
        if (t.joinable()) {
            t.join();
        }
    }

    // Calculate total files loaded
    size_t totalFilesLoaded = 0;
    for (const auto& queue : fileBuffersPerNode) {
        totalFilesLoaded += queue.size();
    }
    std::cout << "All loader threads have completed. Total files loaded: " << totalFilesLoaded << std::endl;

    // Remove resultPath and directory creation since we no longer write output files

    char charDict[256];  // Create a dictionary array for character classification
    initializeCharDict(charDict);  // Initialize the character dictionary

    std::mutex tokenMutex, bytesMutex;  // Mutexes for synchronizing access to shared resources

    std::vector<double> tokenizationTimes(numThreads, 0.0);  // Vector to store tokenization times for each thread
    std::vector<uintmax_t> bytesProcessed(numThreads, 0);  // Vector to store bytes processed by each thread

    // Start the timer for total execution time
    auto totalStart = std::chrono::high_resolution_clock::now();

    std::vector<std::thread> processingThreads;  // Vector to store thread objects
    for (int i = 0; i < numThreads; ++i) {
        processingThreads.emplace_back(
            &ProcessingEngine::processFile,
            this,
            i + 1,
            std::ref(fileBuffersPerNode),
            std::ref(bufferMutexes),
            std::ref(tokenMutex),
            std::ref(bytesMutex),
            charDict,
            std::ref(path),
            "",  // Empty resultPath since we don't use it
            std::ref(totalBytes),
            std::ref(totalTokens),
            std::ref(tokenizationTimes),
            std::ref(bytesProcessed)
        );
    }

    // Join all processing threads
    for (auto& t : processingThreads) {
        if (t.joinable()) {
            t.join();
        }
    }

    // End the total execution time
    auto totalEnd = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> totalDuration = totalEnd - totalStart;
    double totalTime = totalDuration.count();

    int longestThreadId = 0;
    double longestTime = 0.0;
    for (int i = 0; i < numThreads; ++i) {
        if (tokenizationTimes[i] > longestTime) {
            longestTime = tokenizationTimes[i];
            longestThreadId = i + 1;
        }
    }

    // Set precision for floating-point outputs
    std::cout << std::fixed << std::setprecision(4);

    for (int i = 0; i < numThreads; ++i) {
        std::cout << "Thread " << (i + 1) << " tokenization time: " << tokenizationTimes[i] << " seconds" << std::endl;
        std::cout << "Thread " << (i + 1) << " processed " << bytesProcessed[i] << " bytes" << std::endl;
    }

    std::cout << "Thread " << longestThreadId << " took the longest time for tokenization: " << longestTime << " seconds" << std::endl;

    std::cout << "Total execution time (create and join threads): " << totalTime << " seconds" << std::endl;

    uintmax_t totalProcessedBytes = 0;
    for (int i = 0; i < numThreads; ++i) {
        totalProcessedBytes += bytesProcessed[i];
    }

    std::cout << "Completed indexing " << totalProcessedBytes << " bytes of data" << std::endl;
    std::cout << "Completed indexing " << totalTokens << " tokens" << std::endl;

    // Calculate and print average throughput
    double throughput_MB_per_s = (static_cast<double>(totalProcessedBytes) / (1024.0 * 1024.0)) / totalTime;
    std::cout << "Average Throughput: " << throughput_MB_per_s << " MB/s" << std::endl;

    // Remove code related to destination folder size and deletion
}


// Tokenization function remains unchanged
std::vector<char*> ProcessingEngine::tokenize(char* buffer, size_t fileSize, char charDict[256]) {
    char* bufferData = buffer;
    std::vector<char*> tokens;

    char charPrev = charDict[(unsigned char)bufferData[0]];
    buffer[0] &= charPrev;

    if (charPrev == ~0) {
        tokens.push_back(&buffer[0]);
    }

    for (size_t i = 1; i < fileSize; i++) {
        char charNext = charDict[(unsigned char)bufferData[i]];
        buffer[i] = bufferData[i] & charNext;

        if (charPrev == 0 && charNext == ~0) {
            tokens.push_back(&buffer[i]);
        }

        charPrev = charNext;
    }

    return tokens;
}

// Worker function for threads with manual node affinity option
void ProcessingEngine::processFile(int thread_id,
                                   std::vector<std::queue<FileData>>& fileBuffersPerNode,
                                   std::vector<std::mutex>& bufferMutexes,
                                   std::mutex& tokenMutex,
                                   std::mutex& bytesMutex,
                                   char charDict[256],
                                   const std::string& path,
                                   const std::string& resultPath,
                                   uintmax_t& totalBytes,
                                   uintmax_t& totalTokens,
                                   std::vector<double>& tokenizationTimes,
                                   std::vector<uintmax_t>& bytesProcessed) {

    // Determine the number of NUMA nodes
    int totalNodes = numa_max_node() + 1; // numa_max_node() returns the highest node number
    int node;

    // Assign node in round-robin fashion
    node = (thread_id - 1) % totalNodes;

    // Set thread affinity if affinityFlag is set
    if (affinityFlag) {
        cpu_set_t cpuset;
        CPU_ZERO(&cpuset);

        // Allocate a bitmask to represent the CPUs associated with the specified NUMA node
        struct bitmask* cpumask = numa_bitmask_alloc(numa_num_possible_cpus());

        // Populate cpumask with the CPUs that are part of the specified NUMA node
        if (numa_node_to_cpus(node, cpumask) == 0) {
            // Iterate over all possible CPUs
            for (int i = 0; i < cpumask->size; ++i) {
                // Check if the current CPU is part of the NUMA node
                if (numa_bitmask_isbitset(cpumask, i)) {
                    CPU_SET(i, &cpuset);
                }
            }
        } else {
            std::lock_guard<std::mutex> guard(cout_mutex);
            std::cerr << "Error retrieving CPUs for node " << node << std::endl;
        }

        // Free the cpumask as it's no longer needed
        numa_bitmask_free(cpumask);

        // Set the CPU affinity of the calling thread using sched_setaffinity
        int ret = sched_setaffinity(0, sizeof(cpu_set_t), &cpuset);
        if (ret != 0) {
            // If setting the CPU affinity failed, print an error message
            std::lock_guard<std::mutex> guard(cout_mutex);
            std::cerr << "Error setting thread affinity for thread " << thread_id
                      << " on node " << node << std::endl;
        } else {
            // Confirm affinity setting
            std::lock_guard<std::mutex> guard(cout_mutex);
            std::cout << "Thread " << thread_id << " affinity set to Node " << node << std::endl;
        }

        // Optionally, retrieve and print the current CPU the thread is running on
        int current_cpu = sched_getcpu();
        int current_node = numa_node_of_cpu(current_cpu);
        {
            std::lock_guard<std::mutex> guard(cout_mutex);
            std::cout << "Thread " << thread_id << " is running on CPU " << current_cpu
                      << " (Node " << current_node << ")" << std::endl;
        }
    }

    double threadTokenizationTime = 0.0;
    while (true) {
       

        FileData fileData;
        bool foundWork = false;

        // Try to get work from the assigned node
        {
            std::lock_guard<std::mutex> lock(bufferMutexes[node]);
            if (!fileBuffersPerNode[node].empty()) {
                fileData = fileBuffersPerNode[node].front();
                fileBuffersPerNode[node].pop();
                foundWork = true;
            }
        }

        // // If no work found, try to get work from other nodes
        // if (!foundWork) {
        //     for (int i = 0; i < totalNodes; ++i) {
        //         if (i == node) continue; // Skip assigned node (already checked)
        //         std::lock_guard<std::mutex> lock(bufferMutexes[i]);
        //         if (!fileBuffersPerNode[i].empty()) {
        //             fileData = fileBuffersPerNode[i].front();
        //             fileBuffersPerNode[i].pop();
        //             foundWork = true;
        //             break; // Exit the loop as we found work
        //         }
        //     }
        // }

        if (!foundWork) {
            // No work found in any buffer, exit the loop
            break;
        }

        uintmax_t fileSize = fileData.size;

        {
            std::lock_guard<std::mutex> lock(bytesMutex);
            totalBytes += fileSize;
        }
        bytesProcessed[thread_id - 1] += fileSize;

        char* buffer = fileData.content[0]; // Get the buffer pointer

        // Tokenize the buffer directly
        auto tokenStart = std::chrono::high_resolution_clock::now();

        // Call the tokenize function
        std::vector<char*> tokens = tokenize(buffer, fileSize, charDict);

        auto tokenEnd = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double> tokenDuration = tokenEnd - tokenStart;
        threadTokenizationTime += tokenDuration.count();

        {
            std::lock_guard<std::mutex> lock(tokenMutex);
            totalTokens += tokens.size();
        }

        

        // Clean up allocated memory
        delete[] buffer;


        // Update tokenization time for the thread
        tokenizationTimes[thread_id - 1] = threadTokenizationTime;
    }
}

// Initialize the character dictionary for tokenization
void ProcessingEngine::initializeCharDict(char charDict[256]) {
    for (int i = 0; i < 256; i++) {
        charDict[i] = ~0;  // Initialize the dictionary to mark all characters as non-delimiters
    }
    for (int i = 0; i < 256; i++) {
        if (!isalnum(static_cast<char>(i))) {
            charDict[i] = 0;  // Mark non-alphanumeric characters as delimiters
        }
    }
}

// Method to crawl the dataset and list all file paths and sizes
std::vector<std::pair<std::string, uintmax_t>> ProcessingEngine::crawlDataset(const std::string& path) {
    std::vector<std::pair<std::string, uintmax_t>> fileInfos;  // Vector to store file paths and sizes
    try {
        crawl(path, fileInfos);  // Recursively crawl the directory to collect file paths and sizes
    } catch(const std::exception& e) {
        std::cerr << "Filesystem error: " << e.what() << std::endl;  // Handle filesystem errors
    }
    return fileInfos;  // Return the vector of file paths and sizes
}

// Helper method to recursively crawl directories and collect file paths and sizes
void ProcessingEngine::crawl(const std::filesystem::path& folder, std::vector<std::pair<std::string, uintmax_t>>& fileInfos) {
    for (const auto& entry : std::filesystem::recursive_directory_iterator(folder)) {
        if (entry.is_regular_file()) {
            try {
                uintmax_t fileSize = entry.file_size();
                fileInfos.emplace_back(entry.path().string(), fileSize);  // Add file path and size to the vector
            } catch (const std::filesystem::filesystem_error& e) {
                std::cerr << "Error getting size of file: " << entry.path() << " - " << e.what() << std::endl;
            }
        }
    }
}

// Method to calculate the total size of a directory
uintmax_t ProcessingEngine::calculateDirectorySize(const std::filesystem::path& directory) {
    uintmax_t size = 0;
    for (const auto& entry : std::filesystem::recursive_directory_iterator(directory)) {
        if (entry.is_regular_file()) {
            size += entry.file_size();  // Accumulate the size of all regular files in the directory
        }
    }
    return size;  // Return the total size of the directory
}

// Method to recursively delete a directory and its contents
void ProcessingEngine::deleteDirectory(const std::filesystem::path& directory) {
    std::filesystem::remove_all(directory);  // Recursively delete the directory
}

// Placeholder method for searching files (to be implemented)
void ProcessingEngine::searchFiles() {
    // TO-DO implement search files
    // Placeholder for future implementation of search functionality
}
