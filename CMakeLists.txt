cmake_minimum_required(VERSION 3.9)
set (CMAKE_CXX_STANDARD 14)

project(neuralcpp VERSION 1.0)
configure_file(neuralcppConfig.h.in neuralcppConfig.h)

# add_subdirectory(${CMAKE_SOURCE_DIR}/lib/tensor)
add_subdirectory(${CMAKE_SOURCE_DIR}/test)
link_directories(${CMAKE_SOURCE_DIR}/lib/tensor)

enable_testing()
# add_test(NAME test_cmake COMMAND test_cmake)
add_test(NAME test_tensor_const0 COMMAND test_tensor_const0)
