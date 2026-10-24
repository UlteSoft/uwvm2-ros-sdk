/**
 * @file abi.h
 * @brief Public ROS2 complete raw numeric import and pointer/count API.
 * @details Include this header through <ros2/c/abi.h>. Source selection
 * resolves only the ROS2 ABI namespace; it neither creates a native ROS
 * node nor grants an alias. Caller-owned buffers and handles retain the full
 * ownership, canonical wire and bounded error contracts of the included API.
 */
#ifndef UWVM_PUBLIC_ROS2_C_ABI_H
#define UWVM_PUBLIC_ROS2_C_ABI_H
#include <platform/ros2/c/roswasm/abi/ros2.h>
#endif
