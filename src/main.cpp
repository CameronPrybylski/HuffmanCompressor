#include "filehandler.h"
#include "huffmantree.h"
#include "huffmancompressor.h"
#include<iostream>
#include<unordered_map>

using namespace std;

class App{

private:
    HuffmanCompressor* hc;

public:

    App(){
        hc = new HuffmanCompressor();
    }
    ~App(){
        delete hc;
    }

    void welcomeScreen(){
        cout << "Welcome to the Huffman Compressor" << endl;
        cout << "What would you like to do?" << endl;
        cout << "1. Compress File" << endl;
        cout << "2. Decompress File" << endl;
        string choice;
        cin >> choice;
        if(choice == "1"){
            compress();
        }else if(choice == "2"){
            decompress();
        }else{
            cout << "Incorrect choice" << endl;
        }
    }

    void compress(){
        cout << "Make sure your input file is in the input directory" << endl;
        cout << "What is the filename?" << endl;
        string filename;
        cin >> filename;
        hc->compressFile("../input/" + filename);
        cout << "Compressed file is in output directory" << endl;
        cout << "Would you like to export the huffman tree?(y/n)" << endl;
        string choice;
        cin >> choice;
        if(choice == "y"){
            exportHuffman();
        }
    }

    void decompress(){
        cout << "Do you have the huffman tree?(y/n)" << endl;
        string choice;
        cin >> choice;
        if(choice == "y"){
            cout << "Filename?" << endl;
            string filename;
            cin >> filename;
            hc->readHuffmanTree("../huffmantrees/" + filename);
            cout << "Huffman Tree Read" << endl;
            hc->decompressFile("../output/output.bin", "../output/output.txt");
            cout << "File has been decompressed" << endl;
        }else if("n"){
            hc->decompressFile("../output/output.bin", "../output/output.txt");
            cout << "Decompressed file has been added to output directory" << endl;
        }else{
            cout << "Enter y or n" << endl;
        }
    }

    void exportHuffman(){
        cout << "Filename?" << endl;
        string filename;
        cin >> filename;
        hc->writeHuffmanTree("../huffmantrees/" + filename);
    }
};

int main(){
   
    App* app = new App();
    while (true)
    {
        app->welcomeScreen();
    }
    
    return 0;
}