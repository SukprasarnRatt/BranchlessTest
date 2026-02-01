cmake_minimum_required(VERSION 3.22)

project(file-retrieval-engine
        VERSION 1.0
        DESCRIPTION "C++ File Retrieval Engine"
        LANGUAGES CXX)

# Set the compiler to Clang
#set(CMAKE_C_COMPILER clang)
#set(CMAKE_CXX_COMPILER clang++)

# Set the compiler to GCC
set(CMAKE_C_COMPILER gcc)
set(CMAKE_CXX_COMPILER g++)

# Set the compiler to Intel icx/icpx with full path
#set(CMAKE_C_COMPILER /opt/intel/oneapi/compiler/latest/bin/icx)
#set(CMAKE_CXX_COMPILER /opt/intel/oneapi/compiler/latest/bin/icpx)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add optimization flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3")
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -fno-tree-vectorize -fno-tree-slp-vectorize")

add_executable(file-retrieval-engine
               src/file-retrieval-engine.cpp
               src/AppInterface.cpp
               src/ProcessingEngine.cpp
               )

# Include directories
target_include_directories(file-retrieval-engine PUBLIC include)

# Link the NUMA library
target_link_libraries(file-retrieval-engine numa)
