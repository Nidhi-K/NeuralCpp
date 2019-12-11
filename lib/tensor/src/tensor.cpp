#ifndef TENSOR_H
#define TENSOR_H
#include <iostream>
#include <memory>
#include <array>
#include <cassert>

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

	// utilities
	void print_tensor_data();

};


// Definitions
// get number of elements in tensor
template<int N_DIMS>
std::size_t Tensor<N_DIMS>::get_n_elems() const
{
	return this->n_elems;
}

// get location of first element
template<int N_DIMS>
float* Tensor<N_DIMS>::get()
{
	return this->allocation;
}

// allocate memory
template<int N_DIMS>
void Tensor<N_DIMS>::alloc_data()
{
	this->allocation = new float[this->get_n_elems()];
}

template<int N_DIMS>
void Tensor<N_DIMS>::copy(const Tensor<N_DIMS>& other)
{
  assert(this->get_n_elems() == other.get_n_elems());
	for(int i = 0; i < this->get_n_elems(); ++i)
	{
		this->get()[i] = other.get()[i];
	}
};

// copy with assignment
template<int N_DIMS>
Tensor<N_DIMS>& Tensor<N_DIMS>::operator =(Tensor<N_DIMS> &other)
{
	this->copy(other);
	return *this;
}

// assign scalar value
template<int N_DIMS>
Tensor<N_DIMS>& Tensor<N_DIMS>::operator =(const float val)
{
	for(int i = 0; i < this->get_n_elems(); ++i)
	{
		this->get()[i] = val;
	}
	return *this;
}

// fill tensor with random values between -1 and 1
template<int N_DIMS>
void Tensor<N_DIMS>::fill_random()
{
	srand(time(NULL));
	for(int i = 0; i < this->get_n_elems(); ++i)
	{
		this->get()[i] = float(rand()) / float(RAND_MAX) * 2.0 - 1.0;
	}
}

// construct tensor by specifying dimensions
template<int N_DIMS>
Tensor<N_DIMS>::Tensor(const std::array<std::size_t, N_DIMS> size, bool rand_init)
: size(size)
{
	this->set_n_elems();
	this->alloc_data();
	if(rand_init)
	{
		this->fill_random();
	}
	// else
	// {
	// 	(*this) = 0;
	// }
}

// utilities
template<int N_DIMS>
void Tensor<N_DIMS>::print_tensor_data()
{
	std::cout << "Printing tensor data: " << std::endl;
	for(int i = 0; i < this->get_n_elems(); ++i)
	{
		std::cout << this->get()[i] << ", ";
	}
	std::cout << std::endl;
}

#endif
