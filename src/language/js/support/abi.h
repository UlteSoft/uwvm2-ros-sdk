/**
 * @file abi.h
 * @brief Share one exact complete static ROS ABI call frame across genuine VMs.
 * @details The generated header declares all38 ROS1 or43 ROS2 original imports.
 * Pointers use uintptr_t before ABI u64 conversion for both actual memory widths.
 * Guest buffers and exact unsigned handle/correlation words belong to the caller.
 * No schema, finalizer, background thread, automatic retry or grant is supplied.
 */
#ifndef UWVM_EMBEDDED_ABI_H
#define UWVM_EMBEDDED_ABI_H
#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <wasi/api.h>

#define UWVM_ABI_MAX_INPUT UINT32_C(4193786)
#define UWVM_ABI_MAX_OUTPUT UINT32_C(4194304)

/** @brief Borrow exclusive storage for exactly one synchronous original import.
 * @details All scalar words preserve64 bits. kind0 has no output, kind1 returns
 * length-delimited bytes, kind2 returns a nonzero owner/ID, kind3 returns the
 * exact32-byte ready record, and kind4 returns the ABI version. slot starts at
 * UINT64_MAX for length forms and zero for owner creation. Allocation, language
 * rooting and lifetime checks precede dispatch; this frame never owns a grant.
 */
typedef struct uwvm_call_frame
{
    uint64_t handle;
    uint64_t other;
    uint64_t correlation;
    uint8_t const* input;
    size_t input_size;
    uint8_t* output;
    size_t capacity;
    uint64_t slot;
    uint32_t code;
    int kind;
} uwvm_call_frame;

/** @brief Convert an actual memory32/memory64 guest pointer to an exact ABI offset.
 * @param pointer Borrowed guest storage with caller-checked extent and lifetime.
 * @return Full uintptr_t value zero-extended to the ABI u64 offset; no grant check.
 */
static inline uint64_t uwvm_address(void const* pointer)
{
    return (uint64_t)(uintptr_t)pointer;
}

#include "uwvm_shared_abi.h"

/** @brief Reject a malformed successful reply without replaying its native effect.
 * @param value Entered exclusive frame; original nonzero error remains unchanged.
 * @details A changed length sentinel is required for successful buffer replies.
 * Creating a resource requires a nonzero returned owner. A local22 describes an
 * invalid success reply; the already admitted host effect may still have happened.
 */
static inline void uwvm_frame_validate(uwvm_call_frame* value)
{
    if (!value->code && ((value->kind == 1 && (value->slot == UINT64_MAX || value->slot > value->capacity)) ||
                         (value->kind == 2 && !value->slot)))
    {
        value->code = 22;
    }
}

/** @brief Determine the complete owned byte result after validation.
 * @param value Entered, validated frame with storage retained through result copy.
 * @return Successful exact byte count; errors/non-buffer forms return zero.
 */
static inline size_t uwvm_frame_size(uwvm_call_frame const* value)
{
    return value->code ? 0 : value->kind == 1 ? (size_t)value->slot : value->kind == 3 ? 32 : 0;
}

/**
 * @brief Wait on one finite WASI monotonic timer without entering a ROS import.
 *
 * @param[in] milliseconds Converted duration within the admitted 0..5000 range.
 *
 * @return Original poll/event WASI errno, local 22 above 5000 ms, or local 5 when
 * the successful poll does not return exactly one event.
 *
 * @details The host must explicitly grant clock/poll permissions. A single
 * subscription requests a monotonic clock event. No file, socket, service replay,
 * wall clock or host callback is introduced, and no retry loop is started.
 */
static inline uint32_t uwvm_pause(uint32_t milliseconds)
{
    if (milliseconds > 5000)
    {
        return 22;
    }
    __wasi_subscription_t subscription = {0};
    __wasi_event_t event = {0};
    __wasi_size_t count = 0;
    subscription.u.tag = __WASI_EVENTTYPE_CLOCK;
    subscription.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
    subscription.u.u.clock.timeout = (uint64_t)milliseconds * 1000000u;
    uint32_t code = __wasi_poll_oneoff(&subscription, &event, 1, &count);
    return code != 0 ? code : count != 1 ? 5 : event.error;
}
#endif
