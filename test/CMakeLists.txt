# add_executable (test_cmake test_cmake.cpp)
add_executable(test_tensor_const0 test_tensor_const0.cpp)

# find_library(TENSOR_LIB tensor PATHS /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/lib/tensor/bin)
# find_library(TENSOR_LIB tensor HINTS ${CMAKE_SOURCE_DIR}/lib/tensor/bin)
# target_link_libraries(test_cmake ${TENSOR_LIB})
find_library(TENSOR_LIB tensor HINTS ${CMAKE_SOURCE_DIR}/lib/tensor/bin)
target_link_libraries(test_tensor_const0 ${TENSOR_LIB})
