# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/camilo/cmake/integration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/camilo/cmake/integration

# Include any dependencies generated for this target.
include port/base/unac/CMakeFiles/static_unac.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include port/base/unac/CMakeFiles/static_unac.dir/compiler_depend.make

# Include the progress variables for this target.
include port/base/unac/CMakeFiles/static_unac.dir/progress.make

# Include the compile flags for this target's objects.
include port/base/unac/CMakeFiles/static_unac.dir/flags.make

port/base/unac/CMakeFiles/static_unac.dir/unac.c.o: port/base/unac/CMakeFiles/static_unac.dir/flags.make
port/base/unac/CMakeFiles/static_unac.dir/unac.c.o: port/base/unac/unac.c
port/base/unac/CMakeFiles/static_unac.dir/unac.c.o: port/base/unac/CMakeFiles/static_unac.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object port/base/unac/CMakeFiles/static_unac.dir/unac.c.o"
	cd /home/camilo/cmake/integration/port/base/unac && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT port/base/unac/CMakeFiles/static_unac.dir/unac.c.o -MF CMakeFiles/static_unac.dir/unac.c.o.d -o CMakeFiles/static_unac.dir/unac.c.o -c /home/camilo/cmake/integration/port/base/unac/unac.c

port/base/unac/CMakeFiles/static_unac.dir/unac.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/static_unac.dir/unac.c.i"
	cd /home/camilo/cmake/integration/port/base/unac && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/camilo/cmake/integration/port/base/unac/unac.c > CMakeFiles/static_unac.dir/unac.c.i

port/base/unac/CMakeFiles/static_unac.dir/unac.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/static_unac.dir/unac.c.s"
	cd /home/camilo/cmake/integration/port/base/unac && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/camilo/cmake/integration/port/base/unac/unac.c -o CMakeFiles/static_unac.dir/unac.c.s

# Object files for target static_unac
static_unac_OBJECTS = \
"CMakeFiles/static_unac.dir/unac.c.o"

# External object files for target static_unac
static_unac_EXTERNAL_OBJECTS =

library/libstatic_unac.a: port/base/unac/CMakeFiles/static_unac.dir/unac.c.o
library/libstatic_unac.a: port/base/unac/CMakeFiles/static_unac.dir/build.make
library/libstatic_unac.a: port/base/unac/CMakeFiles/static_unac.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../library/libstatic_unac.a"
	cd /home/camilo/cmake/integration/port/base/unac && $(CMAKE_COMMAND) -P CMakeFiles/static_unac.dir/cmake_clean_target.cmake
	cd /home/camilo/cmake/integration/port/base/unac && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/static_unac.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
port/base/unac/CMakeFiles/static_unac.dir/build: library/libstatic_unac.a
.PHONY : port/base/unac/CMakeFiles/static_unac.dir/build

port/base/unac/CMakeFiles/static_unac.dir/clean:
	cd /home/camilo/cmake/integration/port/base/unac && $(CMAKE_COMMAND) -P CMakeFiles/static_unac.dir/cmake_clean.cmake
.PHONY : port/base/unac/CMakeFiles/static_unac.dir/clean

port/base/unac/CMakeFiles/static_unac.dir/depend:
	cd /home/camilo/cmake/integration && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/camilo/cmake/integration /home/camilo/cmake/integration/port/base/unac /home/camilo/cmake/integration /home/camilo/cmake/integration/port/base/unac /home/camilo/cmake/integration/port/base/unac/CMakeFiles/static_unac.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : port/base/unac/CMakeFiles/static_unac.dir/depend

