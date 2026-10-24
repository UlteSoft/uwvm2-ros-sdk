# @file CMakeLists.txt
# @brief Build the cmake native ROS integration from the canonical SDK layout.
# @details Original ROS packages supply type support; SDK headers and definitions
# remain in their public include and share roots. Configuration grants no ROS rights.
cmake_minimum_required(VERSION 3.20)
# The native RMW sources remain alongside this package. Public headers resolve
# through the canonical SDK layout and original ROS types come from packages.
project(rmw_uwvm LANGUAGES C CXX)
include("${CMAKE_CURRENT_LIST_DIR}/../../../../../../tools/platform/ros/cmake/SdkLayout.cmake")
find_package(ament_cmake REQUIRED)
find_package(rmw REQUIRED)
find_package(rcutils REQUIRED)
find_package(rosidl_runtime_c REQUIRED)
find_package(std_msgs REQUIRED)
find_package(rosidl_typesupport_introspection_c REQUIRED)
find_package(rosidl_typesupport_introspection_cpp REQUIRED)
find_package(uwvm_rmw_platform REQUIRED)
option(UWVM_RMW_ENABLE_THREADED_PROFILE "Actual shared dispatch, pinned wait and deferred retirement" OFF)
get_target_property(_platform_flags uwvm_rmw_platform::uwvm_rmw_platform INTERFACE_COMPILE_DEFINITIONS)
if(UWVM_RMW_ENABLE_THREADED_PROFILE)
  find_package(uwvm_rmw_dispatch REQUIRED)
  if(NOT "UWVM_RMW_PLATFORM_THREADED=1" IN_LIST _platform_flags)
    message(FATAL_ERROR "Threaded RMW requires the same actual threaded platform; no mixed Session gate")
  endif()
elseif("UWVM_RMW_PLATFORM_THREADED=1" IN_LIST _platform_flags)
  message(FATAL_ERROR "A threaded platform requires explicitly selecting the threaded RMW core too")
endif()
if(BUILD_SHARED_LIBS)
  message(FATAL_ERROR "Only static rmw_uwvm is supported")
endif()
set(_sources context selection node publisher string_codec guard wait subscription service metadata)
foreach(_name IN LISTS _sources)
  if(NOT EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/../src/${_name}.c")
    message(FATAL_ERROR "Missing real reviewed RMW source ${_name}.c; no fallback/stub source is generated")
  endif()
  list(APPEND _files "${CMAKE_CURRENT_SOURCE_DIR}/../src/${_name}.c")
endforeach()
add_library(rmw_uwvm STATIC ${_files})
uwvm_ros_rmw_target_headers(rmw_uwvm)
target_compile_features(rmw_uwvm PUBLIC c_std_11)
if(UWVM_RMW_ENABLE_THREADED_PROFILE)
  target_link_libraries(rmw_uwvm PUBLIC uwvm_rmw_dispatch::uwvm_rmw_dispatch)
  target_sources(rmw_uwvm PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../src/threaded_diagnostics.c")
endif()

target_link_libraries(rmw_uwvm PUBLIC rmw::rmw rcutils::rcutils rosidl_runtime_c::rosidl_runtime_c
  rosidl_typesupport_introspection_c::rosidl_typesupport_introspection_c
  uwvm_rmw_platform::uwvm_rmw_platform
  std_msgs::std_msgs__rosidl_generator_c
  std_msgs::std_msgs__rosidl_typesupport_introspection_c
  std_msgs::std_msgs__rosidl_typesupport_c)
install(TARGETS rmw_uwvm EXPORT rmw_uwvm ARCHIVE DESTINATION lib)

uwvm_ros_rmw_install_headers()
register_rmw_implementation("c:rosidl_typesupport_introspection_c" "cpp:rosidl_typesupport_introspection_cpp")
ament_export_targets(rmw_uwvm HAS_LIBRARY_TARGET)
ament_export_dependencies(rmw rcutils rosidl_runtime_c std_msgs rosidl_typesupport_introspection_c rosidl_typesupport_introspection_cpp uwvm_rmw_platform)
if(UWVM_RMW_ENABLE_THREADED_PROFILE)
  ament_export_dependencies(uwvm_rmw_dispatch)
endif()
ament_package()
