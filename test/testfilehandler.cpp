#include <gtest/gtest.h>
#include "filehandler.h"

using namespace std;

TEST(ExampleTest, Sample) {
    EXPECT_EQ(1 + 1, 2);
}

TEST(TestFileHandelr, TestReadFile){
    FileHandler fh;
    unordered_map<char, int> freqMap = fh.readFile("/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testFile.txt");
    
    EXPECT_EQ(freqMap['H'], 1);
    EXPECT_EQ(freqMap['e'], 1);
    EXPECT_EQ(freqMap['l'], 2);
    EXPECT_EQ(freqMap['o'], 1);

}
