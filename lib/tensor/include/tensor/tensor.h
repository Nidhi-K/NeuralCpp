#ifndef TENSOR_H
#define TENSOR_H
#include<memory>
#include<array>
#include<cassert>

struct tensor_deleter
{
	void operator () (float *p) const
	{
		delete[] p;
	}
};

template<int N_DIMS>
class Tensor
{
private:
	// total number of elements in tensor
	std::size_t n_elems;
	// set above value based on size of array
	void set_n_elems()
	{
		n_elems = 1;
		for(int i = 0; i < N_DIMS; ++i)
		{
			n_elems *= size[i];
		}
	}


	// data
	float *allocation;
	// allocate memory
	void alloc_data();
	// get location of first element
	float *get();

	// copy utility - copies values of others into data
	void copy(const Tensor<N_DIMS> &other);

	// fill tensor with random values between -1 and 1
	void fill_random();

public:
	std::size_t get_n_elems() const;

	// structure to hold size of each each dimension
	const std::array<size_t, N_DIMS> size;

	// copy with assignment
	Tensor<N_DIMS>& operator =(Tensor<N_DIMS> &other);

	// assign scalar value
	Tensor<N_DIMS>& operator =(const float v);

	// construct tensor by specifying dimensions
	Tensor(std::array<std::size_t, N_DIMS> size, bool rand_init=false);

};

#endif
