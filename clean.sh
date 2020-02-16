#!/bin/bash

TOP_DIR=$(pwd)
TOP_COMPILE_DIR=${TOP_DIR}/build
SWROBOT_COMPILE_DIR=${TOP_DIR}/src/robot_cleaner/build
GTEST_COMPILE_DIR=${TOP_DIR}/3rd/googletest-release-1.7.0/build
LIB_SWROBOT_COMPILE_DIR=${TOP_DIR}/lib/robot_cleaner

COMPILE_ARRAY=(
    ${LIB_GTEST_COMPILE_DIR}
    ${SWROBOT_COMPILE_DIR} 
    ${LIB_SWROBOT_COMPILE_DIR}
    ${TOP_COMPILE_DIR}
)
for path in ${COMPILE_ARRAY[*]}
do
    rm -rf ${path}
    if [ $? -eq 0 ]; then
        echo "clean ${path} success"
    else
        echo "${path} has been clean"
    fi
done

rm -rf ./bin/*
echo "clean ${TOP_DIR}/bin success"