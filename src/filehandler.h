#ifndef __FILEHANDLER_H__
#define __FILEHANDLER_H__

#include<string>
#include<unordered_map>

class FileHandler{

public:
    FileHandler();
    std::unordered_map<char, int> readFile(std::string fileName);
    void writeFile(std::string decodedString, std::string filename);
    std::string getInput(std::string filename);
    void writeBinaryFile(std::string encodedBits, std::string filename);
    std::string readBinaryFile(std::string filename);
    void writeHuffmanTree(std::string filename, std::string huffman);
    std::string readHuffmanTree(std::string filename);
};
#endif