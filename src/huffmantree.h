#ifndef _HUFFMANTREE_H_
#define _HUFFMANTREE_H_

#include "node.h"
#include<unordered_map>
#include<queue>
#include<string>
#include<vector>

class HuffmanTree{

private:
    Node* root;
    std::unordered_map<char, std::string> huffmanCodes;
    std::priority_queue<Node*, std::vector<Node*>, Compare> nodesByFreq;
    std::unordered_map<char, int> freqMap;

public:
    HuffmanTree(std::unordered_map<char, int> freqMap) : root(nullptr), freqMap(freqMap) {}
    HuffmanTree() : root(nullptr) {}
    ~HuffmanTree(){
        delete root;
    }
    void setNodesByFreq();
    std::priority_queue<Node*, std::vector<Node*>, Compare> getNodesByFreq();
    void buildTree();
    void traverseTree();
    void preorderTraversal(Node* node, std::string code);
    void setHuffmanCodes();
    std::unordered_map<char, std::string> getHuffmanCodes();
    Node* getRoot();
    void preOrderString(std::string& huffman, Node* curr);
    std::string toString();
    void setRoot(Node* root);
    std::vector<std::string> huffmanToVector(std::string huffman);
    Node* deserializeHuffman(std::vector<std::string>& huffmanV, int& i);
    void setHuffmanTree(std::string huffman);

};

#endif