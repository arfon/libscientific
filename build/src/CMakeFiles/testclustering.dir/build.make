# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.5.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.5.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/marco/projects/libscientific-0.7.4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/marco/projects/libscientific-0.7.4/build

# Include any dependencies generated for this target.
include src/CMakeFiles/testclustering.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/testclustering.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/testclustering.dir/flags.make

src/CMakeFiles/testclustering.dir/testclustering.c.o: src/CMakeFiles/testclustering.dir/flags.make
src/CMakeFiles/testclustering.dir/testclustering.c.o: ../src/testclustering.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marco/projects/libscientific-0.7.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/testclustering.dir/testclustering.c.o"
	cd /Users/marco/projects/libscientific-0.7.4/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testclustering.dir/testclustering.c.o   -c /Users/marco/projects/libscientific-0.7.4/src/testclustering.c

src/CMakeFiles/testclustering.dir/testclustering.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testclustering.dir/testclustering.c.i"
	cd /Users/marco/projects/libscientific-0.7.4/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/marco/projects/libscientific-0.7.4/src/testclustering.c > CMakeFiles/testclustering.dir/testclustering.c.i

src/CMakeFiles/testclustering.dir/testclustering.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testclustering.dir/testclustering.c.s"
	cd /Users/marco/projects/libscientific-0.7.4/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/marco/projects/libscientific-0.7.4/src/testclustering.c -o CMakeFiles/testclustering.dir/testclustering.c.s

src/CMakeFiles/testclustering.dir/testclustering.c.o.requires:

.PHONY : src/CMakeFiles/testclustering.dir/testclustering.c.o.requires

src/CMakeFiles/testclustering.dir/testclustering.c.o.provides: src/CMakeFiles/testclustering.dir/testclustering.c.o.requires
	$(MAKE) -f src/CMakeFiles/testclustering.dir/build.make src/CMakeFiles/testclustering.dir/testclustering.c.o.provides.build
.PHONY : src/CMakeFiles/testclustering.dir/testclustering.c.o.provides

src/CMakeFiles/testclustering.dir/testclustering.c.o.provides.build: src/CMakeFiles/testclustering.dir/testclustering.c.o


# Object files for target testclustering
testclustering_OBJECTS = \
"CMakeFiles/testclustering.dir/testclustering.c.o"

# External object files for target testclustering
testclustering_EXTERNAL_OBJECTS =

src/testclustering: src/CMakeFiles/testclustering.dir/testclustering.c.o
src/testclustering: src/CMakeFiles/testclustering.dir/build.make
src/testclustering: src/libscientific.dylib
src/testclustering: src/CMakeFiles/testclustering.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/marco/projects/libscientific-0.7.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testclustering"
	cd /Users/marco/projects/libscientific-0.7.4/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testclustering.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/testclustering.dir/build: src/testclustering

.PHONY : src/CMakeFiles/testclustering.dir/build

src/CMakeFiles/testclustering.dir/requires: src/CMakeFiles/testclustering.dir/testclustering.c.o.requires

.PHONY : src/CMakeFiles/testclustering.dir/requires

src/CMakeFiles/testclustering.dir/clean:
	cd /Users/marco/projects/libscientific-0.7.4/build/src && $(CMAKE_COMMAND) -P CMakeFiles/testclustering.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/testclustering.dir/clean

src/CMakeFiles/testclustering.dir/depend:
	cd /Users/marco/projects/libscientific-0.7.4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/marco/projects/libscientific-0.7.4 /Users/marco/projects/libscientific-0.7.4/src /Users/marco/projects/libscientific-0.7.4/build /Users/marco/projects/libscientific-0.7.4/build/src /Users/marco/projects/libscientific-0.7.4/build/src/CMakeFiles/testclustering.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/testclustering.dir/depend

