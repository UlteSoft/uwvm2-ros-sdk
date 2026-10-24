# @file CMakeLists.txt
# @brief Regenerate the two complete original NVIDIA interfaces with official ROSIDL.
# @details This interface-only target keeps the original package.xml and .msg
# bytes. It does not build a detector, negotiate NITROS or request a GPU.
cmake_minimum_required(VERSION 3.22.1)
project(isaac_ros_apriltag_interfaces LANGUAGES C CXX)
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(std_msgs REQUIRED)
rosidl_generate_interfaces(${PROJECT_NAME}
    "msg/AprilTagDetection.msg"
    "msg/AprilTagDetectionArray.msg"
    DEPENDENCIES geometry_msgs std_msgs)
ament_export_dependencies(rosidl_default_runtime)
ament_package()
