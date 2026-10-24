/**
 * @file observation.h
 * @brief Read complete ABB controller observations through the ROS 2 guest SDK.
 * @details This header selects the pinned abb-ros2-complete schema family.
 * Every operation borrows one existing context and alias, opens one capability,
 * performs one service request or a finite topic-poll sequence, then closes once.
 * The caller owns all value storage. Calls are synchronous and must be serialized
 * against the context. No service retry, executor, controller connection, or grant is
 * created. Closing a capability does not stop a robot or its RAPID program.
 * @see abb_read_speed, abb_read_io, abb_read_system_state
 */
#ifndef UWVM_ABB_OBSERVATION_H
#define UWVM_ABB_OBSERVATION_H

#include <ros2/c/roswasm/ros2.h>
#include <abb/c/ros2/abb-ros2-complete/bounded_interfaces.h>
#include <string.h>

/**
 * @brief Preserve independent transport, decode, controller, and cleanup facts.
 * @details A response is usable only when response_present is nonzero. A
 * controller refusal retains the entire decoded response. The original RPC
 * envelope retains any required-length observation, including failed calls.
 * Initialize this object through an observation function before inspecting it.
 * @see abb_observation_status
 */
typedef struct abb_observation
{
    uint32_t primary;     /**< @brief First open, transport, decode, or application error. */
    uint32_t cleanup;     /**< @brief Independent result of the single close attempt. */
    int cleanup_present;  /**< @brief True only when an acquired capability was closed. */
    int response_present; /**< @brief True only after complete transactional decoding. */
    int rpc_present;      /**< @brief True only after an actual request or poll returned. */
    roswasmc_result rpc;  /**< @brief Original envelope; read only when rpc_present is true. */
} abb_observation;

/**
 * @brief Select primary failure before independent cleanup failure.
 * @param[in] observation Initialized, immutable observation; NULL is invalid.
 * @return Full SDK error code, or zero if the observation and cleanup succeeded.
 * @details This local read performs no host operation and transfers no ownership.
 * @see abb_observation
 */
inline static uint32_t abb_observation_status(abb_observation const* observation)
{
    if(!observation)
    {
        return UWVM_ROS_INVALID;
    }
    return observation->primary ? observation->primary : observation->cleanup;
}

/**
 * @brief Initialize local report storage and open exactly one service or topic alias.
 * @param[out] observation Writable report disjoint from context, alias, and owner.
 * @param[out] owner Caller-owned capability storage, valid through checked close.
 * @param[in] context Live ROS 2 context with externally provisioned permissions.
 * @param[in] alias NUL-terminated nonempty UTF-8 capability alias, never a URL.
 * @return Zero on open success; otherwise the original SDK validation/open error.
 * @details Internal helper; a failing open never issues a request. The alias
 * and context remain borrowed for this synchronous operation. Caller supplies
 * ordinary nonoverlapping live C objects, as required by the underlying SDK.
 * @see abb_observation_close
 */
inline static uint32_t abb_observation_open(abb_observation* observation, roswasmc_capability* owner, roswasmc_context const* context, char const* alias)
{
    memset(observation, 0, sizeof *observation);
    roswasmc_capability_init(owner, context);
    if(!context || !context->backend || context->backend->version != 2 || !alias || !*alias)
    {
        observation->primary = UWVM_ROS_INVALID;
        return observation->primary;
    }
    observation->primary = roswasmc_open(owner, alias, strlen(alias));
    return observation->primary;
}

/**
 * @brief Retire an acquired observation capability once and retain its close error.
 * @param[in,out] observation Report for this owner; no previous close is permitted.
 * @param[in,out] owner Stable capability belonging to this observation.
 * @details A failed open has no acquired owner and therefore no cleanup result.
 * This helper never changes primary, rpc, or decoded response storage.
 * @see abb_observation_status
 */
inline static void abb_observation_close(abb_observation* observation, roswasmc_capability* owner)
{
    if(roswasmc_is_open(owner) && !observation->cleanup_present)
    {
        observation->cleanup_present = 1;
        observation->cleanup = roswasmc_close(owner);
    }
}

/**
 * @brief Read the RAPID motion speed ratio once without changing the override.
 * @param[in] context Borrowed ROS 2 context, live until the call returns.
 * @param[in] alias Existing GetSpeedRatio service alias with call permission.
 * @param[out] response Whole response; unchanged unless response_present is true.
 * @return Owned status report, including the original RPC and close results.
 * @details All arguments must use disjoint live storage. Success requires the
 * original RC_SUCCESS=1 and a ratio in [0,100] percent. Other complete controller
 * responses produce application error 5 while preserving every response field.
 * NULL response produces error 22 before any capability acquisition.
 * @see abb_observation_status
 */
inline static abb_observation
    abb_read_speed(roswasmc_context const* context, char const* alias, roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_Response* response)
{
    abb_observation observation = UWVM_ABB_ZERO_INITIALIZER;
    roswasmc_capability owner;
    roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_Request request = UWVM_ABB_ZERO_INITIALIZER;
    if(!response)
    {
        observation.primary = UWVM_ROS_INVALID;
        return observation;
    }
    if(!abb_observation_open(&observation, &owner, context, alias))
    {
        observation.rpc = roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_call(&owner, &request, response);
        observation.rpc_present = 1;
        observation.primary = observation.rpc.error;
        if(!observation.primary)
        {
            observation.response_present = 1;
            if(response->result_code != 1 || response->speed_ratio > 100)
            {
                observation.primary = 5;
            }
        }
    }
    abb_observation_close(&observation, &owner);
    return observation;
}

