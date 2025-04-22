#include <gtest/gtest.h>
#include "huffmantree.h"
#include "filehandler.h"

using namespace std;

TEST(TestHuffmanTree, TestNodesByFreq){
    FileHandler fh;
    unordered_map<char, int> freqMap = fh.readFile("/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testFiles/testInputFile.txt");
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

TEST(TestHuffmanTree, TestBuildTree){
    FileHandler fh;
    unordered_map<char, int> freqMap = fh.readFile("/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testFiles/testInputFile.txt");
    HuffmanTree ht(freqMap);
    ht.setNodesByFreq();
    ht.buildTree();
    Node* curr = ht.getRoot();
    queue<Node*> queue;
    queue.push(curr);
    while(!queue.empty()){
        Node* node = queue.front();
        queue.pop();
        if(node->isLeaf()){
            EXPECT_NE(node->ch, '*');
        }else{
            EXPECT_EQ(node->ch, '*');
        }
        if(node->left != nullptr){
            queue.push(node->left);
        }
        if(node->right != nullptr){
            queue.push(node->right);
        }
        
    }
}


