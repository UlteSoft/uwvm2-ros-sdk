/* SPDX-License-Identifier: Apache-2.0
 * Standard-selected complete-state reader over the original C values.
 * Current generated facades share the selected profile; raw freestanding views use C bindings.
 */
#ifndef UWVM_FRANKA_STATE_HPP
#define UWVM_FRANKA_STATE_HPP
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
/** @brief Import complete C declarations with their intentional aggregate zero initialization. */
#if defined(__clang__)
# pragma clang diagnostic push
# pragma clang diagnostic ignored "-Wmissing-braces"
# pragma clang diagnostic ignored "-Wmissing-field-initializers"
#endif
#include <platform/franka/c/state.h>
#if defined(__clang__)
# pragma clang diagnostic pop
#endif
#if !defined(ROSWASM_CPP_FREESTANDING)
# include "bounded_interfaces.hpp"
#else
# include "bounded_interfaces.h"
#endif
#include <string.h>

namespace roswasm_franka
{
    /** @brief Complete selected original FrankaState observation type.
     * @details Original arrays, frames and units remain unchanged. This is a value,
     * not a libfranka real-time control interface, readiness proof or authority.
     * @see Reader uwvm_franka_state
     */
    typedef uwvm_franka_state State;
    /** @brief Complete selected original gripper Grasp goal.
     * @details Width/epsilon use metres, speed metres/second and force newtons.
     * Construction neither validates model bounds nor submits an action.
     * @see uwvm_franka_validate_grasp uwvm_franka_grasp_goal
     */
    typedef uwvm_franka_grasp_goal GraspGoal;

    /** @brief Borrow one explicitly owned complete FrankaState receive capability.
     * @details Owns only fixed wire scratch. cap/context/backend outlive this object
     * and calls at a stable address. No native object, thread, open or close occurs.
     * Copies borrow the same owner and require external capability serialization.
     * @see poll uwvm_franka_poll_state
     */
    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_franka_storage scratch_;

    public:
        /** @brief Retain a borrowed FrankaState capability without an ABI operation.
         * @details Validation and actual receive happen only in poll, under the
         * independently granted exact source-family/type/resource authority.
         * @param[in] cap Live selected receive capability, stable until last use.
         * @see poll uwvm_franka_storage
         */
        explicit Reader(roswasmc_capability const& cap) ROSWASM_CPP_NOEXCEPT : cap_(&cap)
        {
            memset(&scratch_, 0, sizeof scratch_);
        }

        /** @brief Poll once and decode every original FrankaState field.
         * @details No projection, unit/frame conversion, retry or native update loop.
         * Idle11 is not a new observation and all original failures remain numeric.
         * @param[out] value Complete writable State, disjoint from internal scratch.
         * @return Original uwvm_franka_poll_state status; no C++ exception.
         * @thread Serialize this reader and every user of its borrowed capability.
         * @see State uwvm_franka_poll_state
         */
#if !ROSWASM_CPP_LEGACY && ROSWASM_CPP_STANDARD >= 17
        [[nodiscard]]
#endif
        uint32_t poll(State& value) ROSWASM_CPP_NOEXCEPT
        {
            return uwvm_franka_poll_state(cap_, &value, &scratch_);
        }
    };
}  // namespace roswasm_franka
#endif
