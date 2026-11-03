/**
 * @file clock_bridge.c
 * @brief VM ROS import to real rcl_set_ros_time_override in executing Wasm.
 */
#include <platform/ros/transplate/ros2/rcl/v9_2_11/clock_bridge.h>
#include <platform/ros/transplate/v0_1_0/transport.h>
#include <stdint.h>
#if !defined(__wasm__)
#error "The ROS clock bridge must execute as Wasm"
#endif
static uint64_t read_le64(unsigned char const * data)
{
    uint64_t value = 0;
    for (unsigned int i = 0; i != 8; ++i) value |= (uint64_t)data[i] << (8u * i);
    return value;
}
uint32_t uwvm_rcl_9_2_11_clock_refresh(
    rcl_clock_t * clock, uint64_t handle, uwvm_rcl_9_2_11_clock_receipt * receipt)
{
    if (receipt == NULL) return 22;
    receipt->transport_status = 22;
    receipt->rcl_status = RCL_RET_ERROR;
    receipt->nanoseconds = 0;
    receipt->callback_dispatch_completed = 0;
    if (clock == NULL || !rcl_clock_valid(clock) || clock->type != RCL_ROS_TIME || handle == 0) return 22;
    unsigned char output[8] = {0};
    unsigned char length[8] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
    uint32_t status = uwvm_transplate_v0_1_0_ros2_time_read_ros(handle, 0, 0, 0,
        uwvm_transplate_v0_1_0_address(output), 8, uwvm_transplate_v0_1_0_address(length));
    receipt->transport_status = status;
    if (status != 0) return status;
    uint64_t value = read_le64(output);
    if (read_le64(length) != 8 || value > (uint64_t)INT64_MAX / 4) {
        receipt->transport_status = 22;
        return 22;
    }
    bool enabled = false;
    rcl_ret_t result = rcl_is_enabled_ros_time_override(clock, &enabled);
    if (result == RCL_RET_OK && enabled) {
        rcl_time_point_value_t previous = 0;
        result = rcl_clock_get_now(clock, &previous);
        if (result == RCL_RET_OK && (previous < 0 || (uint64_t)previous > (uint64_t)INT64_MAX / 4)) {
            receipt->transport_status = 22;
            return 22;
        }
    }
    if (result == RCL_RET_OK && !enabled) result = rcl_enable_ros_time_override(clock);
    if (result == RCL_RET_OK) result = rcl_set_ros_time_override(clock, (rcl_time_point_value_t)value);
    receipt->rcl_status = result;
    receipt->nanoseconds = value;
    receipt->callback_dispatch_completed = result == RCL_RET_OK;
    return 0;
}
