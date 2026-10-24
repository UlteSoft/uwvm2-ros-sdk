/**
 * @file array_shared.h
 * @brief Scalar C ABI for a separate C module with its own complete Array storage.
 * @details No pointer, ROS handle or borrowed span crosses the module boundary.
 * Tokens identify bounded storage generations; they are never memory addresses.
 */
#ifndef NV_ARRAY_SHARED_H
#define NV_ARRAY_SHARED_H
#include <stdint.h>
#if defined(NV_ARRAY_PRODUCER)
#define NV_ARRAY_ABI(name) __attribute__((export_name(name)))
#else
#define NV_ARRAY_ABI(name) __attribute__((import_module("array_c"), import_name(name)))
#endif
#ifdef __cplusplus
extern "C"
{
#endif
    /**
     * @brief Acquire an empty private byte generation.
     * @param size Complete payload extent, at most 9872 bytes.
     * @return Nonzero opaque token, or zero if busy/oversized/exhausted.
     */
    NV_ARRAY_ABI("nv_array_begin") uint64_t nv_array_begin(uint32_t size);
    /**
     * @brief Append one scalar byte in order to the producer's private memory.
     * @param token Live generation returned by begin.
     * @param index Next zero-based byte index; no arbitrary address is accepted.
     * @param byte Value at most 255.
     * @return Zero; nine for retired/foreign token; 22 for invalid order/bounds.
     */
    NV_ARRAY_ABI("nv_array_put") uint32_t nv_array_put(uint64_t token, uint32_t index, uint32_t byte);
    /**
     * @brief Decode all bytes and seal this generation, retiring writes.
     * @param token Live generation containing exactly the declared payload.
     * @return Zero; nine for retired token; 22 for missing bytes or codec error.
     */
    NV_ARRAY_ABI("nv_array_finish") uint32_t nv_array_finish(uint64_t token);
    /**
     * @brief Read a sealed scalar summary without exposing any storage pointer.
     * @param token Current sealed generation.
     * @param key Zero for count, one for signed id sum, two for unsigned FNV32.
     * @return Selected value, or minus nine/22 for invalid token/key.
     */
    NV_ARRAY_ABI("nv_array_fact") int64_t nv_array_fact(uint64_t token, uint32_t key);
    /**
     * @brief Retire all access to a sealed generation.
     * @param token Current sealed generation.
     * @return Zero or nine for stale/foreign token; no host resource is owned.
     */
    NV_ARRAY_ABI("nv_array_close") uint32_t nv_array_close(uint64_t token);
    /** @brief Try an ungranted producer ROS acquisition; return raw status 13. */
    NV_ARRAY_ABI("nv_array_probe_ros") uint32_t nv_array_probe_ros(void);
    /**
     * @brief Try the ungranted clock and confirm its output remains untouched.
     * @return Raw status 76, or 70 if the sentinel output was changed.
     */
    NV_ARRAY_ABI("nv_array_probe_clock") uint32_t nv_array_probe_clock(void);
#ifdef __cplusplus
}
#endif
#endif
