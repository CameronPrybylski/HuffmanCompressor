#include "huffmancompressor.h"

using namespace std;

void HuffmanCompressor::setHuffmanTree(){
    fileHandler = new FileHandler();
    unordered_map<char, int> freqMap = fileHandler->readFile(filename);
    huffmanTree = new HuffmanTree(freqMap);
    huffmanTree->setHuffmanCodes();
}

void HuffmanCompressor::encodeHuffman(){
    string encodedBits;
    string input = fileHandler->getInput(filename);
    unordered_map<char, string> huffmanCodes = huffmanTree->getHuffmanCodes();
    for(char c : input){
        encodedBits += huffmanCodes[c];
    }
    fileHandler->writeBinaryFile(encodedBits, filename);
}

void HuffmanCompressor::compressFile(string filename) {
    this->filename = filename;
    setHuffmanTree();
    encodeHuffman();
}

void HuffmanCompressor::decompressFile(string binaryfile, string outputfile){
    string bitString = fileHandler->readBinaryFile(binaryfile);
    string decodedString;
    Node* curr = huffmanTree->getRoot();
    for(char bit : bitString){
        if(bit == '0'){
            curr = curr->left;
        }else{
            curr = curr->right;
        }
        if(curr->isLeaf()){
            decodedString += curr->ch;
            curr = huffmanTree->getRoot();
        }
    }
    fileHandler->writeFile(decodedString, outputfile);
}

