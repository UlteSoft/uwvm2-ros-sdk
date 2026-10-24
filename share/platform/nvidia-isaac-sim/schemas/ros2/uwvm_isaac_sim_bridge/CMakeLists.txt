cmake_minimum_required(VERSION 3.16)
project(uwvm_isaac_sim_bridge LANGUAGES C CXX)
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/ClockEvent.msg"
  "srv/ClockControl.srv")
ament_export_dependencies(rosidl_default_runtime)
ament_package()

# Public language imports are resolved from the installed global SDK roots.
if(DEFINED UWVM_SDK_ROOT)
  include_directories("${UWVM_SDK_ROOT}/include/platform")
endif()
