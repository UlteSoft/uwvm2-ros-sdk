/**
 * @file state.hpp
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see document/platform/doosan/en_US/README.md
 */

/* SPDX-License-Identifier: Apache-2.0
 * C++20 borrowed facades. Construction opens no resource or robot connection. */
#ifndef UWVM_DOOSAN_STATE_HPP
#define UWVM_DOOSAN_STATE_HPP
#include <cstdint>
#include <doosan/c/state.h>
#include UWVM_VENDOR_CPP_INTERFACES_HEADER

namespace roswasm_doosan
{
    using State = uwvm_doosan_status;
    using Command = UWVM_DOOSAN_COMMAND;

    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_doosan_status_storage bytes_{};

    public:
        explicit Reader(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        [[nodiscard]] std::uint32_t poll(State& out) noexcept
        {
            return uwvm_doosan_poll_status(cap_, &out, &bytes_);
        }
    };

    class Publisher
    {
        roswasmc_capability const* cap_;
        unsigned char bytes_[UWVM_DOOSAN_COMMAND_CAPACITY]{};

    public:
        explicit Publisher(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        [[nodiscard]] std::uint32_t publish(Command const& v) noexcept
        {
            return uwvm_doosan_publish_stop(cap_, &v, bytes_, sizeof bytes_);
        }
    };
}  // namespace roswasm_doosan
#endif
