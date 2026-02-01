#include <iostream>
#include <memory>
#include <vector>
#include <thread>
#include "ProcessingEngine.hpp"
#include "AppInterface.hpp"
#include <cstdlib> // For std::atoi

int main(int argc, char** argv)
{
    if (argc != 3) {
        std::cerr << "Usage: " << argv[0] << " <number of threads> <affinityFlag>" << std::endl;
        std::cerr << "Example: " << argv[0] << " 4 1" << std::endl;
        std::cerr << "       affinityFlag: 1 to enable affinity, 0 to disable" << std::endl;
        return 1;
    }

    int numThreads = std::atoi(argv[1]);
    if (numThreads <= 0) {
        std::cerr << "Error: Number of threads must be a positive integer." << std::endl;
        return 1;
    }

    int affinityFlag = std::atoi(argv[2]);
    if (affinityFlag != 0 && affinityFlag != 1) {
        std::cerr << "Error: affinityFlag must be either 0 (disable) or 1 (enable)." << std::endl;
        return 1;
    }

    std::shared_ptr<ProcessingEngine> engine = std::make_shared<ProcessingEngine>(numThreads, affinityFlag);
    std::shared_ptr<AppInterface> interface = std::make_shared<AppInterface>(engine);

    interface->readCommands();

    return 0;
}
