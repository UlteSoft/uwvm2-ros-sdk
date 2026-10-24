/**
 * @file array_library.h
 * @brief Borrowed-memory C ABI for an indexed original-Array static archive.
 * @details The application and extracted archive objects share one Wasm memory.
 * The library copies no pointer into persistent storage and retains no ownership.
 */
#ifndef NV_ARRAY_LIBRARY_H
#define NV_ARRAY_LIBRARY_H
#include <stddef.h>
#include <stdint.h>

/** @brief Value-only summary of every decoded detection and every input byte. */
typedef struct nv_array_summary
{
    uint32_t count;
    int64_t id_sum;
    uint32_t checksum;
} nv_array_summary;

#ifdef __cplusplus
extern "C"
{
#endif
    /**
     * @brief Validate a complete original Array and commit its scalar summary.
     * @details Decode storage belongs to this call. On any error all output fields
     * remain unchanged. No pointer or record escapes the call; no ROS is acquired.
     * @param wire Borrowed complete canonical payload in the application's memory.
     * @param size Payload extent in bytes, at most 9872.
     * @param output Borrowed writable nonoverlapping summary, committed on success.
     * @return Zero on success; 22 for null/oversized input or the bounded codec error.
     */
    uint32_t nv_array_summarize(unsigned char const *wire, size_t size, nv_array_summary *output);
#ifdef __cplusplus
}
#endif
#endif
