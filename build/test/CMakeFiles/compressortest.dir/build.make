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
include test/CMakeFiles/compressortest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/compressortest.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/compressortest.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/compressortest.dir/flags.make

test/CMakeFiles/compressortest.dir/testall.cpp.o: test/CMakeFiles/compressortest.dir/flags.make
test/CMakeFiles/compressortest.dir/testall.cpp.o: /Users/cameronprzybylski/Documents/C++/C++\ Projects/FileCompressor/test/testall.cpp
test/CMakeFiles/compressortest.dir/testall.cpp.o: test/CMakeFiles/compressortest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/compressortest.dir/testall.cpp.o"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/compressortest.dir/testall.cpp.o -MF CMakeFiles/compressortest.dir/testall.cpp.o.d -o CMakeFiles/compressortest.dir/testall.cpp.o -c "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testall.cpp"

test/CMakeFiles/compressortest.dir/testall.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/compressortest.dir/testall.cpp.i"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testall.cpp" > CMakeFiles/compressortest.dir/testall.cpp.i

test/CMakeFiles/compressortest.dir/testall.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/compressortest.dir/testall.cpp.s"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testall.cpp" -o CMakeFiles/compressortest.dir/testall.cpp.s

test/CMakeFiles/compressortest.dir/testfilehandler.cpp.o: test/CMakeFiles/compressortest.dir/flags.make
test/CMakeFiles/compressortest.dir/testfilehandler.cpp.o: /Users/cameronprzybylski/Documents/C++/C++\ Projects/FileCompressor/test/testfilehandler.cpp
test/CMakeFiles/compressortest.dir/testfilehandler.cpp.o: test/CMakeFiles/compressortest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/compressortest.dir/testfilehandler.cpp.o"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/compressortest.dir/testfilehandler.cpp.o -MF CMakeFiles/compressortest.dir/testfilehandler.cpp.o.d -o CMakeFiles/compressortest.dir/testfilehandler.cpp.o -c "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testfilehandler.cpp"

test/CMakeFiles/compressortest.dir/testfilehandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/compressortest.dir/testfilehandler.cpp.i"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testfilehandler.cpp" > CMakeFiles/compressortest.dir/testfilehandler.cpp.i

test/CMakeFiles/compressortest.dir/testfilehandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/compressortest.dir/testfilehandler.cpp.s"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testfilehandler.cpp" -o CMakeFiles/compressortest.dir/testfilehandler.cpp.s

test/CMakeFiles/compressortest.dir/__/src/filehandler.cpp.o: test/CMakeFiles/compressortest.dir/flags.make
test/CMakeFiles/compressortest.dir/__/src/filehandler.cpp.o: /Users/cameronprzybylski/Documents/C++/C++\ Projects/FileCompressor/src/filehandler.cpp
test/CMakeFiles/compressortest.dir/__/src/filehandler.cpp.o: test/CMakeFiles/compressortest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/compressortest.dir/__/src/filehandler.cpp.o"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/compressortest.dir/__/src/filehandler.cpp.o -MF CMakeFiles/compressortest.dir/__/src/filehandler.cpp.o.d -o CMakeFiles/compressortest.dir/__/src/filehandler.cpp.o -c "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/filehandler.cpp"

test/CMakeFiles/compressortest.dir/__/src/filehandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/compressortest.dir/__/src/filehandler.cpp.i"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/filehandler.cpp" > CMakeFiles/compressortest.dir/__/src/filehandler.cpp.i

test/CMakeFiles/compressortest.dir/__/src/filehandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/compressortest.dir/__/src/filehandler.cpp.s"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/filehandler.cpp" -o CMakeFiles/compressortest.dir/__/src/filehandler.cpp.s

test/CMakeFiles/compressortest.dir/testhuffmantree.cpp.o: test/CMakeFiles/compressortest.dir/flags.make
test/CMakeFiles/compressortest.dir/testhuffmantree.cpp.o: /Users/cameronprzybylski/Documents/C++/C++\ Projects/FileCompressor/test/testhuffmantree.cpp
test/CMakeFiles/compressortest.dir/testhuffmantree.cpp.o: test/CMakeFiles/compressortest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/CMakeFiles/compressortest.dir/testhuffmantree.cpp.o"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/compressortest.dir/testhuffmantree.cpp.o -MF CMakeFiles/compressortest.dir/testhuffmantree.cpp.o.d -o CMakeFiles/compressortest.dir/testhuffmantree.cpp.o -c "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testhuffmantree.cpp"

test/CMakeFiles/compressortest.dir/testhuffmantree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/compressortest.dir/testhuffmantree.cpp.i"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testhuffmantree.cpp" > CMakeFiles/compressortest.dir/testhuffmantree.cpp.i

test/CMakeFiles/compressortest.dir/testhuffmantree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/compressortest.dir/testhuffmantree.cpp.s"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test/testhuffmantree.cpp" -o CMakeFiles/compressortest.dir/testhuffmantree.cpp.s

test/CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.o: test/CMakeFiles/compressortest.dir/flags.make
test/CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.o: /Users/cameronprzybylski/Documents/C++/C++\ Projects/FileCompressor/src/huffmantree.cpp
test/CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.o: test/CMakeFiles/compressortest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object test/CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.o"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.o -MF CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.o.d -o CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.o -c "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/huffmantree.cpp"

test/CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.i"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/huffmantree.cpp" > CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.i

test/CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.s"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/src/huffmantree.cpp" -o CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.s

# Object files for target compressortest
compressortest_OBJECTS = \
"CMakeFiles/compressortest.dir/testall.cpp.o" \
"CMakeFiles/compressortest.dir/testfilehandler.cpp.o" \
"CMakeFiles/compressortest.dir/__/src/filehandler.cpp.o" \
"CMakeFiles/compressortest.dir/testhuffmantree.cpp.o" \
"CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.o"

# External object files for target compressortest
compressortest_EXTERNAL_OBJECTS =

test/compressortest: test/CMakeFiles/compressortest.dir/testall.cpp.o
test/compressortest: test/CMakeFiles/compressortest.dir/testfilehandler.cpp.o
test/compressortest: test/CMakeFiles/compressortest.dir/__/src/filehandler.cpp.o
test/compressortest: test/CMakeFiles/compressortest.dir/testhuffmantree.cpp.o
test/compressortest: test/CMakeFiles/compressortest.dir/__/src/huffmantree.cpp.o
test/compressortest: test/CMakeFiles/compressortest.dir/build.make
test/compressortest: /usr/local/lib/libgtest_main.a
test/compressortest: /usr/local/lib/libgtest.a
test/compressortest: test/CMakeFiles/compressortest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable compressortest"
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compressortest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/compressortest.dir/build: test/compressortest
.PHONY : test/CMakeFiles/compressortest.dir/build

test/CMakeFiles/compressortest.dir/clean:
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" && $(CMAKE_COMMAND) -P CMakeFiles/compressortest.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/compressortest.dir/clean

test/CMakeFiles/compressortest.dir/depend:
	cd "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor" "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/test" "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build" "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test" "/Users/cameronprzybylski/Documents/C++/C++ Projects/FileCompressor/build/test/CMakeFiles/compressortest.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : test/CMakeFiles/compressortest.dir/depend

