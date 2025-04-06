#ifndef _HUFFMANTREE_H_
#define _HUFFMANTREE_H_

#include "node.h"
#include<unordered_map>
#include<queue>
#include<string>

class HuffmanTree{

private:
    Node* root;
    std::unordered_map<char, std::string> huffmanCodes;
    std::priority_queue<Node*, std::vector<Node*>, Compare> nodesByFreq;
    std::unordered_map<char, int> freqMap;

public:
    HuffmanTree(std::unordered_map<char, int> freqMap) : root(nullptr), freqMap(freqMap) {}
    void setNodesByFreq();
    std::priority_queue<Node*, std::vector<Node*>, Compare> getNodesByFreq();
    void buildTree();
    void traverseTree();
    void preorderTraversal(Node* node, std::string code);
    void setHuffmanCodes();
    std::unordered_map<char, std::string> getHuffmanCodes();
    Node* getRoot();

};

#endif