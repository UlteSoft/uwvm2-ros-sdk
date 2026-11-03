/**
 * @file wasi_time.c
 * @brief RCUtils clock backend for the single-thread Wasm Preview 1 component.
 * @details Calls the VM's standard WASI clock import. It never reads a host
 * clock through Python, native ROS, a process, a socket or a filesystem tunnel.
 * Denial leaves the caller's output unchanged and preserves an error state.
 * ROS /clock synchronization is a separate explicitly granted transport path.
 */
#include <rcutils/time.h>
#include <rcutils/error_handling.h>
#include <stdint.h>
#include <wasi/api.h>
#if !defined(__wasm__)
#error "The RCUtils clock backend must execute as Wasm"
#endif
static rcutils_ret_t
read_clock(__wasi_clockid_t id, rcutils_time_point_value_t * output)
{
    if (output == NULL) {
        RCUTILS_SET_ERROR_MSG("clock output is null");
        return RCUTILS_RET_INVALID_ARGUMENT;
    }
    __wasi_timestamp_t value = 0;
    __wasi_errno_t result = __wasi_clock_time_get(id, 1, &value);
    if (result != 0 || value > (uint64_t)INT64_MAX) {
        RCUTILS_SET_ERROR_MSG("Wasm clock import denied, failed or exceeded signed time range");
        return RCUTILS_RET_ERROR;
    }
    *output = (rcutils_time_point_value_t)value;
    return RCUTILS_RET_OK;
}
/** @brief Read explicitly permitted realtime through WASI, without retry. */
rcutils_ret_t rcutils_system_time_now(rcutils_time_point_value_t * output)
{
    return read_clock(__WASI_CLOCKID_REALTIME, output);
}
/** @brief Read explicitly permitted monotonic time through WASI, without retry. */
rcutils_ret_t rcutils_steady_time_now(rcutils_time_point_value_t * output)
{
    return read_clock(__WASI_CLOCKID_MONOTONIC, output);
}
