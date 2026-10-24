# @file CMakeLists.txt
# @brief Build the logging native ROS integration from the canonical SDK layout.
# @details Original ROS packages supply type support; SDK headers and definitions
# remain in their public include and share roots. Configuration grants no ROS rights.
cmake_minimum_required(VERSION 3.20)
project(rcl_logging_uwvm LANGUAGES C)
include("${CMAKE_CURRENT_LIST_DIR}/../../../../../../../tools/platform/ros/cmake/SdkLayout.cmake")
find_package(ament_cmake REQUIRED)
find_package(rcutils REQUIRED)
find_package(rcl_logging_interface REQUIRED)
find_package(uwvm_rmw_platform REQUIRED)
if(BUILD_SHARED_LIBS)
  message(FATAL_ERROR "Only a static rcl_logging_uwvm backend is admitted")
endif()
add_library(rcl_logging_uwvm STATIC ../src/rcl_logging.c)
uwvm_ros_rmw_target_headers(rcl_logging_uwvm)
target_compile_features(rcl_logging_uwvm PRIVATE c_std_11)
target_link_libraries(rcl_logging_uwvm PUBLIC
  rcl_logging_interface::rcl_logging_interface
  uwvm_rmw_platform::uwvm_rmw_platform rcutils::rcutils)
install(TARGETS rcl_logging_uwvm EXPORT rcl_logging_uwvm ARCHIVE DESTINATION lib)
ament_export_targets(rcl_logging_uwvm HAS_LIBRARY_TARGET)
ament_export_dependencies(rcl_logging_interface uwvm_rmw_platform rcutils)
ament_package()
