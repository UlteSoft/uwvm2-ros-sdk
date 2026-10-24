# @file CMakeLists.txt
# @brief Build the rosgraph_msgs native ROS integration from the canonical SDK layout.
# @details Original ROS packages supply type support; SDK headers and definitions
# remain in their public include and share roots. Configuration grants no ROS rights.
cmake_minimum_required(VERSION 3.20)

project(rosgraph_msgs)

include("${CMAKE_CURRENT_LIST_DIR}/../../../../../../../../tools/platform/ros/cmake/SdkLayout.cmake")
# Default to C++20
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 20)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rcl_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
  msg/Action.msg
  msg/Clock.msg
  msg/Graph.msg
  msg/InterfaceType.msg
  msg/Node.msg
  msg/QoSProfile.msg
  msg/Service.msg
  msg/Topic.msg
  msg/TypeHash.msg
)
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  DEPENDENCIES builtin_interfaces rcl_interfaces
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
