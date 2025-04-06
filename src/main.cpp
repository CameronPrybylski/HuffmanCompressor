#include "filehandler.h"
#include "huffmantree.h"
#include "huffmancompressor.h"
#include<iostream>
#include<unordered_map>

using namespace std;

int main(){
   
    HuffmanCompressor hc;
    hc.compressFile("../input/example.txt");
    hc.decompressFile("../output/output.bin", "../output/output.txt");
    

    return 0;
}