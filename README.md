# HuffmanCompressor

A C++ implementation of Huffman encoding and decoding for efficient file compression and decompression.

## Features

- Compresses text files using Huffman coding to reduce file size.
- Decompresses `.bin` files back to their original content.
- Command-line interface for ease of use.
- Modular code structure for maintainability.

## Getting Started

### Prerequisites

- C++ compiler (e.g., `g++`)
- CMake (version 3.10 or higher)

### Building the Project

1. Clone the repository:

   ```bash
   git clone https://github.com/CameronPrybylski/HuffmanCompressor.git
   cd HuffmanCompressor
   ```


2. Create a build directory and navigate into it:

   ```bash
   mkdir build
   cd build
   ```


3. Generate the build files using CMake:

   ```bash
   cmake ..
   ```


4. Build the project:

   ```bash
   cmake --build .
   ```


   This will produce the `compressor` executable in the `build` directory.

## Usage

Run the compressor from the `build` directory:


```bash
./compressor
```



### Examples

- To compress a file:

  - Make sure input file is in /input dir

- To decompress a file:

  - Make sure binary file is located in /output dir

## Project Structure

- `src/`: Contains the source code for the compressor.
- `huffmantrees/`: Implements the Huffman tree logic.
- `input/`: Directory for input files to be compressed.
- `output/`: Directory where compressed and decompressed files are saved.
- `test/`: Contains test cases and test files.
- `build/`: Directory where the build files and executable are generated.
- `CMakeLists.txt`: CMake configuration file for building the project.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Feel free to customize this `README.md` further to match any additional features or instructions specific to your project. 
