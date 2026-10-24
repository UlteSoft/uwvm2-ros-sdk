/**
 * @file state.hpp
 * @brief Provide the complete fourier state.hpp source contract.
 * @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
 * encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
 */
/* SPDX-License-Identifier: Apache-2.0
 * C++20 borrowed facades. Construction opens no resource or robot connection. */
#ifndef UWVM_FOURIER_STATE_HPP
#define UWVM_FOURIER_STATE_HPP
#include <cstdint>
#include <platform/fourier/c/state.h>

namespace roswasm_fourier
{
    using State = uwvm_fourier_status;
    using Command = UWVM_FOURIER_COMMAND;

    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_fourier_status_storage bytes_{};

    public:
        explicit Reader(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        [[nodiscard]] std::uint32_t poll(State& out) noexcept
        {
            return uwvm_fourier_poll_status(cap_, &out, &bytes_);
        }
    };

    class Publisher
    {
        roswasmc_capability const* cap_;
        unsigned char bytes_[UWVM_FOURIER_COMMAND_CAPACITY]{};

    public:
        explicit Publisher(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        [[nodiscard]] std::uint32_t publish(Command const& v) noexcept
        {
            return uwvm_fourier_publish_command(cap_, &v, bytes_, sizeof bytes_);
        }
    };
}  // namespace roswasm_fourier
#endif
