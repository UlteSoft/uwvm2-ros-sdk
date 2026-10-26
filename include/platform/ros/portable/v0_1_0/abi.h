/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_ROS_PORTABLE_V0_1_0_ABI_H
#define UWVM_ROS_PORTABLE_V0_1_0_ABI_H
#include <stdint.h>

/* Source-preview ABI. The matching VM host implementation is required.
 * This header registers no import, adapter, resource or permission by itself.
 * All offsets/lengths are ABI i64 at either guest memory width. Handles are
 * instance-local opaque generations, never native addresses. */
#if defined(__wasm__)
#define UPR_IMPORT(name) __attribute__((__import_module__("uwvm_portable_robot_v1"), __import_name__(name)))
#else
#define UPR_IMPORT(name)
#endif

UPR_IMPORT("abi_version") uint32_t upr_abi_version(void);
UPR_IMPORT("open") uint32_t upr_open(uint32_t memory, uint64_t alias, uint64_t alias_bytes, uint64_t handle_out);
UPR_IMPORT("describe") uint32_t upr_describe(uint64_t handle, uint32_t memory, uint64_t output, uint64_t capacity, uint64_t length_out);
UPR_IMPORT("read_state") uint32_t upr_read_state(uint64_t handle, uint32_t memory, uint64_t output, uint64_t capacity, uint64_t length_out);
UPR_IMPORT("submit") uint32_t upr_submit(uint64_t handle, uint32_t memory, uint64_t request, uint64_t request_bytes,
    uint64_t output, uint64_t capacity, uint64_t length_out);
UPR_IMPORT("wait") uint32_t upr_wait(uint64_t handle, uint64_t command_id, uint32_t memory,
    uint64_t output, uint64_t capacity, uint64_t length_out);
UPR_IMPORT("close") uint32_t upr_close(uint64_t handle);

#define UPR_MAX_JOINTS 16u
#define UPR_DESCRIPTOR_HEADER 64u
#define UPR_DESCRIPTOR_JOINT 40u
#define UPR_STATE_HEADER 64u
#define UPR_STATE_JOINT 16u
#define UPR_COMMAND_HEADER 80u
#define UPR_COMMAND_JOINT 16u
#define UPR_RECEIPT_BYTES 96u
#define UPR_REQUIRED_RIGHTS 15u /* describe=1, read=2, submit=4, wait=8 */
#define UPR_SOFTWARE_SIMULATION 1u
#define UPR_ACCEPTED 1u
#define UPR_SUCCEEDED 2u

static inline uint64_t upr_offset(void const* p) { return (uint64_t)(uintptr_t)p; }
static inline uint32_t upr_u32(unsigned char const* p)
{
    return (uint32_t)p[0] | ((uint32_t)p[1] << 8) | ((uint32_t)p[2] << 16) | ((uint32_t)p[3] << 24);
}
static inline uint64_t upr_u64(unsigned char const* p)
{
    return (uint64_t)upr_u32(p) | ((uint64_t)upr_u32(p + 4) << 32);
}
static inline int64_t upr_i64(unsigned char const* p)
{
    uint64_t u = upr_u64(p);
    return u <= INT64_MAX ? (int64_t)u : -1 - (int64_t)(~u);
}
static inline void upr_put32(unsigned char* p, uint32_t u)
{
    for (uint32_t i = 0; i != 4; ++i) p[i] = (unsigned char)(u >> (i * 8));
}
static inline void upr_put64(unsigned char* p, uint64_t u)
{
    for (uint32_t i = 0; i != 8; ++i) p[i] = (unsigned char)(u >> (i * 8));
}
/* Header size/count are validated before callers address any joint record. */
static inline int upr_frame(unsigned char const* p, uint64_t bytes, uint32_t kind, uint32_t size)
{
    return bytes == size && bytes >= 16 && p[0] == 'U' && p[1] == 'R' && p[2] == 'P' && p[3] == '1'
        && p[4] == 1 && p[5] == 0 && p[6] == kind && p[7] == 0 && upr_u32(p + 8) == size;
}
static inline void upr_header(unsigned char* p, uint32_t kind, uint32_t size, uint32_t count)
{
    p[0] = 'U'; p[1] = 'R'; p[2] = 'P'; p[3] = '1'; p[4] = 1; p[5] = 0; p[6] = (unsigned char)kind; p[7] = 0;
    upr_put32(p + 8, size); upr_put32(p + 12, count);
}
#undef UPR_IMPORT
#endif
