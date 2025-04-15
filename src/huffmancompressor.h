#ifndef _HUFFMANCOMPRESSOR_H_
#define _HUFFMANCOMPRESSOR_H_

#include "compressor.h"
#include "huffmantree.h"
#include "filehandler.h"

class HuffmanCompressor : Compressor {
private:
    HuffmanTree* huffmanTree;
    FileHandler* fileHandler;
    std::string filename;

public:
    HuffmanCompressor() : huffmanTree(nullptr), fileHandler(nullptr) {}
    ~HuffmanCompressor() {
        delete huffmanTree;
        delete fileHandler;
    }
    void setHuffmanTree();
    void encodeHuffman();
    void compressFile(std::string filename) override;
    void decompressFile(std::string binaryfile, std::string outputfile) override;
    void writeHuffmanTree(std::string filename);
    void readHuffmanTree(std::string filename);
};


#endif