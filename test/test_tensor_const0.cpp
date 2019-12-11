#include <iostream>
#include <array>
#include "../lib/tensor/src/tensor.cpp"

int main()
{
	size_t N_ELEMS = 10;
	std::array<std::size_t, 1> size_1d = {N_ELEMS};
	// std::cout << size_1d[0] << std::endl;
	Tensor<1> tensor_1d(size_1d, true);
	tensor_1d.print_tensor_data();
}
