cmake_minimum_required(VERSION 2.8)
#cmake_minimum_required(VERSION 3.1)

project (robot_cleaner)

set(CMAKE_CXX_STANDARD 11)
set (EXECUTABLE_OUTPUT_PATH ../bin)
aux_source_directory (test TEST_DIR_SRCS)
add_subdirectory (
    src/robot_cleaner
)
include_directories (
    3rd/googletest-release-1.7.0/include
    src/robot_cleaner/src
)
link_directories (
    ${CMAKE_CURRENT_SOURCE_DIR}/lib/gtest
    ${CMAKE_CURRENT_SOURCE_DIR}/lib/robot_cleaner
)
add_executable (robotCleaner ${TEST_DIR_SRCS})
target_link_libraries (robotCleaner 
    gtest
    #pthread
    robot_cleaner
)
