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

# Utility rule file for ROSBUILD_genmsg_py.

# Include the progress variables for this target.
include CMakeFiles/ROSBUILD_genmsg_py.dir/progress.make

CMakeFiles/ROSBUILD_genmsg_py: ../src/cam/msg/__init__.py

../src/cam/msg/__init__.py: ../src/cam/msg/_detections.py
../src/cam/msg/__init__.py: ../src/cam/msg/_QuadPose.py
../src/cam/msg/__init__.py: ../src/cam/msg/_QuadPoseList.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/amateus/rosbuild_ws/cam/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../src/cam/msg/__init__.py"
	/opt/ros/hydro/share/rospy/rosbuild/scripts/genmsg_py.py --initpy /home/amateus/rosbuild_ws/cam/msg/detections.msg /home/amateus/rosbuild_ws/cam/msg/QuadPose.msg /home/amateus/rosbuild_ws/cam/msg/QuadPoseList.msg

../src/cam/msg/_detections.py: ../msg/detections.msg
../src/cam/msg/_detections.py: /opt/ros/hydro/share/rospy/rosbuild/scripts/genmsg_py.py
../src/cam/msg/_detections.py: /opt/ros/hydro/share/roslib/cmake/../../../lib/roslib/gendeps
../src/cam/msg/_detections.py: /opt/ros/hydro/share/std_msgs/msg/Header.msg
../src/cam/msg/_detections.py: ../manifest.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/catkin/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/console_bridge/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/cpp_common/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/genmsg/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/gencpp/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/genlisp/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/genpy/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/message_generation/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/rostime/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/roscpp_traits/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/roscpp_serialization/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/message_runtime/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/rosbuild/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/rosconsole/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/std_msgs/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/rosgraph_msgs/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/xmlrpcpp/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/roscpp/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/message_filters/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/class_loader/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/rospack/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/roslib/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/pluginlib/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/geometry_msgs/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/sensor_msgs/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/image_transport/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/diagnostic_msgs/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/diagnostic_updater/package.xml
../src/cam/msg/_detections.py: /opt/ros/hydro/share/self_test/package.xml
../src/cam/msg/_detections.py: /home/amateus/rosbuild_ws/quad_msgs/manifest.xml
../src/cam/msg/_detections.py: /home/amateus/rosbuild_ws/quad_msgs/msg_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/amateus/rosbuild_ws/cam/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../src/cam/msg/_detections.py"
	/opt/ros/hydro/share/rospy/rosbuild/scripts/genmsg_py.py --noinitpy /home/amateus/rosbuild_ws/cam/msg/detections.msg

../src/cam/msg/_QuadPose.py: ../msg/QuadPose.msg
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/rospy/rosbuild/scripts/genmsg_py.py
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/roslib/cmake/../../../lib/roslib/gendeps
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/geometry_msgs/msg/Quaternion.msg
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/geometry_msgs/msg/Point.msg
../src/cam/msg/_QuadPose.py: ../manifest.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/catkin/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/console_bridge/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/cpp_common/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/genmsg/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/gencpp/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/genlisp/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/genpy/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/message_generation/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/rostime/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/roscpp_traits/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/roscpp_serialization/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/message_runtime/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/rosbuild/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/rosconsole/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/std_msgs/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/rosgraph_msgs/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/xmlrpcpp/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/roscpp/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/message_filters/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/class_loader/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/rospack/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/roslib/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/pluginlib/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/geometry_msgs/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/sensor_msgs/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/image_transport/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/diagnostic_msgs/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/diagnostic_updater/package.xml
../src/cam/msg/_QuadPose.py: /opt/ros/hydro/share/self_test/package.xml
../src/cam/msg/_QuadPose.py: /home/amateus/rosbuild_ws/quad_msgs/manifest.xml
../src/cam/msg/_QuadPose.py: /home/amateus/rosbuild_ws/quad_msgs/msg_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/amateus/rosbuild_ws/cam/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../src/cam/msg/_QuadPose.py"
	/opt/ros/hydro/share/rospy/rosbuild/scripts/genmsg_py.py --noinitpy /home/amateus/rosbuild_ws/cam/msg/QuadPose.msg

../src/cam/msg/_QuadPoseList.py: ../msg/QuadPoseList.msg
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/rospy/rosbuild/scripts/genmsg_py.py
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/roslib/cmake/../../../lib/roslib/gendeps
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/std_msgs/msg/Header.msg
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/geometry_msgs/msg/Quaternion.msg
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/geometry_msgs/msg/Point.msg
../src/cam/msg/_QuadPoseList.py: ../msg/QuadPose.msg
../src/cam/msg/_QuadPoseList.py: ../manifest.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/catkin/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/console_bridge/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/cpp_common/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/genmsg/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/gencpp/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/genlisp/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/genpy/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/message_generation/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/rostime/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/roscpp_traits/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/roscpp_serialization/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/message_runtime/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/rosbuild/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/rosconsole/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/std_msgs/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/rosgraph_msgs/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/xmlrpcpp/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/roscpp/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/message_filters/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/class_loader/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/rospack/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/roslib/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/pluginlib/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/geometry_msgs/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/sensor_msgs/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/image_transport/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/diagnostic_msgs/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/diagnostic_updater/package.xml
../src/cam/msg/_QuadPoseList.py: /opt/ros/hydro/share/self_test/package.xml
../src/cam/msg/_QuadPoseList.py: /home/amateus/rosbuild_ws/quad_msgs/manifest.xml
../src/cam/msg/_QuadPoseList.py: /home/amateus/rosbuild_ws/quad_msgs/msg_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/amateus/rosbuild_ws/cam/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../src/cam/msg/_QuadPoseList.py"
	/opt/ros/hydro/share/rospy/rosbuild/scripts/genmsg_py.py --noinitpy /home/amateus/rosbuild_ws/cam/msg/QuadPoseList.msg

ROSBUILD_genmsg_py: CMakeFiles/ROSBUILD_genmsg_py
ROSBUILD_genmsg_py: ../src/cam/msg/__init__.py
ROSBUILD_genmsg_py: ../src/cam/msg/_detections.py
ROSBUILD_genmsg_py: ../src/cam/msg/_QuadPose.py
ROSBUILD_genmsg_py: ../src/cam/msg/_QuadPoseList.py
ROSBUILD_genmsg_py: CMakeFiles/ROSBUILD_genmsg_py.dir/build.make
.PHONY : ROSBUILD_genmsg_py

# Rule to build all files generated by this target.
CMakeFiles/ROSBUILD_genmsg_py.dir/build: ROSBUILD_genmsg_py
.PHONY : CMakeFiles/ROSBUILD_genmsg_py.dir/build

CMakeFiles/ROSBUILD_genmsg_py.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ROSBUILD_genmsg_py.dir/clean

CMakeFiles/ROSBUILD_genmsg_py.dir/depend:
	cd /home/amateus/rosbuild_ws/cam/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amateus/rosbuild_ws/cam /home/amateus/rosbuild_ws/cam /home/amateus/rosbuild_ws/cam/build /home/amateus/rosbuild_ws/cam/build /home/amateus/rosbuild_ws/cam/build/CMakeFiles/ROSBUILD_genmsg_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ROSBUILD_genmsg_py.dir/depend
