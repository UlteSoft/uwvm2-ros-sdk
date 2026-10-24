/* SPDX-License-Identifier: Apache-2.0 */
/**
 * @file client.h
 * @brief Guest-side observation transport for AgiBot X2 AimDK v1.1.0.
 * @details Compile this API and observation.c into the application Wasm module.
 * All communication uses uwvm_ros2_v1 imports. An alias refers to an exact
 * runtime-granted operation, resource, native identity and bounded codec; it is
 * never a URL. No native ROS library, socket or HTTP client belongs to a guest.
 */
#ifndef UWVM_AGIBOT_SHARED_CLIENT_H
#define UWVM_AGIBOT_SHARED_CLIENT_H
#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

    /** @brief Exact supported observation, distinct from an official message type. */
    enum uwvm_agibot_observation
    {
        UWVM_AGIBOT_GET_MC_ACTION = 1,
        UWVM_AGIBOT_MC_COMMON_STATE = 2,
        UWVM_AGIBOT_GET_ROBOT_RESOURCES = 3
    };

    /**
     * @brief Observe full canonical bytes while preserving independent cleanup facts.
     * @param alias Borrowed NUL-terminated exact granted UTF-8 alias, 1..255 bytes.
     * @param observation Original supported observation selector.
     * @param timeout_ms Finite topic deadline, 1..30000 milliseconds.
     * @param output Caller-owned writable canonical byte buffer.
     * @param capacity Exact available extent, 1..65536 bytes.
     * @param length Complete successful byte count, even when cleanup fails.
     * @param cleanup Original close errno; inspect only if cleanup_present is one.
     * @param cleanup_present Zero before acquisition; one before the sole close.
     * @param required Original successful/error90 length, if has_required is one.
     * @param has_required One only when the host replaced the length sentinel.
     * @return Original primary errno; a cleanup error does not replace it.
     * @details All writable outputs, alias and byte storage must be disjoint.
     * No output is initialized for invalid pointers/overlap. Otherwise scalars
     * are initialized before acquisition. Only primary zero admits response data.
     * Services are attempted once; a capacity error does not cause replay.
     */
    uint32_t uwvm_agibot_observe_raw(char const* alias,
                                     enum uwvm_agibot_observation observation,
                                     uint32_t timeout_ms,
                                     unsigned char* output,
                                     size_t capacity,
                                     size_t* length,
                                     uint32_t* cleanup,
                                     uint32_t* cleanup_present,
                                     uint64_t* required,
                                     uint32_t* has_required);

    /**
     * @brief Perform one bounded observation through an explicitly granted alias.
     * @details Opens and retires one instance-owned capability, even after an
     * operation fails. A service is sent at most once. Its absolute deadline is
     * controlled by runtime policy. Topic polling waits at most timeout_ms using
     * the granted WASI monotonic clock; it may receive a retained ROS sample with
     * TRANSIENT_LOCAL QoS. No freshness beyond the original timestamp is implied.
     * Independent calls use separate owners; callers must not share writable
     * buffers concurrently. Output is complete bounded-v2 canonical ROS data,
     * not a host struct or CDR stream. Use the matching original-type decoder.
     * @param alias Nonempty UTF-8 authority alias, at most 255 bytes; borrowed.
     * @param observation One uwvm_agibot_observation, selecting the exact request.
     * @param timeout_ms Topic wait deadline, 1..30000 milliseconds. Service calls
     * use the host policy deadline; this argument cannot increase host authority.
     * @param output Caller-owned bytes, disjoint from alias, length and cleanup.
     * @param capacity Writable byte count, 1..65536. Size failures are not retried.
     * @param length Set to zero first, then the complete response size on success.
     * @param cleanup Receives capability_close errno separately; zero if not opened.
     * @return ROS ABI errno: 0 success, 13 denied, 22 invalid, 90 capacity, 95
     * unsupported ABI, 110 deadline, or original transport errno. If observation
     * succeeds but cleanup fails, return that cleanup error. No output is valid
     * unless the return value is zero. Vendor response codes remain in the data.
     */
    uint32_t uwvm_agibot_observe(char const* alias,
                                 enum uwvm_agibot_observation observation,
                                 uint32_t timeout_ms,
                                 unsigned char* output,
                                 size_t capacity,
                                 size_t* length,
                                 uint32_t* cleanup);
#ifdef __cplusplus
}
#endif
#endif
