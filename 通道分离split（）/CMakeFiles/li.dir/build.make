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
CMAKE_SOURCE_DIR = /home/li/opencvlearn/通道分离split（）

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/li/opencvlearn/通道分离split（）

# Include any dependencies generated for this target.
include CMakeFiles/li.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/li.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/li.dir/flags.make

CMakeFiles/li.dir/hello.cpp.o: CMakeFiles/li.dir/flags.make
CMakeFiles/li.dir/hello.cpp.o: hello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/li/opencvlearn/通道分离split（）/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/li.dir/hello.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/li.dir/hello.cpp.o -c /home/li/opencvlearn/通道分离split（）/hello.cpp

CMakeFiles/li.dir/hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/li.dir/hello.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/li/opencvlearn/通道分离split（）/hello.cpp > CMakeFiles/li.dir/hello.cpp.i

CMakeFiles/li.dir/hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/li.dir/hello.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/li/opencvlearn/通道分离split（）/hello.cpp -o CMakeFiles/li.dir/hello.cpp.s

CMakeFiles/li.dir/hello.cpp.o.requires:

.PHONY : CMakeFiles/li.dir/hello.cpp.o.requires

CMakeFiles/li.dir/hello.cpp.o.provides: CMakeFiles/li.dir/hello.cpp.o.requires
	$(MAKE) -f CMakeFiles/li.dir/build.make CMakeFiles/li.dir/hello.cpp.o.provides.build
.PHONY : CMakeFiles/li.dir/hello.cpp.o.provides

CMakeFiles/li.dir/hello.cpp.o.provides.build: CMakeFiles/li.dir/hello.cpp.o


# Object files for target li
li_OBJECTS = \
"CMakeFiles/li.dir/hello.cpp.o"

# External object files for target li
li_EXTERNAL_OBJECTS =

li: CMakeFiles/li.dir/hello.cpp.o
li: CMakeFiles/li.dir/build.make
li: /usr/local/lib/libopencv_ml.so.3.4.1
li: /usr/local/lib/libopencv_superres.so.3.4.1
li: /usr/local/lib/libopencv_shape.so.3.4.1
li: /usr/local/lib/libopencv_objdetect.so.3.4.1
li: /usr/local/lib/libopencv_videostab.so.3.4.1
li: /usr/local/lib/libopencv_dnn.so.3.4.1
li: /usr/local/lib/libopencv_photo.so.3.4.1
li: /usr/local/lib/libopencv_video.so.3.4.1
li: /usr/local/lib/libopencv_stitching.so.3.4.1
li: /usr/local/lib/libopencv_calib3d.so.3.4.1
li: /usr/local/lib/libopencv_features2d.so.3.4.1
li: /usr/local/lib/libopencv_highgui.so.3.4.1
li: /usr/local/lib/libopencv_videoio.so.3.4.1
li: /usr/local/lib/libopencv_imgcodecs.so.3.4.1
li: /usr/local/lib/libopencv_imgproc.so.3.4.1
li: /usr/local/lib/libopencv_flann.so.3.4.1
li: /usr/local/lib/libopencv_core.so.3.4.1
li: CMakeFiles/li.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/li/opencvlearn/通道分离split（）/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable li"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/li.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/li.dir/build: li

.PHONY : CMakeFiles/li.dir/build

CMakeFiles/li.dir/requires: CMakeFiles/li.dir/hello.cpp.o.requires

.PHONY : CMakeFiles/li.dir/requires

CMakeFiles/li.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/li.dir/cmake_clean.cmake
.PHONY : CMakeFiles/li.dir/clean

CMakeFiles/li.dir/depend:
	cd /home/li/opencvlearn/通道分离split（） && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/li/opencvlearn/通道分离split（） /home/li/opencvlearn/通道分离split（） /home/li/opencvlearn/通道分离split（） /home/li/opencvlearn/通道分离split（） /home/li/opencvlearn/通道分离split（）/CMakeFiles/li.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/li.dir/depend

