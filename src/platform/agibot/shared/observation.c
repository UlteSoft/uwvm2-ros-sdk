/* SPDX-License-Identifier: Apache-2.0 */
/** @file observation.c
 * @brief Wasm-only transport using the existing audited ROS 2 imports.
 */
#if !defined(__wasm__)
# error "Agibot observation transport must be compiled into a Wasm guest"
#endif
#define _POSIX_C_SOURCE 200809L
#include <agibot/shared/client.h>
#include <ros2/c/roswasm/detail/ros2/abi.h>
#include <string.h>
#include <wasi/api.h>

/** @brief Convert a guest pointer to the ABI's full-width memory-zero offset. */
static uwvm_ros_u64 offset(void const* pointer)
{
    return (uwvm_ros_u64)(uintptr_t)pointer;
}

/** @brief Reject overlapping caller buffers without overflowing end addresses. */
static int overlaps(void const* a, size_t an, void const* b, size_t bn)
{
    uintptr_t ap = (uintptr_t)a;
    uintptr_t bp = (uintptr_t)b;
    return ap <= bp ? bp - ap < an : ap - bp < bn;
}

/** @brief Read a monotonic millisecond value; clock errors remain explicit. */
static uint32_t milliseconds(uint64_t* result)
{
    __wasi_timestamp_t value = 0;
    __wasi_errno_t error = __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 0, &value);
    if(error != 0)
    {
        return error;
    }
    *result = value / UINT64_C(1000000);
    return 0;
}

/** @brief Wait one millisecond using only the explicitly granted monotonic clock.
 * @return Original WASI poll/event errno, 22 for an invalid event, or zero.
 * @details WASI libc nanosleep may select the realtime clock. An observation
 * deadline must not acquire wall-clock authority merely to wait between polls.
 */
static uint32_t pause_monotonic(void)
{
    __wasi_subscription_t subscription;
    __wasi_event_t event;
    __wasi_size_t received = 0;
    memset(&subscription, 0, sizeof subscription);
    memset(&event, 0, sizeof event);
    subscription.u.tag = __WASI_EVENTTYPE_CLOCK;
    subscription.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
    subscription.u.u.clock.timeout = UINT64_C(1000000);
    __wasi_errno_t error = __wasi_poll_oneoff(&subscription, &event, 1, &received);
    if(error != 0)
    {
        return error;
    }
    if(received != 1 || event.type != __WASI_EVENTTYPE_CLOCK)
    {
        return 22;
    }
    return event.error;
}

uint32_t uwvm_agibot_observe_raw(char const* alias,
                                 enum uwvm_agibot_observation observation,
                                 uint32_t timeout_ms,
                                 unsigned char* output,
                                 size_t capacity,
                                 size_t* length,
                                 uint32_t* cleanup,
                                 uint32_t* cleanup_present,
                                 uint64_t* required,
                                 uint32_t* has_required)
{
    uwvm_ros_u64 handle = 0;
    uwvm_ros_u64 received = UINT64_MAX;
    unsigned char request[8] = {0}; /* Official CommonRequest.header.stamp = zero. */
    size_t alias_size;
    uint32_t error;
    if(!alias || !output || !length || !cleanup || !cleanup_present || !required || !has_required || !capacity || capacity > 65536 || timeout_ms < 1 ||
       timeout_ms > 30000 || observation < 1 || observation > 3)
    {
        return 22;
    }
    alias_size = strnlen(alias, 256);
    if(!alias_size || alias_size > 255 || overlaps(output, capacity, alias, alias_size + 1))
    {
        return 22;
    }
    void* scalars[] = {length, cleanup, cleanup_present, required, has_required};
    size_t sizes[] = {sizeof *length, sizeof *cleanup, sizeof *cleanup_present, sizeof *required, sizeof *has_required};
    for(unsigned first = 0; first < 5; ++first)
    {
        if(overlaps(output, capacity, scalars[first], sizes[first]) || overlaps(alias, alias_size + 1, scalars[first], sizes[first]))
        {
            return 22;
        }
        for(unsigned second = first + 1; second < 5; ++second)
        {
            if(overlaps(scalars[first], sizes[first], scalars[second], sizes[second]))
            {
                return 22;
            }
        }
    }
    *length = 0;
    *cleanup = 0;
    *cleanup_present = 0;
    *required = 0;
    *has_required = 0;
    if(uwvm_ros2_abi_version() != 1)
    {
        return 95;
    }
    error = uwvm_ros2_capability_open(0, offset(alias), alias_size, offset(&handle));
    if(error)
    {
        return error;
    }
    if(observation == UWVM_AGIBOT_MC_COMMON_STATE)
    {
        uint64_t started = 0;
        error = milliseconds(&started);
        if(!error)
        {
            error = uwvm_ros2_topic_subscribe(handle);
        }
        while(!error)
        {
            uint64_t now = 0;
            received = UINT64_MAX;
            error = uwvm_ros2_event_poll(handle, 0, offset(output), capacity, offset(&received));
            if(error != 11)
            {
                break;
            }
            error = milliseconds(&now);
            if(error)
            {
                break;
            }
            if(now - started >= timeout_ms)
            {
                error = 110;
                break;
            }
            error = pause_monotonic();
            if(error != 0)
            {
                break;
            }
        }
    }
    else
    {
        error = uwvm_ros2_service_call(handle, 0, offset(request), sizeof request, offset(output), capacity, offset(&received));
    }
    *cleanup_present = 1;
    *cleanup = uwvm_ros2_capability_close(handle);
    if((error == 0 || error == 90) && received != UINT64_MAX)
    {
        *required = received;
        *has_required = 1;
    }
    if(!error && received > capacity)
    {
        error = 90;
    }
    if(!error)
    {
        *length = (size_t)received;
    }
    return error;
}

/** @brief Preserve the original combined-status API for existing C/C++ callers. */
uint32_t uwvm_agibot_observe(char const* alias,
                             enum uwvm_agibot_observation observation,
                             uint32_t timeout_ms,
                             unsigned char* output,
                             size_t capacity,
                             size_t* length,
                             uint32_t* cleanup)
{
    uint32_t cleanup_present = 0;
    uint32_t has_required = 0;
    uint64_t required = 0;
    uint32_t primary = uwvm_agibot_observe_raw(alias, observation, timeout_ms, output, capacity, length, cleanup, &cleanup_present, &required, &has_required);
    if(primary != 0)
    {
        return primary;
    }
    if(*cleanup != 0)
    {
        *length = 0;
    }
    return *cleanup;
}
