cmake_minimum_required(VERSION 3.16)
project(uwvm_spot_bridge_native)
find_package(ament_cmake REQUIRED)
find_package(ament_cmake_python REQUIRED)
find_package(uwvm_spot_bridge REQUIRED)
# Actual source install; no downloaded SDK, credential, socket, permission or
# generated message substitute is produced by configuring this project.
get_filename_component(UWVM_ROS_SDK_ROOT "${CMAKE_CURRENT_LIST_DIR}/../../../../.." ABSOLUTE)
ament_python_install_package(uwvm_mobile_manipulation PACKAGE_DIR "${UWVM_ROS_SDK_ROOT}/include/platform/ros/py/uwvm_mobile_manipulation")
ament_export_dependencies(uwvm_spot_bridge)
ament_package()
