# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_SOURCE_DIR = /home/quake/Projects/audio-analysis/src/pffft

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/quake/Projects/audio-analysis/src/pffft/build

# Include any dependencies generated for this target.
include CMakeFiles/PFFASTCONV.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/PFFASTCONV.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PFFASTCONV.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PFFASTCONV.dir/flags.make

CMakeFiles/PFFASTCONV.dir/pffastconv.c.o: CMakeFiles/PFFASTCONV.dir/flags.make
CMakeFiles/PFFASTCONV.dir/pffastconv.c.o: /home/quake/Projects/audio-analysis/src/pffft/pffastconv.c
CMakeFiles/PFFASTCONV.dir/pffastconv.c.o: CMakeFiles/PFFASTCONV.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/quake/Projects/audio-analysis/src/pffft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/PFFASTCONV.dir/pffastconv.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/PFFASTCONV.dir/pffastconv.c.o -MF CMakeFiles/PFFASTCONV.dir/pffastconv.c.o.d -o CMakeFiles/PFFASTCONV.dir/pffastconv.c.o -c /home/quake/Projects/audio-analysis/src/pffft/pffastconv.c

CMakeFiles/PFFASTCONV.dir/pffastconv.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/PFFASTCONV.dir/pffastconv.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/quake/Projects/audio-analysis/src/pffft/pffastconv.c > CMakeFiles/PFFASTCONV.dir/pffastconv.c.i

CMakeFiles/PFFASTCONV.dir/pffastconv.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/PFFASTCONV.dir/pffastconv.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/quake/Projects/audio-analysis/src/pffft/pffastconv.c -o CMakeFiles/PFFASTCONV.dir/pffastconv.c.s

# Object files for target PFFASTCONV
PFFASTCONV_OBJECTS = \
"CMakeFiles/PFFASTCONV.dir/pffastconv.c.o"

# External object files for target PFFASTCONV
PFFASTCONV_EXTERNAL_OBJECTS =

libpffastconv.a: CMakeFiles/PFFASTCONV.dir/pffastconv.c.o
libpffastconv.a: CMakeFiles/PFFASTCONV.dir/build.make
libpffastconv.a: CMakeFiles/PFFASTCONV.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/quake/Projects/audio-analysis/src/pffft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libpffastconv.a"
	$(CMAKE_COMMAND) -P CMakeFiles/PFFASTCONV.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PFFASTCONV.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PFFASTCONV.dir/build: libpffastconv.a
.PHONY : CMakeFiles/PFFASTCONV.dir/build

CMakeFiles/PFFASTCONV.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PFFASTCONV.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PFFASTCONV.dir/clean

CMakeFiles/PFFASTCONV.dir/depend:
	cd /home/quake/Projects/audio-analysis/src/pffft/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/quake/Projects/audio-analysis/src/pffft /home/quake/Projects/audio-analysis/src/pffft /home/quake/Projects/audio-analysis/src/pffft/build /home/quake/Projects/audio-analysis/src/pffft/build /home/quake/Projects/audio-analysis/src/pffft/build/CMakeFiles/PFFASTCONV.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PFFASTCONV.dir/depend

