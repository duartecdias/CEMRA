# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/amateus/rosbuild_ws/cam

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amateus/rosbuild_ws/cam/build

# Include any dependencies generated for this target.
include CMakeFiles/p3p.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/p3p.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/p3p.dir/flags.make

CMakeFiles/p3p.dir/src/p3p.cpp.o: CMakeFiles/p3p.dir/flags.make
CMakeFiles/p3p.dir/src/p3p.cpp.o: ../src/p3p.cpp
CMakeFiles/p3p.dir/src/p3p.cpp.o: ../manifest.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/catkin/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/console_bridge/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/cpp_common/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/genmsg/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/gencpp/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/genlisp/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/genpy/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/message_generation/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/rostime/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/roscpp_traits/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/roscpp_serialization/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/message_runtime/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/rosbuild/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/rosconsole/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/std_msgs/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/rosgraph_msgs/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/xmlrpcpp/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/roscpp/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/message_filters/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/class_loader/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/rospack/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/roslib/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/pluginlib/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/geometry_msgs/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/sensor_msgs/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/image_transport/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/diagnostic_msgs/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/diagnostic_updater/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /opt/ros/hydro/share/self_test/package.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /home/amateus/rosbuild_ws/quad_msgs/manifest.xml
CMakeFiles/p3p.dir/src/p3p.cpp.o: /home/amateus/rosbuild_ws/quad_msgs/msg_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/amateus/rosbuild_ws/cam/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/p3p.dir/src/p3p.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/p3p.dir/src/p3p.cpp.o -c /home/amateus/rosbuild_ws/cam/src/p3p.cpp

CMakeFiles/p3p.dir/src/p3p.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/p3p.dir/src/p3p.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/amateus/rosbuild_ws/cam/src/p3p.cpp > CMakeFiles/p3p.dir/src/p3p.cpp.i

CMakeFiles/p3p.dir/src/p3p.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/p3p.dir/src/p3p.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/amateus/rosbuild_ws/cam/src/p3p.cpp -o CMakeFiles/p3p.dir/src/p3p.cpp.s

CMakeFiles/p3p.dir/src/p3p.cpp.o.requires:
.PHONY : CMakeFiles/p3p.dir/src/p3p.cpp.o.requires

CMakeFiles/p3p.dir/src/p3p.cpp.o.provides: CMakeFiles/p3p.dir/src/p3p.cpp.o.requires
	$(MAKE) -f CMakeFiles/p3p.dir/build.make CMakeFiles/p3p.dir/src/p3p.cpp.o.provides.build
.PHONY : CMakeFiles/p3p.dir/src/p3p.cpp.o.provides

CMakeFiles/p3p.dir/src/p3p.cpp.o.provides.build: CMakeFiles/p3p.dir/src/p3p.cpp.o

# Object files for target p3p
p3p_OBJECTS = \
"CMakeFiles/p3p.dir/src/p3p.cpp.o"

# External object files for target p3p
p3p_EXTERNAL_OBJECTS =

../lib/libp3p.so: CMakeFiles/p3p.dir/src/p3p.cpp.o
../lib/libp3p.so: CMakeFiles/p3p.dir/build.make
../lib/libp3p.so: CMakeFiles/p3p.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../lib/libp3p.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/p3p.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/p3p.dir/build: ../lib/libp3p.so
.PHONY : CMakeFiles/p3p.dir/build

CMakeFiles/p3p.dir/requires: CMakeFiles/p3p.dir/src/p3p.cpp.o.requires
.PHONY : CMakeFiles/p3p.dir/requires

CMakeFiles/p3p.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/p3p.dir/cmake_clean.cmake
.PHONY : CMakeFiles/p3p.dir/clean

CMakeFiles/p3p.dir/depend:
	cd /home/amateus/rosbuild_ws/cam/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amateus/rosbuild_ws/cam /home/amateus/rosbuild_ws/cam /home/amateus/rosbuild_ws/cam/build /home/amateus/rosbuild_ws/cam/build /home/amateus/rosbuild_ws/cam/build/CMakeFiles/p3p.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/p3p.dir/depend
