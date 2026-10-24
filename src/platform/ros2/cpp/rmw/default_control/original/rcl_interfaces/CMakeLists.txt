# @file CMakeLists.txt
# @brief Build the rcl_interfaces native ROS integration from the canonical SDK layout.
# @details Original ROS packages supply type support; SDK headers and definitions
# remain in their public include and share roots. Configuration grants no ROS rights.
cmake_minimum_required(VERSION 3.20)

project(rcl_interfaces)

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
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/FloatingPointRange.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/IntegerRange.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/ListParametersResult.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/Log.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/ParameterDescriptor.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/ParameterEventDescriptors.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/ParameterEvent.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/Parameter.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/ParameterType.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/ParameterValue.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/SetParametersResult.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/LoggerLevel.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:msg/SetLoggerLevelsResult.msg"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:srv/DescribeParameters.srv"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:srv/GetParameters.srv"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:srv/GetParameterTypes.srv"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:srv/ListParameters.srv"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:srv/SetParametersAtomically.srv"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:srv/SetParameters.srv"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:srv/GetLoggerLevels.srv"
  "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces:srv/SetLoggerLevels.srv"
  DEPENDENCIES builtin_interfaces
)

install(FILES "${UWVM_RMW_SHARE_DIR}/default_control/original/rcl_interfaces/mapping_rules.yaml" DESTINATION share/${PROJECT_NAME})

# this must happen before the invocation of ament_package()
if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
