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

TEST(TestFileHandler, TestGetInput){
    FileHandler fh;
    string filename = "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testGetInput.txt";
    string content = fh.getInput(filename);
    string expected = "Hello my name is Cameron~What's your name?~";
    EXPECT_EQ(content.length(), expected.length());
    if(content.length() == expected.length()){
        int lenOfStrs = content.length();
        for(int i = 0; i < lenOfStrs; i++){
            EXPECT_EQ(content[i], expected[i]);
        }
    }
}

TEST(TestFileHandler, TestReadWriteBinaryFile){
    FileHandler fh;
    string binaryFile = "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testFiles/output.bin";
    string encodedBits = "1010101";
    fh.writeBinaryFile(encodedBits, binaryFile);
    string decodedBits = fh.readBinaryFile(binaryFile);
    EXPECT_EQ(decodedBits, encodedBits);
}

TEST(TestFileHandler, TestReadWriteHuffmanTree){
    FileHandler fh;
    string filename = "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testFiles/exampleHuffman.txt";
    string huffman = "0,0,0,0,0,1,v,2,1,T,2,1,h,5,0,1,s,5,1,a,6,0,0,0,0,1,x,1,1,f,2,1,i,3,1,n,6,1,e,14,0,0,0,1,o,7,0,1,r,4,0,1,u,2,0,1,m,1,1,j,1,0,0,0,1,b,2,0,1,d,1,1,w,1,0,1,p,2,0,1,k,1,1,g,1,0,1,l,4,0,0,1,z,1,1,q,1,1,~,2,0,0,0,1,c,4,0,0,1,!,1,1,.,1,1,y,2,1,t,9,1, ,18,";
    fh.writeHuffmanTree(filename, huffman);
    string readHuffman = fh.readHuffmanTree(filename);
    EXPECT_EQ(huffman, readHuffman);
}
