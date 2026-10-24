// @file state.hpp
// @brief Provide the selected typed SDK binding and ownership boundary for deep_robotics.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/* SPDX-License-Identifier: Apache-2.0
 * C++20 borrowed facades. Construction opens no resource or robot connection. */
#ifndef UWVM_DEEP_ROBOTICS_STATE_HPP
#define UWVM_DEEP_ROBOTICS_STATE_HPP
#include <cstdint>
#include <deep_robotics/c/state.h>

namespace roswasm_deep_robotics
{
    using State = uwvm_deep_robotics_status;
    using Command = UWVM_DEEP_ROBOTICS_COMMAND;

    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_deep_robotics_status_storage bytes_{};

    public:
        explicit Reader(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        [[nodiscard]] std::uint32_t poll(State& out) noexcept
        {
            return uwvm_deep_robotics_poll_status(cap_, &out, &bytes_);
        }
    };

    class Publisher
    {
        roswasmc_capability const* cap_;
        unsigned char bytes_[UWVM_DEEP_ROBOTICS_COMMAND_CAPACITY]{};

    public:
        explicit Publisher(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        [[nodiscard]] std::uint32_t publish(Command const& v) noexcept
        {
            return uwvm_deep_robotics_publish_command(cap_, &v, bytes_, sizeof bytes_);
        }
    };
}  // namespace roswasm_deep_robotics
#endif
