/**
 * @file roswasm.h
 * @brief Public ROS2 capability and resource API with the explicitly selected backend.
 * @details Include this header through <ros2/c/roswasm.h>. Source selection
 * resolves only the ROS2 ABI namespace; it neither creates a native ROS
 * node nor grants an alias. Caller-owned buffers and handles retain the full
 * ownership, canonical wire and bounded error contracts of the included API.
 */
#ifndef UWVM_PUBLIC_ROS2_C_ROSWASM_H
#define UWVM_PUBLIC_ROS2_C_ROSWASM_H
#include <platform/ros2/c/roswasm/ros2.h>
#endif
