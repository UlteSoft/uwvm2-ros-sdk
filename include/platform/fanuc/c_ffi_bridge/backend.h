/**
 * @file observation.h
 * @brief Exercise FANUC observations through the shared numeric native-language bridge.
 * @details The shared C Foreign Function Interface bridge serves Swift, Haskell,
 * Nim, D, and Odin. This header and its FANUC
 * examples are C source; their acceptance adds no consumer-language coverage.
 * These entry points select the real ROS 2 bridge and complete
 * FANUC C codecs. Link sdk/src/platform/ros/c_ffi_bridge/shim.c with ROSWASM_C_FFI_BACKEND=2.
 * The private operation indices below match that exact maintained bridge; they
 * are not public ROS operation IDs, capability handles, or authority tokens.
 * @see fanuc_c_ffi_backend
 */
#ifndef UWVM_FANUC_C_FFI_BRIDGE_OBSERVATION_H
#define UWVM_FANUC_C_FFI_BRIDGE_OBSERVATION_H

#include <ros/c_ffi_bridge/roswasm_c_ffi.h>
#include <ros2/c/roswasm/ros2.h>

/**
 * @brief Observe the actual selected bridge namespace ABI version.
 * @return Original version value, expected 1; this is not an errno.
 * @details Private bridge operation 0 opens no alias and grants no ROS access.
 * @see fanuc_c_ffi_backend
 */
inline static uint32_t fanuc_c_ffi_version(void)
{
    return roswasm_c_ffi_invoke(0, 0, 0, 0, 0, 0, 0, 0);
}

/**
 * @brief Open one existing alias through the genuine numeric compiler bridge.
 * @param[in] memory Actual Guest memory index; convenience calls use zero.
 * @param[in] alias Full-width Guest offset of strict UTF-8 alias bytes.
 * @param[in] length Exact alias byte count, without a NUL terminator.
 * @param[out] output Offset of the eight-byte little-endian handle slot.
 * @return Original unsigned ABI status; no retry or native endpoint is created.
 * @details Borrow all addressed storage until synchronous return.
 * @see fanuc_c_ffi_close
 */
inline static uint32_t fanuc_c_ffi_open(uint32_t memory, uint64_t alias, uint64_t length, uint64_t output)
{
    return roswasm_c_ffi_invoke(9, memory, alias, length, output, 0, 0, 0);
}

/**
 * @brief Retire one owned handle once through the real shared bridge.
 * @param[in] handle Full-width opaque handle owned by this instance and backend.
 * @return Independent original close status, including ambiguous transport errors.
 * @details Closing a capability never establishes physical stopping or recovery.
 * @see fanuc_observation_close
 */
inline static uint32_t fanuc_c_ffi_close(uint64_t handle)
{
    return roswasm_c_ffi_invoke(8, handle, 0, 0, 0, 0, 0, 0);
}

/**
 * @brief Activate an already granted native ROS 2 topic subscription.
 * @param[in] handle Existing full-width subscription capability handle.
 * @return Original ABI status; success means admission, not a delivered message.
 * @details This operation creates no publication permission or background worker.
 * @see fanuc_c_ffi_poll
 */
inline static uint32_t fanuc_c_ffi_subscribe(uint64_t handle)
{
    return roswasm_c_ffi_invoke(46, handle, 0, 0, 0, 0, 0, 0);
}

/**
 * @brief Poll at most one complete legacy topic record through the shared bridge.
 * @param[in] handle Existing full-width subscription owner.
 * @param[in] memory Actual Guest memory index.
 * @param[out] output Writable canonical record offset.
 * @param[in] capacity Finite output byte count from the complete schema bound.
 * @param[out] length Eight-byte little-endian returned-length slot offset.
 * @return Original ABI status; idle 11 and possibly consuming size error 90 stay errors.
 * @details Inspect the actual length write; never infer it or replay a consumed poll.
 * @see fanuc_read_system_state
 */
inline static uint32_t fanuc_c_ffi_poll(uint64_t handle, uint32_t memory, uint64_t output, uint64_t capacity, uint64_t length)
{
    return roswasm_c_ffi_invoke(11, handle, memory, output, capacity, length, 0, 0);
}

/**
 * @brief Execute one complete service request through the real numeric bridge.
 * @param[in] handle Existing service-call capability, never a native pointer.
 * @param[in] memory Actual Guest memory index.
 * @param[in] input Offset of the complete canonical request body.
 * @param[in] size Exact request byte count; zero for GetSpeedRatio.
 * @param[out] output Writable complete response body offset.
 * @param[in] capacity Finite response byte capacity.
 * @param[out] length Eight-byte little-endian returned-length slot offset.
 * @return Original transport status; decoded controller result remains separate.
 * @details The shared shim preserves all i64 offsets and lengths on memory32.
 * No ambiguous timeout or capacity error is automatically replayed.
 * @see fanuc_read_speed, fanuc_read_io
 */
inline static uint32_t fanuc_c_ffi_call(uint64_t handle, uint32_t memory, uint64_t input, uint64_t size, uint64_t output, uint64_t capacity, uint64_t length)
{
    return roswasm_c_ffi_invoke(36, handle, memory, input, size, output, capacity, length);
}

/**
 * @brief Borrow the immutable dispatch for the three explicitly supported observations.
 * @return Static immutable ROS 2 dispatch, alive for the entire Guest instance.
 * @details Unsupported operations remain NULL. Presence in this local table
 * grants no native permission. The shared shim and this header must be upgraded
 * together if private operation numbering changes. No resource is opened here.
 * @see fanuc_read_speed, fanuc_read_io, fanuc_read_system_state
 */
inline static roswasmc_backend const* fanuc_c_ffi_backend(void)
{
    static roswasmc_backend const backend = {.version = 2,
                                             .abi_version = fanuc_c_ffi_version,
                                             .open = fanuc_c_ffi_open,
                                             .close = fanuc_c_ffi_close,
                                             .subscribe = fanuc_c_ffi_subscribe,
                                             .poll = fanuc_c_ffi_poll,
                                             .request = {[ROSWASMC_SERVICE_CALL] = fanuc_c_ffi_call}};
    return &backend;
}

#endif
