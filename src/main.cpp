#include "filehandler.h"
#include "huffmantree.h"
#include "huffmancompressor.h"
#include<iostream>
#include<unordered_map>

using namespace std;

int main(){
    /*
    FileHandler fh;
    unordered_map<char, int> freqMap = fh.readFile("../src/example.txt");
    for(const auto& it : freqMap){
        cout << it.first << " " << it.second << endl;
    }
    cout << "\n";
    HuffmanTree ht(freqMap);

    ht.setNodesByFreq();
    std::priority_queue<Node*, std::vector<Node*>, Compare> nodesByFreq = ht.getNodesByFreq();
    cout << "\n";
    Node* prev = nodesByFreq.top();
    nodesByFreq.pop();
    while(!nodesByFreq.empty()){
        Node* curr = nodesByFreq.top();
        nodesByFreq.pop();
        cout << prev->ch << " " << prev->freq << endl;
        prev = curr;
        //delete curr;
    }
    cout << prev->ch << " " << prev->freq << endl;
    cout << "\n";
    //delete prev;
    ht.buildTree();
    ht.traverseTree();
    cout << "\n";
    ht.setHuffmanCodes();
    unordered_map<char, string> huffmanCodes = ht.getHuffmanCodes();
    for(const auto& it : huffmanCodes){
        cout << it.first << " " << it.second << endl;
    }
    */
    HuffmanCompressor hc;
    hc.compressFile("../input/example.txt");
    hc.decompressFile("../output/output.bin", "../output/output.txt");
    

    return 0;
}