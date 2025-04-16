#include <gtest/gtest.h>
#include "huffmantree.h"
#include "filehandler.h"

using namespace std;

TEST(TestHuffmanTree, TestNodesByFreq){
    FileHandler fh;
    unordered_map<char, int> freqMap = fh.readFile("/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testInputFile.txt");
    HuffmanTree ht(freqMap);

    ht.setNodesByFreq();
    priority_queue<Node*, vector<Node*>, Compare> nodesByFreq = ht.getNodesByFreq();
    Node* prev = nodesByFreq.top();
    nodesByFreq.pop();
    while(!nodesByFreq.empty()){
        Node* curr = nodesByFreq.top();
        nodesByFreq.pop();
        EXPECT_TRUE(prev->freq <= curr->freq);
        prev = curr;
    }

}


