/** @file
 * Genuine WASI Preview1 monotonic waiting with explicit cancellation checks.
 * Uses the selected target's official WASI declarations, including memory64.
 * Imports grant no authority. WASI errno remains in its own namespace; in
 * particular WASI CANCELED=11 must never be interpreted as ROS idle=11.
 */
#pragma once
#include <platform/wasi/c/wasi.h>
#include <cstdint>
#include <limits>

namespace roswasm_wasi
{
    struct WaitResult
    {
        __wasi_errno_t error{};
        bool cancelled{};
    };

    /** Wait against real monotonic time in at most quantum_ns blocking pieces.
     * The predicate executes only on this guest stack before/after each piece.
     * It is local cancellation, not a thread/signal handler. An independent VM
     * guardian must still retire a stopped/trapped/uncooperative application.
     * No busy loop, synthetic timestamp, truncation or retry after error occurs.
     */
    inline WaitResult wait_until(std::uint64_t deadline_ns, std::uint64_t quantum_ns,
                                 bool (*cancelled)(void*) = nullptr, void* context = nullptr)
    {
        if(!quantum_ns) return {__WASI_ERRNO_INVAL, false};
        std::uint64_t previous{};
        bool sampled{};
        for(;;)
        {
            if(cancelled && cancelled(context)) return {0, true};
            __wasi_timestamp_t now{};
            auto error = __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 1, &now);
            if(error) return {error, false};
            if(sampled && now < previous) return {__WASI_ERRNO_INVAL, false};
            sampled = true; previous = now;
            if(now >= deadline_ns) return {};
            auto remaining = deadline_ns - now;
            auto piece = remaining < quantum_ns ? remaining : quantum_ns;
            // piece <= deadline-now, so addition cannot overflow.
            __wasi_subscription_t subscription{};
            subscription.userdata = 1;
            subscription.u.tag = __WASI_EVENTTYPE_CLOCK;
            subscription.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
            subscription.u.u.clock.timeout = now + piece;
            subscription.u.u.clock.precision = 1;
            subscription.u.u.clock.flags = __WASI_SUBCLOCKFLAGS_SUBSCRIPTION_CLOCK_ABSTIME;
            __wasi_event_t event{};
            __wasi_size_t count{};
            error = __wasi_poll_oneoff(&subscription, &event, 1, &count);
            if(error) return {error, false};
            if(count != 1 || event.userdata != 1 || event.type != __WASI_EVENTTYPE_CLOCK)
                return {__WASI_ERRNO_INVAL, false};
            if(event.error) return {event.error, false};
        }
    }

    inline WaitResult wait_for(std::uint64_t duration_ns, std::uint64_t quantum_ns,
                               bool (*cancelled)(void*) = nullptr, void* context = nullptr)
    {
        if(!quantum_ns) return {__WASI_ERRNO_INVAL, false};
        if(cancelled && cancelled(context)) return {0, true};
        __wasi_timestamp_t now{};
        auto error = __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 1, &now);
        if(error) return {error, false};
        if(duration_ns > std::numeric_limits<std::uint64_t>::max() - now)
            return {__WASI_ERRNO_OVERFLOW, false};
        return wait_until(now + duration_ns, quantum_ns, cancelled, context);
    }
}
