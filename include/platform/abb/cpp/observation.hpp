/**
 * @file observation.hpp
 * @brief Value-oriented C++ access to complete ABB ROS 2 observations.
 * @details Each result owns its decoded value and every transport/cleanup fact.
 * The underlying C interface performs one operation and checked cleanup. No
 * capability owner escapes, so returned values may be copied after the call.
 * Callers still serialize access to the borrowed ROS context. This API uses
 * C++11 or later syntax and performs no C++ allocation or exception propagation.
 * @see abb::read_speed, abb::read_io, abb::read_system_state
 */
#pragma once

#include <abb/c/observation.h>

namespace abb
{
    /**
     * @brief Own one complete value and its independent status observations.
     * @tparam Value Complete generated C record for the selected ROS 2 interface.
     * @details value is an observation only when facts.response_present is true.
     * An application refusal can retain a complete value. No native pointer,
     * capability, or borrowed wire buffer is stored in this result.
     * @see Observation::status
     */
    template <typename Value>
    struct Observation
    {
        Value value{};           /**< @brief Owned complete record; inspect the presence flag. */
        abb_observation facts{}; /**< @brief Original RPC, primary, and close observations. */

        /**
         * @brief Select the full primary error before an independent close error.
         * @return Zero only when the operation and any required cleanup succeeded.
         * @details Local immutable read; it issues no ROS call and grants no access.
         * @see abb_observation_status
         */
        uint32_t status() const noexcept
        {
            return abb_observation_status(&facts);
        }
    };

    /** @brief Complete speed-ratio response, including controller diagnostic text.
     * @details Ratio units are integer percent; this alias changes no schema fields.
     * @see read_speed
     */
    using SpeedRatio = roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_Response;

    /** @brief Complete IO response containing value, result_code, and message.
     * @details All strings retain the selected canonical 512-byte bounds.
     * @see read_io
     */
    using IOSignal = roswasmc_bounded_2_abb_robot_msgs_srv_GetIOSignal_Response;

    /** @brief Complete controller state, including all bounded task and unit entries.
     * @details This alias preserves the original Header and nested arrays.
     * @see read_system_state
     */
    using SystemState = roswasmc_bounded_2_abb_robot_msgs_msg_SystemState;

    /**
     * @brief Read one complete GetSpeedRatio response and close its service owner.
     * @param[in] context Live borrowed ROS 2 context; serialize concurrent access.
     * @param[in] alias Nonempty existing GetSpeedRatio capability alias.
     * @return Owned complete value and original operation/cleanup facts.
     * @details Controller refusal returns status 5 while retaining the entire reply.
     * No speed override is written, and failed calls are never replayed.
     * @see abb_read_speed
     */
    inline Observation<SpeedRatio> read_speed(roswasmc_context const& context, char const* alias)
    {
        Observation<SpeedRatio> result;
        result.facts = abb_read_speed(&context, alias, &result.value);
        return result;
    }

    /**
     * @brief Read one configured IO signal without changing its value.
     * @param[in] context Borrowed ROS 2 context, live through the call.
     * @param[in] alias Existing GetIOSignal service alias with exact type permission.
     * @param[in] signal Nonempty strict UTF-8 signal name, at most 512 bytes.
     * @return Owned complete response and separate transport/controller/close facts.
     * @details Input strings are borrowed only until return. Invalid input fails
     * before capability acquisition; controller refusal retains the complete reply.
     * @see abb_read_io
     */
    inline Observation<IOSignal> read_io(roswasmc_context const& context, char const* alias, char const* signal)
    {
        Observation<IOSignal> result;
        result.facts = abb_read_io(&context, alias, signal, &result.value);
        return result;
    }

    /**
     * @brief Subscribe and attempt one nonblocking complete controller-state read.
     * @param[in] context Live borrowed ROS 2 context; serialize all operations.
     * @param[in] alias Existing SystemState topic subscription alias.
     * @return Owned whole SystemState when present; idle 11 stays a nonzero status.
     * @details The result retains original header, tasks, and mechanical units.
     * This finite example performs no wait loop or background subscription work.
     * @see abb_read_system_state
     */
    inline Observation<SystemState> read_system_state(roswasmc_context const& context, char const* alias)
    {
        Observation<SystemState> result;
        result.facts = abb_read_system_state(&context, alias, &result.value);
        return result;
    }

    /**
     * @brief Wait for the first complete state on one finite owned subscription.
     * @param[in] context Borrowed live ROS 2 context; serialize concurrent access.
     * @param[in] alias Existing SystemState topic capability alias.
     * @param[in] attempts Maximum polls in [1,250], including the immediate poll.
     * @param[in] pause Non-reentrant pause returning zero or an SDK error.
     * @return Owned whole value and independent final-poll/primary/cleanup facts.
     * @details Only idle status admits another poll. The same owner is retained
     * across pauses, allowing DDS discovery before its single checked close.
     * @see abb_wait_system_state
     */
    inline Observation<SystemState> wait_system_state(roswasmc_context const& context, char const* alias, uint32_t attempts, uint32_t (*pause)(void))
    {
        Observation<SystemState> result;
        result.facts = abb_wait_system_state(&context, alias, attempts, pause, &result.value);
        return result;
    }
}  // namespace abb
