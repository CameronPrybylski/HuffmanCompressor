# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.29.6/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.29.6/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build"

# Include any dependencies generated for this target.
include CMakeFiles/compressor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/compressor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/compressor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/compressor.dir/flags.make

CMakeFiles/compressor.dir/src/main.cpp.o: CMakeFiles/compressor.dir/flags.make
CMakeFiles/compressor.dir/src/main.cpp.o: /Users/cameronprzybylski/Documents/C++/C++\ Projects/FileCompressor/src/main.cpp
CMakeFiles/compressor.dir/src/main.cpp.o: CMakeFiles/compressor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/compressor.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/compressor.dir/src/main.cpp.o -MF CMakeFiles/compressor.dir/src/main.cpp.o.d -o CMakeFiles/compressor.dir/src/main.cpp.o -c "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/main.cpp"

CMakeFiles/compressor.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/compressor.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/main.cpp" > CMakeFiles/compressor.dir/src/main.cpp.i

CMakeFiles/compressor.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/compressor.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/main.cpp" -o CMakeFiles/compressor.dir/src/main.cpp.s

CMakeFiles/compressor.dir/src/filehandler.cpp.o: CMakeFiles/compressor.dir/flags.make
CMakeFiles/compressor.dir/src/filehandler.cpp.o: /Users/cameronprzybylski/Documents/C++/C++\ Projects/FileCompressor/src/filehandler.cpp
CMakeFiles/compressor.dir/src/filehandler.cpp.o: CMakeFiles/compressor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/compressor.dir/src/filehandler.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/compressor.dir/src/filehandler.cpp.o -MF CMakeFiles/compressor.dir/src/filehandler.cpp.o.d -o CMakeFiles/compressor.dir/src/filehandler.cpp.o -c "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/filehandler.cpp"

CMakeFiles/compressor.dir/src/filehandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/compressor.dir/src/filehandler.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/filehandler.cpp" > CMakeFiles/compressor.dir/src/filehandler.cpp.i

CMakeFiles/compressor.dir/src/filehandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/compressor.dir/src/filehandler.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/filehandler.cpp" -o CMakeFiles/compressor.dir/src/filehandler.cpp.s

CMakeFiles/compressor.dir/src/huffmantree.cpp.o: CMakeFiles/compressor.dir/flags.make
CMakeFiles/compressor.dir/src/huffmantree.cpp.o: /Users/cameronprzybylski/Documents/C++/C++\ Projects/FileCompressor/src/huffmantree.cpp
CMakeFiles/compressor.dir/src/huffmantree.cpp.o: CMakeFiles/compressor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/compressor.dir/src/huffmantree.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/compressor.dir/src/huffmantree.cpp.o -MF CMakeFiles/compressor.dir/src/huffmantree.cpp.o.d -o CMakeFiles/compressor.dir/src/huffmantree.cpp.o -c "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/huffmantree.cpp"

CMakeFiles/compressor.dir/src/huffmantree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/compressor.dir/src/huffmantree.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/huffmantree.cpp" > CMakeFiles/compressor.dir/src/huffmantree.cpp.i

CMakeFiles/compressor.dir/src/huffmantree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/compressor.dir/src/huffmantree.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/huffmantree.cpp" -o CMakeFiles/compressor.dir/src/huffmantree.cpp.s

CMakeFiles/compressor.dir/src/huffmancompressor.cpp.o: CMakeFiles/compressor.dir/flags.make
CMakeFiles/compressor.dir/src/huffmancompressor.cpp.o: /Users/cameronprzybylski/Documents/C++/C++\ Projects/FileCompressor/src/huffmancompressor.cpp
CMakeFiles/compressor.dir/src/huffmancompressor.cpp.o: CMakeFiles/compressor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/compressor.dir/src/huffmancompressor.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/compressor.dir/src/huffmancompressor.cpp.o -MF CMakeFiles/compressor.dir/src/huffmancompressor.cpp.o.d -o CMakeFiles/compressor.dir/src/huffmancompressor.cpp.o -c "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/huffmancompressor.cpp"

CMakeFiles/compressor.dir/src/huffmancompressor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/compressor.dir/src/huffmancompressor.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/huffmancompressor.cpp" > CMakeFiles/compressor.dir/src/huffmancompressor.cpp.i

CMakeFiles/compressor.dir/src/huffmancompressor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/compressor.dir/src/huffmancompressor.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/huffmancompressor.cpp" -o CMakeFiles/compressor.dir/src/huffmancompressor.cpp.s

# Object files for target compressor
compressor_OBJECTS = \
"CMakeFiles/compressor.dir/src/main.cpp.o" \
"CMakeFiles/compressor.dir/src/filehandler.cpp.o" \
"CMakeFiles/compressor.dir/src/huffmantree.cpp.o" \
"CMakeFiles/compressor.dir/src/huffmancompressor.cpp.o"

# External object files for target compressor
compressor_EXTERNAL_OBJECTS =

compressor: CMakeFiles/compressor.dir/src/main.cpp.o
compressor: CMakeFiles/compressor.dir/src/filehandler.cpp.o
compressor: CMakeFiles/compressor.dir/src/huffmantree.cpp.o
compressor: CMakeFiles/compressor.dir/src/huffmancompressor.cpp.o
compressor: CMakeFiles/compressor.dir/build.make
compressor: CMakeFiles/compressor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable compressor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compressor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/compressor.dir/build: compressor
.PHONY : CMakeFiles/compressor.dir/build

CMakeFiles/compressor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/compressor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/compressor.dir/clean

CMakeFiles/compressor.dir/depend:
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor" "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor" "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build" "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build" "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles/compressor.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/compressor.dir/depend

