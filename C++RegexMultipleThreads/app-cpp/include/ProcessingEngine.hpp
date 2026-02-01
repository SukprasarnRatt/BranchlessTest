#ifndef PROCESSINGENGINE_HPP
#define PROCESSINGENGINE_HPP

#include <memory>
#include <vector>
#include <string>
#include <queue>
#include <mutex>
#include <utility>       // For std::pair
#include <cstddef>       // For size_t
#include <cstdint>       // For uintmax_t
#include <filesystem>    // For std::filesystem::path
#include <regex>         // For std::regex

struct FileData {
    std::string path;   // Path to the file
    std::string content; // Content of the file as a string
    size_t size;        // Size of the file content
};

class ProcessingEngine {
public:
    // Constructor accepting number of threads and affinity flag
    ProcessingEngine(int numThreads, int affinityFlag);
    
    // Public methods
    void indexFiles(const std::string& path);
    void searchFiles(); // Placeholder for future implementation

private:
    // Member variables
    int numThreads;      // Number of threads to use
    int affinityFlag;    // Flag to determine if thread affinity is enabled

    // Private methods
    void loadFilesOnNode(int thread_id, 
                         int node_id, 
                         const std::vector<std::pair<std::string, uintmax_t>>& files, 
                         std::queue<FileData>& fileBuffer, 
                         std::mutex& bufferMutex);

    void processFile(int thread_id, 
                     std::vector<std::queue<FileData>>& fileBuffersPerNode, 
                     std::vector<std::mutex>& bufferMutexes, 
                     std::mutex& tokenMutex, 
                     std::mutex& bytesMutex, 
                     const std::string& path, 
                     const std::string& resultPath, 
                     uintmax_t& totalBytes, 
                     uintmax_t& totalTokens, 
                     std::vector<double>& tokenizationTimes, 
                     std::vector<uintmax_t>& bytesProcessed);

    // Tokenization function using regex
    std::vector<std::string> tokenize(const std::string& content, const std::regex& tokenPattern);

    // Helper methods
    std::vector<std::pair<std::string, uintmax_t>> crawlDataset(const std::string& path);
    void crawl(const std::filesystem::path& folder, std::vector<std::pair<std::string, uintmax_t>>& fileInfos);
    uintmax_t calculateDirectorySize(const std::filesystem::path& directory);
    void deleteDirectory(const std::filesystem::path& directory);
};

#endif // PROCESSINGENGINE_HPP
