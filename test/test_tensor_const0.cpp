#include <iostream>
#include <array>
#include "../lib/tensor/include/tensor/tensor.h"

int main()
{
	size_t N_ELEMS = 1024;
	std::array<std::size_t, 1> size_1d = {N_ELEMS};
	// std::cout << size_1d[0] << std::endl;
	Tensor<1> tensor_1d(size_1d, false);
}
