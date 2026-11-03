// SPDX-License-Identifier: Apache-2.0
/** @file callback_observation.hpp
 * @brief Optional genuine guest callback events for original Go2 acceptance.
 * @details Enabled only by the explicitly observed build. Source counters and
 * real WASI monotonic samples are observations, never timer inputs or feedback.
 * Failed clock/output operations abort this diagnostic run; the real VM guardian
 * must retire its owners. This does not create runtime authority or fake events.
 */
#pragma once
#include <wasi/api.h>
#include <bit>
#include <cstdint>
#include <cstdio>
#include <cstdlib>

namespace uwvm_unitree_go2_observation
{
    static_assert(sizeof(float) == 4);
    [[noreturn]] inline void failure(unsigned clock_error) noexcept
    {
        std::fprintf(stderr, "UWVM_GO2_TIMER_FAILURE_V1 clock=%u\n", clock_error);
        std::abort();
    }
    inline std::uint64_t monotonic() noexcept
    {
        __wasi_timestamp_t value{};
        auto error = __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 0, &value);
        if(error) failure(error);
        return value;
    }
    inline void begin(int previous_motiontime) noexcept
    {
        auto stamp = monotonic();
        if(previous_motiontime < 0 || std::fprintf(stderr,
            "UWVM_GO2_TIMER_V1 begin tick=%llu monotonic_ns=%llu\n",
            static_cast<unsigned long long>(previous_motiontime) + 1,
            static_cast<unsigned long long>(stamp)) < 0 || std::fflush(stderr)) failure(0);
    }
    inline void end(int motiontime, bool done, float p1, float p2, float p3, float p4) noexcept
    {
        auto stamp = monotonic();
        if(motiontime <= 0 || std::fprintf(stderr,
            "UWVM_GO2_TIMER_V1 end tick=%llu monotonic_ns=%llu done=%u p1=%08x p2=%08x p3=%08x p4=%08x\n",
            static_cast<unsigned long long>(motiontime), static_cast<unsigned long long>(stamp),
            static_cast<unsigned>(done), static_cast<unsigned>(std::bit_cast<std::uint32_t>(p1)),
            static_cast<unsigned>(std::bit_cast<std::uint32_t>(p2)),
            static_cast<unsigned>(std::bit_cast<std::uint32_t>(p3)),
            static_cast<unsigned>(std::bit_cast<std::uint32_t>(p4))) < 0 || std::fflush(stderr)) failure(0);
    }
}
