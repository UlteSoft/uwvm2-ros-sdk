/* SPDX-License-Identifier: Apache-2.0 */
/**
 * @file client.h
 * @brief Fixed-width extents for Agibot calls in the selected Wasm pointer ABI.
 * @details Link the bridge object into the caller's Wasm module. This is an
 * in-guest FFI, and the only external communication remains uwvm_ros2_v1.
 * Strings are borrowed UTF-8 spans, without a trailing NUL. Output is the
 * complete bounded canonical encoding of the original AimDK response. Decode
 * it with the matching 1.1.0 main codec; it is not ROS CDR or a native struct.
 * Calls are synchronous, independent and never retry service requests.
 * Pointers retain the actual wasm32/wasm64 target width; lengths remain u32 and
 * are bounded to 65536 before conversion. Each target needs separate execution.
 */
#ifndef UWVM_AGIBOT_C_FFI_BRIDGE_CLIENT_H
#define UWVM_AGIBOT_C_FFI_BRIDGE_CLIENT_H

#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

    /**
     * @brief Query GetMcAction once through an explicitly granted alias.
     * @param alias Borrowed alias bytes, valid until the function returns.
     * @param alias_bytes Exact alias size, 1..255; embedded NUL is invalid.
     * @param output Caller-owned writable canonical output buffer.
     * @param output_capacity Available output bytes; 156 accommodates the profile.
     * @param output_bytes Distinct caller-owned uint32_t; set to zero on failure.
     * @param cleanup_error Distinct caller-owned uint32_t for capability-close errno.
     * @return Original transport/cleanup errno, or 22 for an invalid FFI argument.
     * @details All output ranges must be mutually disjoint. No pointer escapes the
     * call. Service timeout is imposed by the host grant. A vendor rejection is
     * encoded in the original response header and must be inspected after decode.
     */
    uint32_t agibot_ffi_query_mode(uint8_t const* alias,
                                   uint32_t alias_bytes,
                                   uint8_t* output,
                                   uint32_t output_capacity,
                                   uint32_t* output_bytes,
                                   uint32_t* cleanup_error);

    /**
     * @brief Receive one complete original McCommonState within a monotonic deadline.
     * @param alias Borrowed alias bytes; this must grant a topic subscription.
     * @param alias_bytes Exact alias size, 1..255, excluding a trailing NUL.
     * @param timeout_ms Poll deadline in milliseconds, 1..30000.
     * @param output Caller-owned writable canonical bytes, never a native struct.
     * @param output_capacity Available bytes; 698 accommodates the selected profile.
     * @param output_bytes Distinct writable uint32_t set to the accepted byte count.
     * @param cleanup_error Distinct writable uint32_t preserving the close errno.
     * @return Zero on success, 110 on expiry, or an explicit ABI/argument error.
     * @details Requires monotonic-clock permission. Retained samples preserve their
     * original timestamp, units and frame names; receiving one does not prove it is
     * current. Buffer and scalar output ranges must be mutually disjoint.
     */
    uint32_t agibot_ffi_next_motion_state(uint8_t const* alias,
                                          uint32_t alias_bytes,
                                          uint32_t timeout_ms,
                                          uint8_t* output,
                                          uint32_t output_capacity,
                                          uint32_t* output_bytes,
                                          uint32_t* cleanup_error);

    /**
     * @brief Enumerate original X2 Ultra resources without starting playback.
     * @param alias Borrowed service alias bytes; no endpoint discovery is performed.
     * @param alias_bytes Exact alias size, 1..255, with no embedded NUL.
     * @param output Caller-owned canonical output, disjoint from both scalar outputs.
     * @param output_capacity Available bytes; 10236 accommodates four resources.
     * @param output_bytes Distinct writable uint32_t, zero after any failed call.
     * @param cleanup_error Distinct writable uint32_t recording capability retirement.
     * @return Original observation/cleanup errno; vendor status remains in the value.
     * @details Strings are bounded to 128 UTF-8 bytes; a resource may have 16 files.
     * An oversized response fails instead of being truncated. The bridge allocates
     * no persistent storage and neither retains nor frees caller-owned buffers.
     */
    uint32_t agibot_ffi_list_resources(uint8_t const* alias,
                                       uint32_t alias_bytes,
                                       uint8_t* output,
                                       uint32_t output_capacity,
                                       uint32_t* output_bytes,
                                       uint32_t* cleanup_error);

#ifdef __cplusplus
}
#endif
#endif
