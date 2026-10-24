/* SPDX-License-Identifier: Apache-2.0
 * Standard-selected borrowed facades; one cpp source for all public profiles. Construction opens no resource or robot connection. */
#ifndef UWVM_PAL_STATE_HPP
#define UWVM_PAL_STATE_HPP
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#include <string.h>
#include <platform/pal/c/state.h>

namespace roswasm_pal
{
    /** @brief Exact selected original PAL JointCurrent or BatteryState.
     * @details Compile-time profile retains every original field and unit; a value
     * does not discover a native model/endpoint or grant receive authority.
     * @see Reader uwvm_pal_status
     */
    typedef uwvm_pal_status State;
    /** @brief Exact selected original PAL current-limit or LED command.
     * @details Retains all original fields. Current limits are dimensionless fractions;
     * model/controller bounds and independent publish authority remain required.
     * @see Publisher uwvm_pal_publish_command
     */
    typedef UWVM_PAL_COMMAND Command;

    /** @brief Borrow one selected receive capability with private complete-wire scratch.
     * @details No owner is opened, transferred or closed. cap/context/backend remain
     * live and stable through all calls; copies borrow the same owner. No callback
     * or background thread is installed. Serialize capability use independently.
     * @see poll uwvm_pal_poll_status
     */
    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_pal_status_storage bytes_;

    public:
        /** @brief Retain the stable address of an explicitly granted receive owner.
         * @details Construction performs no ABI operation or backend validation.
         * @param[in] cap Live exact selected borrowed capability, valid until last poll.
         * @see poll uwvm_pal_status_storage
         */
        explicit Reader(roswasmc_capability const& cap) ROSWASM_CPP_NOEXCEPT : cap_(&cap)
        {
            memset(&bytes_, 0, sizeof bytes_);
        }

        /** @brief Poll one complete original selected PAL status transactionally.
         * @details Exclusive internal scratch; no retry, allocation, projection or
         * unit conversion. Idle11 is not delivery and errors preserve out.
         * @param[out] out Complete writable State, disjoint from this object.
         * @return Original uwvm_pal_poll_status status; no C++ exception.
         * @thread Serialize this reader and its borrowed capability through return.
         * @see State uwvm_pal_poll_status
         */
#if !ROSWASM_CPP_LEGACY && ROSWASM_CPP_STANDARD >= 17
        [[nodiscard]]
#endif
        uint32_t poll(State& out) ROSWASM_CPP_NOEXCEPT
        {
            return uwvm_pal_poll_status(cap_, &out, &bytes_);
        }
    };

    /** @brief Borrow one selected publish owner with private complete-command scratch.
     * @details cap/context/backend outlive this object and every call. Opens/closes
     * no resource, starts no thread and grants no authority. Copies still borrow
     * the same owner, so publication must remain externally serialized.
     * @see publish uwvm_pal_publish_command
     */
    class Publisher
    {
        roswasmc_capability const* cap_;
        unsigned char bytes_[UWVM_PAL_COMMAND_CAPACITY];

    public:
        /** @brief Retain an independently granted exact selected publish capability.
         * @details Construction performs no publication, validation or mode change.
         * @param[in] cap Live borrowed publish owner at a stable address until last use.
         * @see publish Command
         */
        explicit Publisher(roswasmc_capability const& cap) ROSWASM_CPP_NOEXCEPT : cap_(&cap)
        {
            memset(&bytes_, 0, sizeof bytes_);
        }

        /** @brief Encode every original selected command field and publish once.
         * @details Caller independently validates physical limits/controller mode.
         * No retry or implicit close occurs; success is not physical completion.
         * @param[in] v Complete immutable Command, disjoint from this object's scratch.
         * @return Original encode/publish status; no C++ exception or invented result.
         * @thread Serialize this publisher and every user of its borrowed capability.
         * @see Command uwvm_pal_publish_command uwvm_pal_validate_current_limits
         */
#if !ROSWASM_CPP_LEGACY && ROSWASM_CPP_STANDARD >= 17
        [[nodiscard]]
#endif
        uint32_t publish(Command const& v) ROSWASM_CPP_NOEXCEPT
        {
            return uwvm_pal_publish_command(cap_, &v, bytes_, sizeof bytes_);
        }
    };
}  // namespace roswasm_pal
#endif
