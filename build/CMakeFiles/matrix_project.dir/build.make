# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/liu/matrix_library_demo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liu/matrix_library_demo/build

# Include any dependencies generated for this target.
include CMakeFiles/matrix_project.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/matrix_project.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/matrix_project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/matrix_project.dir/flags.make

CMakeFiles/matrix_project.dir/src/main.cpp.o: CMakeFiles/matrix_project.dir/flags.make
CMakeFiles/matrix_project.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/matrix_project.dir/src/main.cpp.o: CMakeFiles/matrix_project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liu/matrix_library_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/matrix_project.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/matrix_project.dir/src/main.cpp.o -MF CMakeFiles/matrix_project.dir/src/main.cpp.o.d -o CMakeFiles/matrix_project.dir/src/main.cpp.o -c /home/liu/matrix_library_demo/src/main.cpp

CMakeFiles/matrix_project.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_project.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liu/matrix_library_demo/src/main.cpp > CMakeFiles/matrix_project.dir/src/main.cpp.i

CMakeFiles/matrix_project.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_project.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liu/matrix_library_demo/src/main.cpp -o CMakeFiles/matrix_project.dir/src/main.cpp.s

CMakeFiles/matrix_project.dir/src/matrix.cpp.o: CMakeFiles/matrix_project.dir/flags.make
CMakeFiles/matrix_project.dir/src/matrix.cpp.o: ../src/matrix.cpp
CMakeFiles/matrix_project.dir/src/matrix.cpp.o: CMakeFiles/matrix_project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liu/matrix_library_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/matrix_project.dir/src/matrix.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/matrix_project.dir/src/matrix.cpp.o -MF CMakeFiles/matrix_project.dir/src/matrix.cpp.o.d -o CMakeFiles/matrix_project.dir/src/matrix.cpp.o -c /home/liu/matrix_library_demo/src/matrix.cpp

CMakeFiles/matrix_project.dir/src/matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_project.dir/src/matrix.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liu/matrix_library_demo/src/matrix.cpp > CMakeFiles/matrix_project.dir/src/matrix.cpp.i

CMakeFiles/matrix_project.dir/src/matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_project.dir/src/matrix.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liu/matrix_library_demo/src/matrix.cpp -o CMakeFiles/matrix_project.dir/src/matrix.cpp.s

# Object files for target matrix_project
matrix_project_OBJECTS = \
"CMakeFiles/matrix_project.dir/src/main.cpp.o" \
"CMakeFiles/matrix_project.dir/src/matrix.cpp.o"

# External object files for target matrix_project
matrix_project_EXTERNAL_OBJECTS =

../bin/matrix_project: CMakeFiles/matrix_project.dir/src/main.cpp.o
../bin/matrix_project: CMakeFiles/matrix_project.dir/src/matrix.cpp.o
../bin/matrix_project: CMakeFiles/matrix_project.dir/build.make
../bin/matrix_project: CMakeFiles/matrix_project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liu/matrix_library_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/matrix_project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrix_project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/matrix_project.dir/build: ../bin/matrix_project
.PHONY : CMakeFiles/matrix_project.dir/build

CMakeFiles/matrix_project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/matrix_project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/matrix_project.dir/clean

CMakeFiles/matrix_project.dir/depend:
	cd /home/liu/matrix_library_demo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liu/matrix_library_demo /home/liu/matrix_library_demo /home/liu/matrix_library_demo/build /home/liu/matrix_library_demo/build /home/liu/matrix_library_demo/build/CMakeFiles/matrix_project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matrix_project.dir/depend

