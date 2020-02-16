=====> Directory descriptionï¼?
3rd : Third-party open source library, it is mainly used to store gtest currently. Gtest will be compiled into library files and stored in the lib directory
bin : Executable file
lib : Static or dynamic library
src : Main function code, Each subdirectory will be compiled into a library file and stored in the lib directory.
test: Test case code

=====> How to use?
step1 cd zx
step2 chmod +x build_and_run.sh && ./build_and_run.sh

=====> How to clean Build direction?
step1 cd zx
step2 chmod +x clean.sh && ./clean.sh

=====> How to run robot?
./run.sh or ./build_and_run.sh, build_and_run.sh means compiling and executing, ./run.sh only for executing