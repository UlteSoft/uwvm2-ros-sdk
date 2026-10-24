/* SPDX-License-Identifier: Apache-2.0 */
/** @file client.hpp
 * @brief Exception-free C++20 Wasm facade over complete original AimDK types.
 */
#ifndef UWVM_AGIBOT_CPP_CLIENT_HPP
#define UWVM_AGIBOT_CPP_CLIENT_HPP
#include <platform/agibot/c/client.h>

namespace uwvm::agibot
{
    /** @brief Independent operation and capability-retirement results. */
    struct observation_result
    {
        uint32_t error{};
        uint32_t cleanup_error{};

        /** @brief True only after transport, complete decoding and cleanup succeed. */
        explicit operator bool() const noexcept
        {
            return error == 0;
        }
    };

    /** @brief Obtain all original GetMcAction_Response fields; output commits on success.
     * @param alias Explicit runtime alias; borrowed for the duration of this call.
     * @param response Caller-owned original response; no shared mutable state.
     * @return Transport/codec and independent close errors; vendor code is in response.
     */
    inline observation_result query_mode(char const* alias, roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response& response) noexcept
    {
        observation_result result{};
        result.error = uwvm_agibot_query_mode(alias, &response, &result.cleanup_error);
        return result;
    }

    /** @brief Receive one original state, preserving timestamp, units and frames.
     * @param alias Exact topic.subscribe alias.
     * @param timeout_ms Poll deadline, 1..30000 milliseconds.
     * @param response Full original state; caller owns its inline bounded fields.
     * @return Independent observation and owner-retirement errors.
     */
    inline observation_result next_motion_state(char const* alias, uint32_t timeout_ms, roswasmc_bounded_2_aimdk_msgs_msg_McCommonState& response) noexcept
    {
        observation_result result{};
        result.error = uwvm_agibot_next_motion_state(alias, timeout_ms, &response, &result.cleanup_error);
        return result;
    }

    /** @brief List the complete original resource records on X2 Ultra variants.
     * @param alias Exact GetRobotResources service.call alias.
     * @param response Full original bounded response, including vendor status.
     * @return ABI/codec and close errors; no action is executed or retried.
     */
    inline observation_result list_resources(char const* alias, roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response& response) noexcept
    {
        observation_result result{};
        result.error = uwvm_agibot_list_resources(alias, &response, &result.cleanup_error);
        return result;
    }
}  // namespace uwvm::agibot
#endif
