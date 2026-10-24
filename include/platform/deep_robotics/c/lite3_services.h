/* SPDX-License-Identifier: Apache-2.0
 * Selected Lite3 SDK service methods from sdk_deploy@9ea6ee94. The genuine
 * complete drdds/StdSrvInt32 record is reused, never a guessed service shape.
 * One caller-owned alias must be independently granted to the exact endpoint.
 * No availability wait, retry, clock, UDP, process or administrative access.
 */
#ifndef UWVM_DEEP_LITE3_SERVICES_H
#define UWVM_DEEP_LITE3_SERVICES_H
#include <platform/ros2/c/roswasm/ros2.h>
#include <deep_robotics/c/ros2/deep-robotics-ros2-main-complete/bounded_interfaces.h>
typedef roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request uwvm_deep_lite3_request;
typedef roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response uwvm_deep_lite3_response;

typedef enum uwvm_deep_lite3_service
{
    UWVM_DEEP_LITE3_SDK_MODE = 1,
    UWVM_DEEP_LITE3_EMERGENCY_STOP = 2
} uwvm_deep_lite3_service;

/** @brief Original transfer server rule. Zero requests Robot mode; positive values
 * change the native publication rate. Neither is an implicit Guest right. */
static inline int uwvm_deep_lite3_sdk_mode_valid(int32_t command)
{
    return command == 0 || (command > 0 && command <= 200 && 1000 % command == 0);
}

/** @brief Pure transactional preparation. Preserve output when the value is invalid. */
static inline uint32_t uwvm_deep_lite3_prepare_sdk_mode(uwvm_deep_lite3_request* out, int32_t command)
{
    if(!out || !uwvm_deep_lite3_sdk_mode_valid(command))
        return 22;
    out->command = command;
    return 0;
}

/** @brief Match the original Lite3SdkService client, whose stop request is command0.
 * Preparation does not send anything or establish a physical stop. */
static inline uint32_t uwvm_deep_lite3_prepare_emergency_stop(uwvm_deep_lite3_request* out)
{
    if(!out)
        return 22;
    out->command = 0;
    return 0;
}

/** @brief Borrow one already-open service.call capability and issue exactly one call.
 * The host pairs alias, operation, complete request/response codec and native
 * type identity. This function cannot infer which endpoint an alias grants.
 * Success0 means a complete native result was decoded, even when result!=0.
 * Every refusal preserves out. Timeout/unknown delivery must never be replayed.
 * Closing the separate capability is resource cleanup, not native cancellation.
 */
static inline uint32_t uwvm_deep_lite3_call_once(roswasmc_capability const* cap,
                                                 uwvm_deep_lite3_service service,
                                                 uwvm_deep_lite3_request const* request,
                                                 uwvm_deep_lite3_response* out)
{
    roswasmc_result result;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != 2 || !request || !out ||
       deep_robotics_bounded_overlap(request, sizeof *request, out, sizeof *out) || deep_robotics_bounded_overlap(cap, sizeof *cap, out, sizeof *out) ||
       deep_robotics_bounded_overlap(cap->context, sizeof *cap->context, out, sizeof *out))
        return 22;
    if(service == UWVM_DEEP_LITE3_SDK_MODE)
    {
        if(!uwvm_deep_lite3_sdk_mode_valid(request->command))
            return 22;
    }
    else if(service == UWVM_DEEP_LITE3_EMERGENCY_STOP)
    {
        if(request->command != 0)
            return 22;
    }
    else
        return 22;
    result = roswasmc_bounded_2_drdds_srv_StdSrvInt32_call(cap, request, out);
    return result.error;
}
#endif
