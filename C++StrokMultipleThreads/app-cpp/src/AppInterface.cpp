#include "AppInterface.hpp"
#include <vector>
#include <iostream>
#include <string>
#include <sstream>
// Library header support stdin stdout for input and output operation
// iostream library represent the standard input stream and standard output stream, respectively.
#include <stdexcept> // For std::invalid_argument
#include <memory>    // For std::shared_ptr

// std:: is a namespace identifier. use when we want to declare variable (classes, functions, and objects)
AppInterface::AppInterface(std::shared_ptr<ProcessingEngine> engine) {

    if(!engine){

        throw std::invalid_argument("Engine must not be null");

    }
    this->engine = engine;


}

void AppInterface::readCommands() {
    std::string line;
    std::string command;

    
    while (true) {

        std::cout << "> ";
        // get input from user and store it in line
        std::getline(std::cin, line);
        //pass input into istringstream
        std::istringstream iss(line);
        // Store first argument into  command
        iss >> command;
        
        // if the command is quit, terminate the program       
        if (command == "quit") {
            std::cout << "Exit File Retrieval Engine\n" << std::endl;

            break;
        }else if (command == "index") {
            std:: string path;
            if(!(iss >> path)){
                std::cout << "Error: Please provide the correct path." << std::endl;
            } else{
                engine->indexFiles(path);
            }
        }else if (command == "search") {
            // std::vector<std::string> searchWords;
            // std::string word;

            // while (iss >> word) {
            //     if (word != "AND") {
            //         searchWords.push_back(word);
            //     }
            // }
            // if (searchWords.empty()) {
            //     std::cout << "Error: Please specify at least one word." << std::endl;
            // } else {
            //     engine->searchFiles(searchWords);
            // }
    
        }else{
            std::cout << "unrecognized command!" << std::endl;
        }
    }
}