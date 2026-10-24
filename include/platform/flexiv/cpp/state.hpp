/* SPDX-License-Identifier: Apache-2.0
 * C++20 borrowed facades. Construction opens no resource or robot connection. */
#ifndef UWVM_FLEXIV_STATE_HPP
#define UWVM_FLEXIV_STATE_HPP
#include <cstdint>
/** @brief Import complete C declarations with their intentional aggregate zero initialization. */
#if defined(__clang__)
# pragma clang diagnostic push
# pragma clang diagnostic ignored "-Wmissing-braces"
# pragma clang diagnostic ignored "-Wmissing-field-initializers"
#endif
#include <platform/flexiv/c/state.h>
#if defined(__clang__)
# pragma clang diagnostic pop
#endif
#if UWVM_FLEXIV_PROFILE > 2
# include "bounded_interfaces.hpp"
#endif
namespace roswasm_flexiv
{
    using State = uwvm_flexiv_status;
    using Command = UWVM_FLEXIV_COMMAND;

    /** @brief Poll one original complete state through a borrowed granted capability.
     * @details The caller retains the capability and closes it after this facade.
     * Storage belongs to this reader. Construction performs no ROS operation.
     */
    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_flexiv_status_storage bytes_{};

    public:
        /** @brief Borrow a live state capability. @param cap Caller-owned grant. */
        explicit Reader(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        /** @brief Consume at most one event and decode the full selected state.
         * @param out Caller-owned destination, committed only on successful decoding.
         * @return Original errno; 11 means no event. No capability is retired here.
         */
        [[nodiscard]] std::uint32_t poll(State& out) noexcept
        {
            return uwvm_flexiv_poll_status(cap_, &out, &bytes_);
        }
    };

    /** @brief Publish one validated complete original JointPosVel command.
     * @details The caller grants and owns the borrowed publisher capability.
     * This facade neither selects a controller mode nor schedules/retries motion.
     */
    class Publisher
    {
        roswasmc_capability const* cap_;
        unsigned char bytes_[UWVM_FLEXIV_COMMAND_CAPACITY]{};

    public:
        /** @brief Borrow a live publisher capability. @param cap Caller-owned grant. */
        explicit Publisher(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        /** @brief Validate and submit the exact complete command once.
         * @param v Borrowed original command; units and bounds follow the selected release.
         * @return Original validation/transport errno. Submission is not execution completion.
         */
        [[nodiscard]] std::uint32_t publish(Command const& v) noexcept
        {
            return uwvm_flexiv_publish_joint(cap_, &v, bytes_, sizeof bytes_);
        }
    };
}  // namespace roswasm_flexiv
#endif
