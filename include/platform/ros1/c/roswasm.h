/**
 * @file roswasm.h
 * @brief Public ROS1 capability and resource API with the explicitly selected backend.
 * @details Include this header through <ros1/c/roswasm.h>. Source selection
 * resolves only the ROS1 ABI namespace; it neither creates a native ROS
 * node nor grants an alias. Caller-owned buffers and handles retain the full
 * ownership, canonical wire and bounded error contracts of the included API.
 */
#ifndef UWVM_PUBLIC_ROS1_C_ROSWASM_H
#define UWVM_PUBLIC_ROS1_C_ROSWASM_H
#include <platform/ros1/c/roswasm/ros1.h>
#endif
