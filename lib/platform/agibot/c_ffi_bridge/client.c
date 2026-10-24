/* SPDX-License-Identifier: Apache-2.0 */
/** @file client.c
 * @brief Adapt borrowed FFI spans to the shared in-guest Agibot transport.
 * @details No native transport, global connection or persistent allocation is
 * introduced. Every opened capability is retired by the shared implementation.
 */
#include <agibot/c_ffi_bridge/client.h>
#include <agibot/shared/client.h>
#include <stddef.h>
#include <string.h>

#if !defined(__wasm32__)
# error "This Agibot FFI bridge requires wasm32 guest pointers."
#endif

/** @brief Compare half-open ranges without overflowing an endpoint address. */
static int overlaps(void const* left, size_t left_bytes, void const* right, size_t right_bytes)
{
    uintptr_t a = (uintptr_t)left;
    uintptr_t b = (uintptr_t)right;
    return a <= b ? b - a < left_bytes : a - b < right_bytes;
}

/** @brief Validate the FFI boundary before consuming any ROS capability. */
static uint32_t observe(uint8_t const* alias,
                        uint32_t alias_bytes,
                        enum uwvm_agibot_observation operation,
                        uint32_t timeout_ms,
                        uint8_t* output,
                        uint32_t capacity,
                        uint32_t* output_bytes,
                        uint32_t* cleanup_error)
{
    if(!alias || !output || !output_bytes || !cleanup_error || alias_bytes == 0 || alias_bytes > 255 || capacity == 0 ||
       overlaps(output, capacity, output_bytes, sizeof(*output_bytes)) || overlaps(output, capacity, cleanup_error, sizeof(*cleanup_error)) ||
       overlaps(output_bytes, sizeof(*output_bytes), cleanup_error, sizeof(*cleanup_error)))
    {
        return 22;
    }
    char name[256];
    memcpy(name, alias, alias_bytes);
    name[alias_bytes] = '\0';
    *output_bytes = 0;
    *cleanup_error = 0;
    if(memchr(name, '\0', alias_bytes))
    {
        return 22;
    }
    size_t received = 0;
    uint32_t error = uwvm_agibot_observe(name, operation, timeout_ms, output, capacity, &received, cleanup_error);
    if(!error)
    {
        if(received > capacity)
        {
            return 90;
        }
        *output_bytes = (uint32_t)received;
    }
    return error;
}

uint32_t agibot_ffi_query_mode(uint8_t const* alias,
                               uint32_t alias_bytes,
                               uint8_t* output,
                               uint32_t output_capacity,
                               uint32_t* output_bytes,
                               uint32_t* cleanup_error)
{
    return observe(alias, alias_bytes, UWVM_AGIBOT_GET_MC_ACTION, 3000, output, output_capacity, output_bytes, cleanup_error);
}

uint32_t agibot_ffi_next_motion_state(uint8_t const* alias,
                                      uint32_t alias_bytes,
                                      uint32_t timeout_ms,
                                      uint8_t* output,
                                      uint32_t output_capacity,
                                      uint32_t* output_bytes,
                                      uint32_t* cleanup_error)
{
    return observe(alias, alias_bytes, UWVM_AGIBOT_MC_COMMON_STATE, timeout_ms, output, output_capacity, output_bytes, cleanup_error);
}

uint32_t agibot_ffi_list_resources(uint8_t const* alias,
                                   uint32_t alias_bytes,
                                   uint8_t* output,
                                   uint32_t output_capacity,
                                   uint32_t* output_bytes,
                                   uint32_t* cleanup_error)
{
    return observe(alias, alias_bytes, UWVM_AGIBOT_GET_ROBOT_RESOURCES, 3000, output, output_capacity, output_bytes, cleanup_error);
}
