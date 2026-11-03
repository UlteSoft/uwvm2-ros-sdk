/* SPDX-License-Identifier: Apache-2.0 */
/**
 * @file parameter_bool.h
 * @brief Explicit single-bool migration calls for abb ROS 2 Wasm clients.
 *
 * This bounded migration facade uses uwvm_ros2_v1 in guest memory zero.
 * The caller supplies separately granted parameter_get / parameter_set handles
 * for one exact remote node, name, bool-v1 type and finite host deadline.
 * Handles remain owned by the originating runtime instance; this facade opens,
 * copies, closes and transfers no authority. Keep the output byte live until
 * get returns and serialize calls on a shared owner. No callback, allocation,
 * hidden worker, retry, rollback or timeout override is introduced.
 *
 * Official semantic baseline: ros2/rcl_interfaces commit
 * 7aa3caf43377ea6ad615bc1040832e2c7566bfbe, GetParameters.srv,
 * SetParameters.srv, ParameterValue.msg and ParameterType.msg (BOOL = 1).
 * The official services support lists, variant values and per-item results.
 * This facade deliberately exposes one pregranted bool: one canonical 0/1
 * response byte for get, one 0/1 request byte and an empty response for set.
 * It is a migration contract, not an rcl/rclcpp API or native pointer ABI.
 * Other types, batches, dynamic declaration/deletion and callbacks remain
 * separate missing interfaces; no support is inferred from this header.
 */
#ifndef UWVM_PLATFORM_ABB_TRANSPLATE_ROS2_C_PARAMETER_BOOL_H
#define UWVM_PLATFORM_ABB_TRANSPLATE_ROS2_C_PARAMETER_BOOL_H
#include <platform/ros2/c/roswasm/abi/ros2.h>

/**
 * Read one bool once and commit *output only after exact canonical validation.
 * @param handle Live instance-owned alias with parameter_get permission.
 * @param output Caller-owned writable byte; unchanged on every returned error.
 * @return Actual import errno, or UWVM_ROS_INVALID for null output or malformed
 * success framing. Errors including timeout never authorize automatic replay.
 */
ROSWASM_C_INLINE uwvm_ros_u32
uwvm_abb_ros2_parameter_bool_get(uwvm_ros_u64 handle, unsigned char* output)
{
    unsigned char response[8] = {255,255,255,255,255,255,255,255};
    unsigned char used[8] = {255,255,255,255,255,255,255,255};
    uwvm_ros_u32 error;
    if(!output) { return UWVM_ROS_INVALID; }
    error = uwvm_ros2_parameter_get(handle, 0, 0, 0,
        uwvm_ros_address(response), sizeof response, uwvm_ros_address(used));
    if(error != UWVM_ROS_SUCCESS) { return error; }
    if(uwvm_ros_load_u64(used) != 1 || response[0] > 1)
    {
        return UWVM_ROS_INVALID;
    }
    *output = response[0];
    return UWVM_ROS_SUCCESS;
}

/**
 * Set one bool once; value must be exactly 0 or 1 before any import is called.
 * @param handle Live instance-owned alias with parameter_set permission.
 * @param value Canonical boolean, validated before narrowing to one byte.
 * @return Actual import errno, or UWVM_ROS_INVALID for noncanonical input or a
 * nonempty/missing success length. A remote rejection remains an error and may
 * not imply that replay is safe. The caller retains handle ownership.
 */
ROSWASM_C_INLINE uwvm_ros_u32
uwvm_abb_ros2_parameter_bool_set(uwvm_ros_u64 handle, uwvm_ros_u32 value)
{
    unsigned char request;
    unsigned char response[8] = {255,255,255,255,255,255,255,255};
    unsigned char used[8] = {255,255,255,255,255,255,255,255};
    uwvm_ros_u32 error;
    if(value > 1) { return UWVM_ROS_INVALID; }
    request = (unsigned char)value;
    error = uwvm_ros2_parameter_set(handle, 0, uwvm_ros_address(&request), 1,
        uwvm_ros_address(response), sizeof response, uwvm_ros_address(used));
    if(error != UWVM_ROS_SUCCESS) { return error; }
    if(uwvm_ros_load_u64(used) != 0) { return UWVM_ROS_INVALID; }
    return UWVM_ROS_SUCCESS;
}
#endif
