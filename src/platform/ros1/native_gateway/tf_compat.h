/**
 * @file tf_compat.h
 * @brief Native ROS 1 tf compat implementation for the bounded gateway.
 * @details This maintained adapter uses the selected original ROS SDK and the
 * shared uwvm2 IPC contracts. Native type metadata and explicit trusted policy
 * remain authoritative; this file grants no guest rights. It is compiled as
 * infrastructure, independently from all guest source languages.
 */
/*************************************************************
 * UWVM2 ROS1 tf2 SDK feature compatibility. APL-2.0.        *
 *************************************************************/
#pragma once
#include <tf2_ros/buffer.h>

namespace uwvm2::ros_gateway::ros1_compat
{
    // Groovy's public tf2_ros/buffer.h declares tf2::Buffer; Hydro and later
    // declare tf2_ros::Buffer. CMake compiles and links both candidate spellings
    // against the selected SDK, without executing a target program. A direct
    // modern-SDK build retains its historical tf2_ros spelling by default;
    // a legacy direct build must carry the same proven feature definition.
#if defined(UWVM_ROS1_TF_BUFFER_IN_TF2) && UWVM_ROS1_TF_BUFFER_IN_TF2
    using tf_buffer = ::tf2::Buffer;
#else
    using tf_buffer = ::tf2_ros::Buffer;
#endif
}  // namespace uwvm2::ros_gateway::ros1_compat
