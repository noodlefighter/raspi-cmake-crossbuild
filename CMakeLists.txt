cmake_minimum_required(VERSION 3.0)
project(mytest)
# Have CMake find our pthreads library within our toolchain (required for this library)
set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
find_package(Threads REQUIRED)


find_package(PkgConfig REQUIRED)
pkg_check_modules(SDL2 REQUIRED sdl2)

# add all the *.c files as sources
FILE(GLOB SRC_FILES *.cpp)
# make this output a shared library (with .so output)
add_executable (mytest ${SRC_FILES})
# be sure to include the current source directory for header files
target_include_directories (mytest PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(mytest ${CMAKE_THREAD_LIBS_INIT} crypt m rt ${SDL2_LIBRARIES})
