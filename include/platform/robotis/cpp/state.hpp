/* SPDX-License-Identifier: Apache-2.0
 * Standard-selected complete-state reader over the original C values.
 * Current generated facades share the selected profile; raw freestanding views use C bindings.
 */
#ifndef UWVM_TURTLEBOT3_STATE_HPP
#define UWVM_TURTLEBOT3_STATE_HPP
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#include <platform/robotis/c/state.h>
#if !defined(ROSWASM_CPP_FREESTANDING)
# include "bounded_interfaces.hpp"
#else
# include "bounded_interfaces.h"
#endif
#include <string.h>

namespace roswasm_turtlebot3
{
    /** @brief Exact selected original SensorState with all fields retained.
     * @details Profile selection and bounds follow the C complete-value definition;
     * constructing or copying this value grants no native receive permission.
     * @see Reader uwvm_turtlebot3_state
     */
    typedef uwvm_turtlebot3_state State;

    /** @brief Borrow one already-owned selected SensorState receive capability.
     * @details Retains its address and an internal wire scratch object. It owns no
     * native handle, opens/closes nothing, starts no thread, and installs no callback.
     * cap and its context/backend must outlive this reader and every poll. Copies
     * borrow the same capability and require the same external serialization.
     * @see poll uwvm_turtlebot3_poll_state
     */
    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_turtlebot3_storage scratch_;

    public:
        /** @brief Retain the address of an explicitly granted borrowed capability.
         * @details Construction performs no validation or ABI call; poll checks the
         * selected backend. Keep cap at a stable address throughout this reader's use.
         * @param[in] cap Live selected receive owner, not transferred or closed here.
         * @see poll uwvm_turtlebot3_storage
         */
        explicit Reader(roswasmc_capability const& cap) ROSWASM_CPP_NOEXCEPT : cap_(&cap)
        {
            memset(&scratch_, 0, sizeof scratch_);
        }

        /** @brief Poll once and decode one complete original SensorState.
         * @details Borrows internal scratch exclusively; idle11 is not an update,
         * capacity90 does not retry, and original numeric failures are preserved.
         * @param[out] value Writable complete selected state, disjoint from this object.
         * @return Actual uwvm_turtlebot3_poll_state status; no C++ exception is raised.
         * @thread Serialize this reader and all other users of its borrowed capability.
         * @see uwvm_turtlebot3_poll_state State
         */
#if !ROSWASM_CPP_LEGACY && ROSWASM_CPP_STANDARD >= 17
        [[nodiscard]]
#endif
        uint32_t poll(State& value) ROSWASM_CPP_NOEXCEPT
        {
            return uwvm_turtlebot3_poll_state(cap_, &value, &scratch_);
        }
    };
}  // namespace roswasm_turtlebot3
#endif
