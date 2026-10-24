/* SPDX-License-Identifier: Apache-2.0 */
/**
 * @file observation_json.h
 * @brief Language-neutral in-guest FFI for complete AimDK observation JSON.
 * @details Link observation.c and observation_json.c into the same Wasm module
 * as the caller. Communication uses only the existing uwvm_ros2_v1 imports.
 * JSON retains every original field and sequence, without unit/frame conversion.
 * Both signed and unsigned 64-bit fields use decimal JSON strings so language
 * number limits cannot round them. Other scalars use their ordinary JSON types.
 * This is a project representation of original messages, not a vendor C ABI.
 */
#ifndef UWVM_AGIBOT_SHARED_OBSERVATION_JSON_H
#define UWVM_AGIBOT_SHARED_OBSERVATION_JSON_H
#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

    /**
     * @brief Execute one original observation and serialize its complete response.
     * @param operation 1 GetMcAction, 2 McCommonState, or 3 GetRobotResources.
     * @param alias Borrowed UTF-8 alias bytes; no terminating NUL is required.
     * @param alias_bytes Exact alias length, 1..255; embedded NUL is rejected.
     * @param timeout_ms Monotonic state deadline, 1..30000 ms; services use host policy.
     * @param output Caller-owned writable JSON bytes, never NUL terminated.
     * @param capacity Output capacity, 1..65536; 65536 fits the selected profile.
     * @param written Distinct writable uint32_t; valid JSON extent only on success.
     * @param cleanup Distinct writable uint32_t preserving capability-close errno.
     * @param vendor_code Distinct writable int64_t retaining the original service
     * response code; zero for the state observation. Nonzero is vendor rejection.
     * @return Zero on transport, decode, cleanup and serialization success; otherwise
     * original errno, 22 invalid argument/data, or 90 insufficient bounded capacity.
     * @details Output ranges must be mutually disjoint and correctly aligned for
     * their scalar types. Invalid ranges cause no writes. After argument validation,
     * scalar outputs initialize to zero; failed calls publish written=0. No pointer
     * escapes, no storage is allocated persistently, and no service is retried.
     * Independent calls share no mutable state. Traps require outer Instance cleanup.
     */
    uint32_t agibot_json_observe(uint32_t operation,
                                 uint8_t const* alias,
                                 uint32_t alias_bytes,
                                 uint32_t timeout_ms,
                                 uint8_t* output,
                                 uint32_t capacity,
                                 uint32_t* written,
                                 uint32_t* cleanup,
                                 int64_t* vendor_code);

#ifdef __cplusplus
}
#endif
#endif
