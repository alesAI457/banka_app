# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ales/Programiranje/googleTest/vaja1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ales/Programiranje/googleTest/vaja1/build

# Include any dependencies generated for this target.
include CMakeFiles/banka_lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/banka_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/banka_lib.dir/flags.make

CMakeFiles/banka_lib.dir/src/Oseba.cpp.o: CMakeFiles/banka_lib.dir/flags.make
CMakeFiles/banka_lib.dir/src/Oseba.cpp.o: ../src/Oseba.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ales/Programiranje/googleTest/vaja1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/banka_lib.dir/src/Oseba.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/banka_lib.dir/src/Oseba.cpp.o -c /home/ales/Programiranje/googleTest/vaja1/src/Oseba.cpp

CMakeFiles/banka_lib.dir/src/Oseba.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/banka_lib.dir/src/Oseba.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ales/Programiranje/googleTest/vaja1/src/Oseba.cpp > CMakeFiles/banka_lib.dir/src/Oseba.cpp.i

CMakeFiles/banka_lib.dir/src/Oseba.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/banka_lib.dir/src/Oseba.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ales/Programiranje/googleTest/vaja1/src/Oseba.cpp -o CMakeFiles/banka_lib.dir/src/Oseba.cpp.s

CMakeFiles/banka_lib.dir/src/Oseba.cpp.o.requires:

.PHONY : CMakeFiles/banka_lib.dir/src/Oseba.cpp.o.requires

CMakeFiles/banka_lib.dir/src/Oseba.cpp.o.provides: CMakeFiles/banka_lib.dir/src/Oseba.cpp.o.requires
	$(MAKE) -f CMakeFiles/banka_lib.dir/build.make CMakeFiles/banka_lib.dir/src/Oseba.cpp.o.provides.build
.PHONY : CMakeFiles/banka_lib.dir/src/Oseba.cpp.o.provides

CMakeFiles/banka_lib.dir/src/Oseba.cpp.o.provides.build: CMakeFiles/banka_lib.dir/src/Oseba.cpp.o


CMakeFiles/banka_lib.dir/src/Banka.cpp.o: CMakeFiles/banka_lib.dir/flags.make
CMakeFiles/banka_lib.dir/src/Banka.cpp.o: ../src/Banka.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ales/Programiranje/googleTest/vaja1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/banka_lib.dir/src/Banka.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/banka_lib.dir/src/Banka.cpp.o -c /home/ales/Programiranje/googleTest/vaja1/src/Banka.cpp

CMakeFiles/banka_lib.dir/src/Banka.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/banka_lib.dir/src/Banka.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ales/Programiranje/googleTest/vaja1/src/Banka.cpp > CMakeFiles/banka_lib.dir/src/Banka.cpp.i

CMakeFiles/banka_lib.dir/src/Banka.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/banka_lib.dir/src/Banka.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ales/Programiranje/googleTest/vaja1/src/Banka.cpp -o CMakeFiles/banka_lib.dir/src/Banka.cpp.s

CMakeFiles/banka_lib.dir/src/Banka.cpp.o.requires:

.PHONY : CMakeFiles/banka_lib.dir/src/Banka.cpp.o.requires

CMakeFiles/banka_lib.dir/src/Banka.cpp.o.provides: CMakeFiles/banka_lib.dir/src/Banka.cpp.o.requires
	$(MAKE) -f CMakeFiles/banka_lib.dir/build.make CMakeFiles/banka_lib.dir/src/Banka.cpp.o.provides.build
.PHONY : CMakeFiles/banka_lib.dir/src/Banka.cpp.o.provides

CMakeFiles/banka_lib.dir/src/Banka.cpp.o.provides.build: CMakeFiles/banka_lib.dir/src/Banka.cpp.o


CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o: CMakeFiles/banka_lib.dir/flags.make
CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o: ../src/Bankomat.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ales/Programiranje/googleTest/vaja1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o -c /home/ales/Programiranje/googleTest/vaja1/src/Bankomat.cpp

CMakeFiles/banka_lib.dir/src/Bankomat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/banka_lib.dir/src/Bankomat.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ales/Programiranje/googleTest/vaja1/src/Bankomat.cpp > CMakeFiles/banka_lib.dir/src/Bankomat.cpp.i

CMakeFiles/banka_lib.dir/src/Bankomat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/banka_lib.dir/src/Bankomat.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ales/Programiranje/googleTest/vaja1/src/Bankomat.cpp -o CMakeFiles/banka_lib.dir/src/Bankomat.cpp.s

CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o.requires:

.PHONY : CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o.requires

CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o.provides: CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o.requires
	$(MAKE) -f CMakeFiles/banka_lib.dir/build.make CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o.provides.build
.PHONY : CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o.provides

CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o.provides.build: CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o


# Object files for target banka_lib
banka_lib_OBJECTS = \
"CMakeFiles/banka_lib.dir/src/Oseba.cpp.o" \
"CMakeFiles/banka_lib.dir/src/Banka.cpp.o" \
"CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o"

# External object files for target banka_lib
banka_lib_EXTERNAL_OBJECTS =

libbanka_lib.a: CMakeFiles/banka_lib.dir/src/Oseba.cpp.o
libbanka_lib.a: CMakeFiles/banka_lib.dir/src/Banka.cpp.o
libbanka_lib.a: CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o
libbanka_lib.a: CMakeFiles/banka_lib.dir/build.make
libbanka_lib.a: CMakeFiles/banka_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ales/Programiranje/googleTest/vaja1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libbanka_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/banka_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/banka_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/banka_lib.dir/build: libbanka_lib.a

.PHONY : CMakeFiles/banka_lib.dir/build

CMakeFiles/banka_lib.dir/requires: CMakeFiles/banka_lib.dir/src/Oseba.cpp.o.requires
CMakeFiles/banka_lib.dir/requires: CMakeFiles/banka_lib.dir/src/Banka.cpp.o.requires
CMakeFiles/banka_lib.dir/requires: CMakeFiles/banka_lib.dir/src/Bankomat.cpp.o.requires

.PHONY : CMakeFiles/banka_lib.dir/requires

CMakeFiles/banka_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/banka_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/banka_lib.dir/clean

CMakeFiles/banka_lib.dir/depend:
	cd /home/ales/Programiranje/googleTest/vaja1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ales/Programiranje/googleTest/vaja1 /home/ales/Programiranje/googleTest/vaja1 /home/ales/Programiranje/googleTest/vaja1/build /home/ales/Programiranje/googleTest/vaja1/build /home/ales/Programiranje/googleTest/vaja1/build/CMakeFiles/banka_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/banka_lib.dir/depend
