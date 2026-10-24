/**
 * @file io.hpp
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see document/platform/universal_robots/en_US/README.md
 */

/* SPDX-License-Identifier: Apache-2.0
 * Typed whole I/O reader. The generated interfaces header also exposes every
 * selected original service/action facade; there is no native UR binary ABI.
 */
#ifndef UWVM_UR_IO_HPP
#define UWVM_UR_IO_HPP
#include <universal_robots/c/io.h>
#include UWVM_VENDOR_CPP_INTERFACES_HEADER

namespace roswasm_ur
{
    using IOState = uwvm_ur_io_state;
    using SpeedRequest = uwvm_ur_speed_request;

    /** Borrow an explicitly owned capability; construction opens no resource.
     * Access is serialized. Poll uses real generated Codec<T>, not a prefix view.
     */
    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_ur_storage scratch_{};

    public:
        explicit Reader(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        [[nodiscard]] std::uint32_t poll(IOState& value) noexcept
        {
            return uwvm_ur_poll_io(cap_, &value, &scratch_);
        }
    };
}  // namespace roswasm_ur
#endif
