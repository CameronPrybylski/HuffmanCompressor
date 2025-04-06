#ifndef __NODE_H__
#define __NODE_H__

class Node{
    /* data */
public:
    Node* left;
    Node* right;
    int freq;
    char ch;
    Node(char ch, int freq) : freq(freq), ch(ch), left(nullptr), right(nullptr) {}
    bool isLeaf(){
        return !left && !right;
    }
    
};

struct Compare {
    bool operator()(Node* a, Node* b) const {
        return a->freq > b->freq;  // Min-heap: lower freq = higher priority
    }
};


#endif