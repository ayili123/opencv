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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/li/opencvlearn/第五章core组件进阶

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/li/opencvlearn/第五章core组件进阶/build

# Include any dependencies generated for this target.
include CMakeFiles/lii.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lii.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lii.dir/flags.make

CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o: CMakeFiles/lii.dir/flags.make
CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o: ../colorandbright/seicaihelaingdu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/li/opencvlearn/第五章core组件进阶/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o -c /home/li/opencvlearn/第五章core组件进阶/colorandbright/seicaihelaingdu.cpp

CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/li/opencvlearn/第五章core组件进阶/colorandbright/seicaihelaingdu.cpp > CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.i

CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/li/opencvlearn/第五章core组件进阶/colorandbright/seicaihelaingdu.cpp -o CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.s

CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o.requires:

.PHONY : CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o.requires

CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o.provides: CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o.requires
	$(MAKE) -f CMakeFiles/lii.dir/build.make CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o.provides.build
.PHONY : CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o.provides

CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o.provides.build: CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o


# Object files for target lii
lii_OBJECTS = \
"CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o"

# External object files for target lii
lii_EXTERNAL_OBJECTS =

lii: CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o
lii: CMakeFiles/lii.dir/build.make
lii: CMakeFiles/lii.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/li/opencvlearn/第五章core组件进阶/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lii"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lii.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lii.dir/build: lii

.PHONY : CMakeFiles/lii.dir/build

CMakeFiles/lii.dir/requires: CMakeFiles/lii.dir/colorandbright/seicaihelaingdu.cpp.o.requires

.PHONY : CMakeFiles/lii.dir/requires

CMakeFiles/lii.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lii.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lii.dir/clean

CMakeFiles/lii.dir/depend:
	cd /home/li/opencvlearn/第五章core组件进阶/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/li/opencvlearn/第五章core组件进阶 /home/li/opencvlearn/第五章core组件进阶 /home/li/opencvlearn/第五章core组件进阶/build /home/li/opencvlearn/第五章core组件进阶/build /home/li/opencvlearn/第五章core组件进阶/build/CMakeFiles/lii.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lii.dir/depend

