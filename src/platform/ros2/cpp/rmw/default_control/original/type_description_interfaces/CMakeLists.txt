# @file CMakeLists.txt
# @brief Build the type_description_interfaces native ROS integration from the canonical SDK layout.
# @details Original ROS packages supply type support; SDK headers and definitions
# remain in their public include and share roots. Configuration grants no ROS rights.
cmake_minimum_required(VERSION 3.20)

project(type_description_interfaces)

include("${CMAKE_CURRENT_LIST_DIR}/../../../../../../../../tools/platform/ros/cmake/SdkLayout.cmake")
# Default to C++20
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 20)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
# Depend on "core" generators instead of "default" generators
# because other generators depend on this.
find_package(rosidl_core_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "${UWVM_RMW_SHARE_DIR}/default_control/original/type_description_interfaces:msg/Field.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/type_description_interfaces:msg/FieldType.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/type_description_interfaces:msg/IndividualTypeDescription.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/type_description_interfaces:msg/KeyValue.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/type_description_interfaces:msg/TypeDescription.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/type_description_interfaces:msg/TypeSource.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/type_description_interfaces:srv/GetTypeDescription.srv"
  ADD_LINTER_TESTS
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_export_dependencies(rosidl_core_runtime)

ament_package()
