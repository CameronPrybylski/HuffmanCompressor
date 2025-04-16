#include <gtest/gtest.h>
#include "filehandler.h"
#include "fstream"

using namespace std;

TEST(ExampleTest, Sample) {
    EXPECT_EQ(1 + 1, 2);
}

TEST(TestFileHandler, TestReadFile){
    FileHandler fh;
    unordered_map<char, int> freqMap = fh.readFile("/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testInputFile.txt");
    
    EXPECT_EQ(freqMap['H'], 1);
    EXPECT_EQ(freqMap['e'], 1);
    EXPECT_EQ(freqMap['l'], 2);
    EXPECT_EQ(freqMap['o'], 1);

}

TEST(TestFileHandler, TestWriteFile){
    string output = "This is the output.";
    string filename = "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testOutputFile.txt";
    FileHandler fh;
    fh.writeFile(output, filename);
    ifstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Error opening file" << std::endl;
    }
    string line;
    while(getline(file, line)){
        EXPECT_EQ(line, output);
    }
}
