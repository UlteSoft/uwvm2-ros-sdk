/**
 * @file observation.h
 * @brief Route Unitree observations through the genuine shared numeric C FFI shim.
 * @details Link the maintained shim.c with ROSWASM_C_FFI_BACKEND matching the
 * selected ROS version. These are C examples; they establish no consumer-language
 * qualification. All handles, memory offsets, and lengths retain full u64 width.
 */
#ifndef UWVM_UNITREE_C_FFI_OBSERVATION_H
#define UWVM_UNITREE_C_FFI_OBSERVATION_H
#include <unitree/c/observation.h>
#include <platform/ros/c_ffi_bridge/roswasm_c_ffi.h>

/** @brief Query the real selected bridge ABI; returns version 1, not an errno. */
inline static uint32_t unitree_ffi_version(void)
{
    return roswasm_c_ffi_invoke(0, 0, 0, 0, 0, 0, 0, 0);
}

/**
 * @brief Open an already granted exact alias through the numeric bridge.
 * @param[in] memory Actual Guest linear memory index; convenience calls use 0.
 * @param[in] alias Full u64 Guest byte offset of borrowed strict UTF-8 alias bytes.
 * @param[in] length Alias extent in bytes, without a NUL terminator.
 * @param[out] output Guest offset of an exclusive eight-byte little-endian handle slot.
 * @return Original unsigned status; zero admits one opaque full-width handle.
 * @details Referenced input/output storage stays alive through this synchronous call.
 */
inline static uint32_t unitree_ffi_open(uint32_t memory, uint64_t alias, uint64_t length, uint64_t output)
{
    return roswasm_c_ffi_invoke(9, memory, alias, length, output, 0, 0, 0);
}

/**
 * @brief Close this acquired bridge handle once; failed cleanup is not replayed.
 * @param[in] handle Full-width opaque owner obtained from the same backend/instance.
 * @return Independent original unsigned cleanup status.
 * @details Retirement is not physical robot stopping or command rollback.
 */
inline static uint32_t unitree_ffi_close(uint64_t handle)
{
    return roswasm_c_ffi_invoke(8, handle, 0, 0, 0, 0, 0, 0);
}

/**
 * @brief Activate the already granted exact native subscription alias.
 * @param[in] handle Full-width same-instance topic subscription owner.
 * @return Original unsigned status; zero is admission, not delivered data.
 * @details No publish permission, worker, or native source is inferred.
 */
inline static uint32_t unitree_ffi_subscribe(uint64_t handle)
{
    return roswasm_c_ffi_invoke(46, handle, 0, 0, 0, 0, 0, 0);
}

/**
 * @brief Poll one actual native record through the full-width numeric bridge.
 * @param[in] handle Existing owned subscription handle.
 * @param[in] memory Actual Guest memory index, normally 0.
 * @param[out] output Exclusive canonical output-buffer byte offset.
 * @param[in] capacity Complete writable extent in bytes.
 * @param[out] length Eight-byte little-endian output-length slot offset.
 * @return Original unsigned status; 11 is idle, 90 remains a capacity failure.
 * @details Every addressed region remains live through return. A consuming
 * capacity failure is never automatically retried with a larger buffer.
 */
inline static uint32_t unitree_ffi_poll(uint64_t handle, uint32_t memory, uint64_t output, uint64_t capacity, uint64_t length)
{
    return roswasm_c_ffi_invoke(11, handle, memory, output, capacity, length, 0, 0);
}

/**
 * @brief Borrow an immutable dispatch table for these observation operations.
 * @return Static process-lifetime table; never mutate or free it.
 * @details This local selection creates no capability or native connection.
 */
inline static roswasmc_backend const* unitree_ffi_backend(void)
{
    static roswasmc_backend const backend = {.version = UWVM_UNITREE_ROS_VERSION,
                                             .abi_version = unitree_ffi_version,
                                             .open = unitree_ffi_open,
                                             .close = unitree_ffi_close,
                                             .subscribe = unitree_ffi_subscribe,
                                             .poll = unitree_ffi_poll};
    return &backend;
}
#endif
