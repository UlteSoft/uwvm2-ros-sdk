/**
 * @file main.cpp
 * @brief Execute the complete native ros2 observation with a C++ owner.
 * @details Original responses and errors are observed at execution time. The
 * sole Wasm needs a manually configured runtime and native ROS deployment.
 */
#include <ros2/cpp/roswasm.hpp>
#include <ros/cpp/native_command.hpp>

/** @brief Close every normally acquired owner before terminating the command. */
extern "C" void _start(void)
{
    if(uwvm_ros2_abi_version() != 1)
    {
        uwvm_ros_command_exit(UWVM_ROS_UNSUPPORTED);
    }
    uwvm_ros_command_exit(uwvm_ros_cpp_native_run<uwvm_ros2::freestanding_capability>(2));
}