/**
 * @brief Read the complete value of one configured IO signal once.
 * @param[in] context Borrowed ROS 2 context with the exact GetIOSignal type grant.
 * @param[in] alias Existing service capability alias.
 * @param[in] signal Nonempty NUL-terminated strict UTF-8 signal name, at most
 * 512 bytes; storage is borrowed only until this function returns.
 * @param[out] response Complete value, result_code, and diagnostic message.
 * @return Owned observation; controller refusal is application error 5.
 * @details Signal validation occurs before acquisition. No IO signal is written
 * and no ambiguous call is replayed. Response storage changes only after a
 * whole valid reply, including controller refusal. All arguments are disjoint.
 * @see abb_read_speed
 */
inline static abb_observation
    abb_read_io(roswasmc_context const* context, char const* alias, char const* signal, roswasmc_bounded_2_abb_robot_msgs_srv_GetIOSignal_Response* response)
{
    abb_observation observation = UWVM_ABB_ZERO_INITIALIZER;
    roswasmc_capability owner;
    roswasmc_bounded_2_abb_robot_msgs_srv_GetIOSignal_Request request = UWVM_ABB_ZERO_INITIALIZER;
    size_t length = signal ? strlen(signal) : 0;
    if(!response || !length || length > sizeof request.signal.data || !uwvm_bounded_utf8((unsigned char const*)signal, length))
    {
        observation.primary = UWVM_ROS_INVALID;
        return observation;
    }
    request.signal.size = (uint32_t)length;
    memcpy(request.signal.data, signal, length);
    if(!abb_observation_open(&observation, &owner, context, alias))
    {
        observation.rpc = roswasmc_bounded_2_abb_robot_msgs_srv_GetIOSignal_call(&owner, &request, response);
        observation.rpc_present = 1;
        observation.primary = observation.rpc.error;
        if(!observation.primary)
        {
            observation.response_present = 1;
            if(response->result_code != 1)
            {
                observation.primary = 5;
            }
        }
    }
    abb_observation_close(&observation, &owner);
    return observation;
}

/**
 * @brief Retain one subscription while awaiting a complete SystemState sample.
 * @param[in] context Borrowed ROS 2 context; serialize all operations on it.
 * @param[in] alias Exact existing SystemState subscription capability alias.
 * @param[in] attempts Poll budget in [1,250], including the first immediate poll.
 * @param[in] pause Called between idle polls; return zero or a primary SDK error.
 * Required when attempts exceeds one. It must not reenter or mutate this owner.
 * @param[out] response Caller-owned entire state; unchanged without a valid sample.
 * @return Independent operation, last-poll, and once-only close observations.
 * @details Only idle status 11 permits another poll on the same subscription.
 * Any transport/decode error stops immediately. A pause failure is primary while
 * the last original idle RPC remains separately observable. Exhaustion returns
 * idle 11. This API creates no timer; the caller controls the pause duration.
 * @see abb_read_system_state
 */
inline static abb_observation abb_wait_system_state(roswasmc_context const* context,
                                                    char const* alias,
                                                    uint32_t attempts,
                                                    uint32_t (*pause)(void),
                                                    roswasmc_bounded_2_abb_robot_msgs_msg_SystemState* response)
{
    abb_observation observation = UWVM_ABB_ZERO_INITIALIZER;
    roswasmc_capability owner;
    unsigned char wire[ROSWASMC_BOUNDED_2_ABB_ROBOT_MSGS_MSG_SYSTEMSTATE_MAX_WIRE_BYTES];
    if(!response || !attempts || attempts > 250 || (attempts > 1 && !pause))
    {
        observation.primary = UWVM_ROS_INVALID;
        return observation;
    }
    if(!abb_observation_open(&observation, &owner, context, alias))
    {
        observation.primary = roswasmc_subscribe(&owner);
        if(!observation.primary)
        {
            for(uint32_t index = 0; index < attempts; ++index)
            {
                observation.rpc = roswasmc_poll(&owner, wire, sizeof wire);
                observation.rpc_present = 1;
                observation.primary = observation.rpc.error;
                if(observation.primary != 11 || index + 1 == attempts)
                {
                    break;
                }
                uint32_t const paused = pause();
                if(paused)
                {
                    observation.primary = paused;
                    break;
                }
            }
            if(!observation.primary)
            {
                if(!observation.rpc.has_length || observation.rpc.length > sizeof wire)
                {
                    observation.primary = UWVM_ROS_INVALID;
                }
                else
                {
                    observation.primary = roswasmc_bounded_2_abb_robot_msgs_msg_SystemState_decode(wire, (size_t)observation.rpc.length, response);
                    observation.response_present = !observation.primary;
                }
            }
        }
    }
    abb_observation_close(&observation, &owner);
    return observation;
}

/**
 * @brief Subscribe and attempt exactly one nonblocking complete state read.
 * @param[in] context Borrowed ROS 2 context, valid through checked close.
 * @param[in] alias Existing exact SystemState subscription capability alias.
 * @param[out] response Whole decoded state, unchanged when no value is present.
 * @return Full operation and cleanup facts; an empty queue preserves idle 11.
 * @details This compatibility entry performs no wait. Use abb_wait_system_state
 * with a finite budget and an explicit pause for first-sample discovery.
 * @see abb_wait_system_state
 */
inline static abb_observation
    abb_read_system_state(roswasmc_context const* context, char const* alias, roswasmc_bounded_2_abb_robot_msgs_msg_SystemState* response)
{
    return abb_wait_system_state(context, alias, 1, NULL, response);
}

#endif
