# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin

# Include any dependencies generated for this target.
include test/CMakeFiles/test_tensor_const0.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_tensor_const0.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_tensor_const0.dir/flags.make

test/CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.o: test/CMakeFiles/test_tensor_const0.dir/flags.make
test/CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.o: ../test/test_tensor_const0.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.o"
	cd /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.o -c /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/test/test_tensor_const0.cpp

test/CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.i"
	cd /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/test/test_tensor_const0.cpp > CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.i

test/CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.s"
	cd /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/test/test_tensor_const0.cpp -o CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.s

# Object files for target test_tensor_const0
test_tensor_const0_OBJECTS = \
"CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.o"

# External object files for target test_tensor_const0
test_tensor_const0_EXTERNAL_OBJECTS =

test/test_tensor_const0: test/CMakeFiles/test_tensor_const0.dir/test_tensor_const0.cpp.o
test/test_tensor_const0: test/CMakeFiles/test_tensor_const0.dir/build.make
test/test_tensor_const0: ../lib/tensor/bin/libtensor.so
test/test_tensor_const0: test/CMakeFiles/test_tensor_const0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_tensor_const0"
	cd /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_tensor_const0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_tensor_const0.dir/build: test/test_tensor_const0

.PHONY : test/CMakeFiles/test_tensor_const0.dir/build

test/CMakeFiles/test_tensor_const0.dir/clean:
	cd /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin/test && $(CMAKE_COMMAND) -P CMakeFiles/test_tensor_const0.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_tensor_const0.dir/clean

test/CMakeFiles/test_tensor_const0.dir/depend:
	cd /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/test /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin/test /media/advait/DATA/Advait/Handouts_and_assignments/NeuralCpp/bin/test/CMakeFiles/test_tensor_const0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test_tensor_const0.dir/depend

