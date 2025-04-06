#ifndef _COMPRESSOR_H_
#define _COMPRESSOR_H_

#include <string>

class Compressor{

public:
    virtual void compressFile(std::string filename) = 0;
    virtual void decompressFile(std::string binaryfile, std::string outputfile) = 0;
};

#endif