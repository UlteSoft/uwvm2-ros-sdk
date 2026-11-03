/* SPDX-License-Identifier: Apache-2.0 */
/**
 * @file parameter_bool_callback.h
 * @brief Inline query-completion and set-acknowledgement callbacks in one Wasm.
 *
 * These are synchronous migration helpers over uwvm_ros2_v1. They do not
 * subscribe to ParameterEvent, emulate an executor or implement the official
 * asynchronous client/future API. The original single-bool get/set permissions,
 * finite deadline, canonical framing and instance ownership remain mandatory.
 *
 * The callback and borrowed userdata must stay valid until this call returns.
 * Userdata may be null if the callback accepts null. Function pointers and
 * userdata stay in this Wasm instance; they are not copied to another component
 * or to the host. Serialize concurrent mutation of shared application state.
 * Callback code may use or close its own handles: this helper does not access
 * the handle after the callback returns. It opens or duplicates no authority.
 *
 * A callback runs exactly once after a validated success and never on any
 * import, timeout, stale/foreign handle or framing error. It returns void, so
 * application callback outcomes need their own application result storage.
 * There are no hidden threads, retries, cancellation or rollback.
 */
#ifndef UWVM_PLATFORM_ABB_TRANSPLATE_ROS2_C_PARAMETER_BOOL_CALLBACK_H
#define UWVM_PLATFORM_ABB_TRANSPLATE_ROS2_C_PARAMETER_BOOL_CALLBACK_H
#include <platform/abb/transplate/ros2/c/parameter_bool.h>

/** Actual queried canonical bool copied to a caller-owned local callback. */
typedef void (*uwvm_abb_ros2_parameter_bool_value_callback)(void* userdata, unsigned char value);
/** Successful set acknowledgement only; it conveys no observed remote value.
 * Query again when fresh remote state is required. */
typedef void (*uwvm_abb_ros2_parameter_bool_set_callback)(void* userdata);

/** Query once; null callback is rejected before any import. The callback sees
 * only the value returned by the validated query, never a cached request. */
ROSWASM_C_INLINE uwvm_ros_u32
uwvm_abb_ros2_parameter_bool_get_with_callback(
    uwvm_ros_u64 handle,
    uwvm_abb_ros2_parameter_bool_value_callback callback,
    void* userdata)
{
    unsigned char value = 0xa5;
    uwvm_ros_u32 error;
    if(!callback) { return UWVM_ROS_INVALID; }
    error = uwvm_abb_ros2_parameter_bool_get(handle, &value);
    if(error != UWVM_ROS_SUCCESS) { return error; }
    callback(userdata, value);
    return UWVM_ROS_SUCCESS;
}

/** Set once; callback is an acknowledgement after exact empty success framing.
 * Rejected input or failed/uncertain native set never calls the callback.
 * This helper never represents the requested value as observed ROS feedback. */
ROSWASM_C_INLINE uwvm_ros_u32
uwvm_abb_ros2_parameter_bool_set_with_callback(
    uwvm_ros_u64 handle,
    uwvm_ros_u32 value,
    uwvm_abb_ros2_parameter_bool_set_callback callback,
    void* userdata)
{
    uwvm_ros_u32 error;
    if(!callback) { return UWVM_ROS_INVALID; }
    error = uwvm_abb_ros2_parameter_bool_set(handle, value);
    if(error != UWVM_ROS_SUCCESS) { return error; }
    callback(userdata);
    return UWVM_ROS_SUCCESS;
}
#endif
