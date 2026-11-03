/**
 * @file clock_bridge.h
 * @brief Apply a permissioned ROS time result to genuine guest RCL callbacks.
 * @details This finite source profile does not provide a ROS node, executor or
 * RMW discovery implementation. The complete original rcl/time.h is required.
 */
#ifndef UWVM_RCL_9_2_11_CLOCK_BRIDGE_H
#define UWVM_RCL_9_2_11_CLOCK_BRIDGE_H
#include <stdint.h>
#include <rcl/time.h>
#ifdef __cplusplus
extern "C" {
#endif
/** @brief Per-call result; a guest sequence is not a native audit sequence. */
typedef struct uwvm_rcl_9_2_11_clock_receipt {
    uint32_t transport_status;
    int32_t rcl_status;
    uint64_t nanoseconds;
    uint32_t callback_dispatch_completed;
} uwvm_rcl_9_2_11_clock_receipt;
/**
 * @brief Read once from an owned ROS2 time capability and run guest callbacks.
 * @param clock Initialized genuine RCL_ROS_TIME clock owned by this guest.
 * @param handle Already opened, explicitly granted ROS2 time.read.ros handle.
 * @param receipt Caller-owned result, containing no native authority.
 * @return Original transport status, or 22 for invalid/range-invalid data.
 * @details No alias or permission is created, and a failed read is never replayed.
 * Native provenance/audit and official simulator qualification remain required.
 */
uint32_t uwvm_rcl_9_2_11_clock_refresh(
    rcl_clock_t * clock, uint64_t handle, uwvm_rcl_9_2_11_clock_receipt * receipt);
#ifdef __cplusplus
}
#endif
#endif
