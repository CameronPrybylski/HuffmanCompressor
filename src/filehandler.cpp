#include "filehandler.h"
#include<fstream>
#include<iostream>
#include<sstream>
#include<unordered_map>
#include <vector>
#include <unistd.h>  // For getcwd
#include <limits.h>  // For PATH_MAX
#include <bitset>


using namespace std;

FileHandler::FileHandler() {}

std::unordered_map<char, int> FileHandler::readFile(std::string fileName){
    std::ifstream file(fileName);
    unordered_map<char, int> freqMap;
    if (!file.is_open()) {
        std::cerr << "Error opening file" << std::endl;
        char cwd[PATH_MAX];
        if (getcwd(cwd, sizeof(cwd)) != nullptr) {
            std::cout << "Current Working Directory: " << cwd << std::endl;
        }
        return freqMap;
    }

    std::string line;
    while (std::getline(file, line)) {
        for(char c : line){
            if(c == '~'){
                cout << "Cannot contain ~ symbol" << endl;
                break;
            }
            freqMap[c]++;
        }
        freqMap['~']++;
    }
    
    file.close();
    return freqMap;
}

void FileHandler::writeFile(string decodedString, string filename){
    ofstream file(filename);
    if(!file.is_open()){
        cerr << "Failed to write to file";
    }
    for(char c : decodedString){
        if(c == '~'){
            file << endl;
        }else{
            file << c;
        }
    }
    file.close();
}

string FileHandler::getInput(string filename){
    ifstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Error opening file" << std::endl;
        return "";
    }
    string line;
    string content;
    while(getline(file, line)){
        content += line;
        content += '~';
    }
    return content;
}

void FileHandler::writeBinaryFile(string encodedBits, string filename){
    //string binaryString = encodedBits;
    string binFileName = "../output/output.bin";
    std::ofstream out(binFileName, std::ios::binary);

    // Write the number of valid bits in the last byte as a header (1 byte)
    int padding = (8 - (encodedBits.size() % 8)) % 8;
    uint8_t validBitsInLastByte = (encodedBits.size() % 8 == 0) ? 8 : encodedBits.size() % 8;
    out.write(reinterpret_cast<const char*>(&validBitsInLastByte), 1);

    std::string padded = encodedBits + std::string(padding, '0');
    for (size_t i = 0; i < padded.size(); i += 8) {
        std::bitset<8> byte(padded.substr(i, 8));
        unsigned char b = static_cast<unsigned char>(byte.to_ulong());
        out.write(reinterpret_cast<const char*>(&b), 1);
    }

    out.close();
}

string FileHandler::readBinaryFile(string filename){
    std::ifstream in(filename, std::ios::binary);
    if (!in) throw std::runtime_error("Failed to open file.");

    uint8_t validBitsLastByte = in.get(); // First byte

    std::string bitString;
    char byte;
    std::vector<unsigned char> data;

    while (in.get(byte)) {
        data.push_back(static_cast<unsigned char>(byte));
    }

    for (size_t i = 0; i < data.size(); ++i) {
        std::bitset<8> bits(data[i]);
        std::string bitsStr = bits.to_string();

        if (i == data.size() - 1) {
            bitsStr = bitsStr.substr(0, validBitsLastByte); // last byte
        }

        bitString += bitsStr;
    }

    return bitString;
}


void FileHandler::writeHuffmanTree(string filename, string huffman){
    ofstream file(filename);
    if(!file.is_open()){
        cerr << "Could not open file";
    }
    for(int i = 0; i < huffman.length(); i++){
        file << huffman[i];
    }
    file.close();
}

string FileHandler::readHuffmanTree(string filename){
    ifstream file(filename);
    if(!file.is_open()){
        cerr << "Could not open file" << endl;
    }
    string line;
    string huffmanTree;
    while(getline(file, line)){
        huffmanTree += line;
    }
    file.close();
    return huffmanTree;
}
