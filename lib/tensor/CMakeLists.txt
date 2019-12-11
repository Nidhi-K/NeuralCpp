cmake_minimum_required(VERSION 3.9)
set (CMAKE_CXX_STANDARD 14)

project(tensor VERSION 1.0)
configure_file(tensorConfig.h.in tensorConfig.h)

# add src files
set(SOURCES src/tensor.cpp)

add_library(tensor SHARED ${SOURCES})
