#include "huffmantree.h"
#include<iostream>

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
