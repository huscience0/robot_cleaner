#!/bin/bash

#TOP_DIR=$(shell pwd)
TOP_DIR=$(pwd)
TOP_COMPILE_DIR=${TOP_DIR}/build
LIB_SWROBOT_COMPILE_DIR=${TOP_DIR}/src/robot_cleaner/build
LIB_GTEST_COMPILE_DIR=${TOP_DIR}/3rd/googletest-release-1.7.0/build
LIB_GTEST_DIR=${TOP_DIR}/lib/gtest/
echo -e "\n**********************************"
echo "Robot sdk root directory        : ${TOP_DIR}"
echo "Robot sdk root compile directory: ${TOP_COMPILE_DIR}"
echo "**********************************"

COMPILE_ARRAY=(
    #${LIB_GTEST_COMPILE_DIR} # must be first
    ${LIB_SWROBOT_COMPILE_DIR}
    ${TOP_COMPILE_DIR} #must be last
)

COMPILE_ARRAY_LEN=${#COMPILE_ARRAY[*]}
#echo "Len = ${COMPILE_ARRAY_LEN}"
for path in ${COMPILE_ARRAY[*]}
do
    if [ -d ${path} ]; then
        cd ${path}
    else
        mkdir ${path} && cd ${path}
        if [ $? -ne 0 ]; then
            echo "mkdir ${path} failed!"
            exit
        fi
    fi

    cmake .. && make

    if [ ${LIB_GTEST_COMPILE_DIR} == ${path} ]; then
        cp *.a ${LIB_GTEST_DIR}
        echo "*** copy gtest lib file to  ${LIB_GTEST_DIR} success! ***"
    fi
done

echo -e "\n****************** run test *******************"
${TOP_DIR}/bin/robotCleaner
