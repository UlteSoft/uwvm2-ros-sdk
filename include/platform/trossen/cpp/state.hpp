/* SPDX-License-Identifier: Apache-2.0
 * Standard-selected borrowed facades; one cpp source for all public profiles. Construction opens no resource or robot connection. */
#ifndef UWVM_TROSSEN_STATE_HPP
#define UWVM_TROSSEN_STATE_HPP
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#include <string.h>
#include <platform/trossen/c/state.h>

namespace roswasm_trossen
{
    /** @brief Complete selected original Interbotix status type.
     * @details Profile1..11 retains the exact original schema and all fields. Type
     * availability does not identify a native robot/model or grant receive authority.
     * @see Reader uwvm_trossen_status
     */
    typedef uwvm_trossen_status State;
    /** @brief Complete selected original Interbotix command type.
     * @details Retains the selected original command fields and units; independent
     * robot/group/mode/epoch validation and publish authority remain required.
     * @see Publisher uwvm_trossen_validate_group
     */
    typedef UWVM_TROSSEN_COMMAND Command;

    /** @brief Borrow one selected receive owner and private complete-wire scratch.
     * @details cap/context/backend outlive this object and all calls at a stable
     * address. No open, close, ownership transfer, thread or callback occurs. Copies
     * borrow the same owner; its users still need external serialization.
     * @see poll uwvm_trossen_poll_status
     */
    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_trossen_status_storage bytes_;

    public:
        /** @brief Retain a selected receive capability without an ABI operation.
         * @details poll performs backend validation and actual receive under the
         * independently granted exact type/resource/direction/quota/deadline policy.
         * @param[in] cap Live borrowed owner at a stable address through last use.
         * @see poll uwvm_trossen_status_storage
         */
        explicit Reader(roswasmc_capability const& cap) ROSWASM_CPP_NOEXCEPT : cap_(&cap)
        {
            memset(&bytes_, 0, sizeof bytes_);
        }

        /** @brief Poll once and completely decode the original selected status.
         * @details No projection, retry, allocation or unit/mode conversion. Idle11
         * is not delivery; malformed/trailing data and original failures stay explicit.
         * @param[out] out Complete writable State, disjoint from internal scratch.
         * @return Original uwvm_trossen_poll_status status; no C++ exception.
         * @thread Serialize this reader and all users of its borrowed capability.
         * @see State uwvm_trossen_poll_status
         */
#if !ROSWASM_CPP_LEGACY && ROSWASM_CPP_STANDARD >= 17
        [[nodiscard]]
#endif
        uint32_t poll(State& out) ROSWASM_CPP_NOEXCEPT
        {
            return uwvm_trossen_poll_status(cap_, &out, &bytes_);
        }
    };

    /** @brief Borrow one selected publish owner with private complete-command scratch.
     * @details No resource is opened/closed and no background thread is started.
     * cap/context/backend remain live and stable through all uses; copies still
     * borrow the same capability and require independent publication serialization.
     * @see publish uwvm_trossen_publish_command
     */
    class Publisher
    {
        roswasmc_capability const* cap_;
        unsigned char bytes_[UWVM_TROSSEN_COMMAND_CAPACITY];

    public:
        /** @brief Retain an independently granted exact selected publish capability.
         * @details Construction sends nothing and validates no model/mode/epoch.
         * @param[in] cap Live borrowed capability at a stable address until last use.
         * @see publish Command
         */
        explicit Publisher(roswasmc_capability const& cap) ROSWASM_CPP_NOEXCEPT : cap_(&cap)
        {
            memset(&bytes_, 0, sizeof bytes_);
        }

        /** @brief Encode and publish one whole selected original command once.
         * @details Caller independently validates robot/group/mode/physical bounds.
         * A transport receipt is not physical completion, and an uncertain effect
         * never permits automatic replay, stop, fault clearing or recovery.
         * @param[in] v Complete immutable Command, disjoint from this object's scratch.
         * @return Original encode/publish status unchanged; no C++ exception.
         * @thread Serialize this publisher and all users of its borrowed capability.
         * @see Command uwvm_trossen_publish_command uwvm_trossen_validate_group
         */
#if !ROSWASM_CPP_LEGACY && ROSWASM_CPP_STANDARD >= 17
        [[nodiscard]]
#endif
        uint32_t publish(Command const& v) ROSWASM_CPP_NOEXCEPT
        {
            return uwvm_trossen_publish_command(cap_, &v, bytes_, sizeof bytes_);
        }
    };
}  // namespace roswasm_trossen
#endif
