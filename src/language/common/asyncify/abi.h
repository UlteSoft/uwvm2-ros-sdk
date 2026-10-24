/**
 * @file abi.h
 * @brief Reuse the complete canonical shared ROS imports and one WASI timer.
 * @details The dispatcher is generated from share/abi/abi-v1.json and uses the
 * public C import declarations. This header defines no competing ABI schema.
 */
#ifndef UWVM_EMBEDDED_ABI_H
#define UWVM_EMBEDDED_ABI_H
#include <stddef.h>
#include <stdint.h>
#include <wasi/api.h>
#include "abi_dispatch.h"

/**
 * @brief Wait on one finite WASI monotonic timer without issuing a ROS operation.
 * @param milliseconds Duration in the admitted 0..5000 range.
 * @return Original WASI errno, or 22 for an inadmissible duration.
 * @details The host must explicitly grant clock and poll permissions. No file,
 * socket, service replay, host callback or wall clock is involved.
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
