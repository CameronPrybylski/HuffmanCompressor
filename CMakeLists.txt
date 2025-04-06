cmake_minimum_required(VERSION 3.10)
project(CompressorProject)

set(CMAKE_CXX_STANDARD 17)

# Add the main executable
add_executable(compressor src/main.cpp src/filehandler.cpp src/huffmantree.cpp src/huffmancompressor.cpp)

enable_testing()
add_subdirectory(test)
