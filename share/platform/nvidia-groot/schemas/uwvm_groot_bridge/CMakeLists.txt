cmake_minimum_required(VERSION 3.16)
project(uwvm_groot_bridge LANGUAGES C CXX)
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/RGBFrame.msg" "msg/FloatTensor.msg" "msg/TextSequence.msg"
  "msg/RGBDescriptor.msg" "srv/InferAction.srv"
  "srv/BeginObservation.srv" "srv/WriteRGBChunk.srv"
  "srv/ReleaseObservation.srv" "srv/InferUploadedAction.srv")
ament_export_dependencies(rosidl_default_runtime)
ament_package()

# Public language imports are resolved from the installed global SDK roots.
if(DEFINED UWVM_SDK_ROOT)
  include_directories("${UWVM_SDK_ROOT}/include/platform")
endif()
