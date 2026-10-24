/* SPDX-License-Identifier: Apache-2.0 */
/** @file client.h
 * @brief Typed Wasm observation functions preserving the original AimDK fields.
 * @details The complete generated structures are project bounded representations
 * of the official messages, not vendor C ABI structures. Strings hold at most
 * 128 UTF-8 bytes and resource sequences at most four elements in this profile.
 * Larger original messages fail explicitly. Decode commits only on success.
 */
#ifndef UWVM_AGIBOT_C_CLIENT_H
#define UWVM_AGIBOT_C_CLIENT_H
#include <platform/agibot/shared/client.h>
#include <platform/agibot/c/ros2/agibot-ros2-sdk-v1-1-0-main-complete/bounded_records.h>

/**
 * @brief Fetch the original GetMcAction response through a service.call alias.
 * @param alias Borrowed exact granted alias; no URI or endpoint discovery.
 * @param response Caller-owned complete original response; unchanged on failure.
 * @param cleanup Separate close errno, including on transport failure.
 * @return Original ABI or codec error; inspect response.header.code on success.
 */
inline static uint32_t uwvm_agibot_query_mode(char const* alias, roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response* response, uint32_t* cleanup)
{
    unsigned char bytes[156];
    size_t length = 0;
    uint32_t error;
    if(!response || !cleanup)
    {
        return 22;
    }
    error = uwvm_agibot_observe(alias, UWVM_AGIBOT_GET_MC_ACTION, 3000, bytes, sizeof bytes, &length, cleanup);
    return error ? error : roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_decode(bytes, length, response);
}

/**
 * @brief Receive one complete McCommonState through a topic.subscribe alias.
 * @param alias Borrowed exact state subscription alias.
 * @param timeout_ms Monotonic poll deadline in milliseconds, 1..30000.
 * @param response Caller-owned full state; original units and frames are retained.
 * @param cleanup Separate close errno. The owner is retired on every exit.
 * @return ABI or codec error; retained QoS samples retain their original timestamps.
 */
inline static uint32_t
    uwvm_agibot_next_motion_state(char const* alias, uint32_t timeout_ms, roswasmc_bounded_2_aimdk_msgs_msg_McCommonState* response, uint32_t* cleanup)
{
    unsigned char bytes[698];
    size_t length = 0;
    uint32_t error;
    if(!response || !cleanup)
    {
        return 22;
    }
    error = uwvm_agibot_observe(alias, UWVM_AGIBOT_MC_COMMON_STATE, timeout_ms, bytes, sizeof bytes, &length, cleanup);
    return error ? error : roswasmc_bounded_2_aimdk_msgs_msg_McCommonState_decode(bytes, length, response);
}

/**
 * @brief Enumerate original LinkCraft resources on X2 Ultra variants.
 * @param alias Borrowed exact GetRobotResources service.call alias.
 * @param response Caller-owned complete bounded response; uint64 values stay exact.
 * @param cleanup Separate capability close errno.
 * @return ABI or codec error; a transport success does not imply vendor acceptance.
 * @details X2 EDU is not supported by the official resource interface. This
 * observation cannot play an action. Inspect the original CommonResponse fields.
 */
inline static uint32_t uwvm_agibot_list_resources(char const* alias, roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response* response, uint32_t* cleanup)
{
    unsigned char bytes[10236];
    size_t length = 0;
    uint32_t error;
    if(!response || !cleanup)
    {
        return 22;
    }
    error = uwvm_agibot_observe(alias, UWVM_AGIBOT_GET_ROBOT_RESOURCES, 3000, bytes, sizeof bytes, &length, cleanup);
    return error ? error : roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response_decode(bytes, length, response);
}
#endif
