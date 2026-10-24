# @file CMakeLists.txt
# @brief Build the builtin_interfaces native ROS integration from the canonical SDK layout.
# @details Original ROS packages supply type support; SDK headers and definitions
# remain in their public include and share roots. Configuration grants no ROS rights.
cmake_minimum_required(VERSION 3.20)

project(builtin_interfaces)

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
# Depend on "core" generators instead of "default" generators
# because ROS actions depend on this package
find_package(rosidl_core_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "${UWVM_RMW_SHARE_DIR}/default_control/original/builtin_interfaces:msg/Duration.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/builtin_interfaces:msg/Time.msg"
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_core_runtime)

ament_package()
