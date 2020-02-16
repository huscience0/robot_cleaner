cmake_minimum_required(VERSION 2.8)
#cmake_minimum_required(VERSION 3.1)

set(CMAKE_CXX_STANDARD 11)
set(LIBRARY_OUTPUT_PATH ../../../lib/robot_cleaner)

set(COMM_SO robot_cleaner_shared)
set(COMM_A robot_cleaner)

aux_source_directory(src SRC_COMM)
#include_directories(src)

add_library(${COMM_SO} SHARED ${SRC_COMM})
add_library(${COMM_A} STATIC ${SRC_COMM})
set_target_properties(${COMM_A} PROPERTIES OUTPUT_NAME "robot_cleaner")
