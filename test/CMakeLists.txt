# Find GoogleTest
find_package(GTest REQUIRED)

# Include directories for GoogleTest
include_directories(${GTEST_INCLUDE_DIRS})
include_directories(${CMAKE_SOURCE_DIR}/src)


enable_testing()

# Add test executable
add_executable(compressortest testall.cpp testfilehandler.cpp ../src/filehandler.cpp testhuffmantree.cpp ../src/huffmantree.cpp)

# Link against GoogleTest
target_link_libraries(compressortest PRIVATE GTest::GTest GTest::Main)

add_test(NAME CompressorTests COMMAND compressortest)