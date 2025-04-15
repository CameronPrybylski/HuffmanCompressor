#include "huffmantree.h"
#include<iostream>
#include <vector>
#include<sstream>

using namespace std;

void HuffmanTree::setNodesByFreq(){
    for(const auto& it : freqMap){
        Node* node = new Node(it.first, it.second);
        this->nodesByFreq.push(node);
    }
}

priority_queue<Node*, vector<Node*>, Compare> HuffmanTree::getNodesByFreq(){
    return this->nodesByFreq;
}

void HuffmanTree::buildTree(){
    while(nodesByFreq.size() > 1){
        Node* left = nodesByFreq.top();
        nodesByFreq.pop();
        Node* right = nodesByFreq.top();
        nodesByFreq.pop();
        Node* newNode = new Node('*', left->freq + right->freq);
        newNode->left = left;
        newNode->right = right;
        nodesByFreq.push(newNode);
    }
    this->root = nodesByFreq.top();
}

void HuffmanTree::traverseTree(){
    queue<Node*> queue;
    queue.push(this->root);
    while(!queue.empty()){
        //cout << queue.front()->ch << endl;
        Node* left = queue.front()->left;
        Node* right = queue.front()->right;
        if(left != nullptr){
            cout << left->ch << " ";
            queue.push(left);
        }
        if(right != nullptr){
            cout << right->ch << " ";
            queue.push(right);
        }
        cout << "\n";
        queue.pop();
    }
}

void HuffmanTree::preorderTraversal(Node* node, string code){
    if(node != nullptr && node->ch != '*'){
        huffmanCodes[node->ch] = code;
    }else if(node != nullptr){
        preorderTraversal(node->left, code + "0");
        preorderTraversal(node->right, code + "1");
    }
}

void HuffmanTree::setHuffmanCodes(){
    setNodesByFreq();
    buildTree();
    string code = "";
    preorderTraversal(this->root, code);
}

unordered_map<char, string> HuffmanTree::getHuffmanCodes(){
    return this->huffmanCodes;
}

Node* HuffmanTree::getRoot(){
    return root;
}

void HuffmanTree::preOrderString(string& huffman, Node* curr){
    if(!curr){
        return;
    }
    if(curr->isLeaf()){
        huffman += "1," + string(1, curr->ch) + "," + to_string(curr->freq) + ",";
    }else{
        huffman += "0,";
    }
    preOrderString(huffman, curr->left);
    preOrderString(huffman, curr->right);
}

string HuffmanTree::toString(){
    string huffman = "";
    if(root != nullptr){
        preOrderString(huffman, root);
    }else{
        cout << "No huffmantree found" << endl;
    }
    return huffman;
}

void HuffmanTree::setRoot(Node* root){
    this->root = root;
}

void deleteTree(Node* root) {
    if (!root) {
        return;
    }
    else{
        cout << root->ch << " " << root->freq << endl;
        deleteTree(root->left);
        deleteTree(root->right);
        delete root;
    }
}

vector<string> HuffmanTree::huffmanToVector(string huffman){
    vector<string> result;
    std::stringstream ss(huffman);
    std::string token;

    while (std::getline(ss, token, ',')) {
        result.push_back(token);
    }

    return result;
}

Node* HuffmanTree::deserializeHuffman(vector<string>& huffmanV, int& i){
    if (i >= huffmanV.size()) {
        cerr << "\nError: Reached end of vector unexpectedly at index " << i << "\n";
        return nullptr;
    }

    string token = huffmanV[i];
    i++;

    if(token == "1"){
        if (i + 1 >= huffmanV.size()) {
            cerr << "\nError: Expected character and frequency but vector ended.\n";
            return nullptr;
        }
        char ch = huffmanV[i][0];
        i++;

        int freq;
        try {
            freq = stoi(huffmanV[i]);
        } catch (...) {
            cerr << "\nError: Invalid frequency value at index " << i << ": " << huffmanV[i] << "\n";
            return nullptr;
        }
        i++;

        return new Node(ch, freq);
    } else {
        Node* node = new Node('*', 0); // maybe frequency 10 was just for debugging
        node->left = deserializeHuffman(huffmanV, i);
        node->right = deserializeHuffman(huffmanV, i);
        return node;
    }
}

void HuffmanTree::setHuffmanTree(string huffman){
    vector<string> huffmanV = huffmanToVector(huffman);
    int index = 0;
    Node* newRoot = deserializeHuffman(huffmanV, index);
    if (index != huffmanV.size()) {
        cerr << "[WARNING] Not all tokens were consumed. Final index: " << index << " / " << huffmanV.size() << "\n";
    }else{
        cout << "Huffman tree has been set" << endl;
    }
    if(root != nullptr){    
        deleteTree(root);
    }
    setRoot(newRoot);
}
