rm -rf build/ && mkdir build && cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=toolchain-rpi64.cmake
make

