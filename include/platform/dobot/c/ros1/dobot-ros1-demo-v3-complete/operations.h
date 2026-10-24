/**
 * @file operations.h
 * @brief Preserve the complete original dobot/ros1_demo_v3 canonical value domain.
 * @details The selected domain contains 190 complete record/components and 344 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Complete selected original ROS operations. Empty authority by default.
 * No endpoint, mode, unit conversion, retry or controller success is inferred.
 * Caller owns each live capability/context/backend and serializes its use.
 * All writable destinations must remain disjoint from these live objects.
 */
#ifndef UWVM_DOBOT_ROS1_DEMO_V3_COMPLETE_OPERATIONS_H
#define UWVM_DOBOT_ROS1_DEMO_V3_COMPLETE_OPERATIONS_H
#include <dobot/c/ros1/dobot-ros1-demo-v3-complete/bounded_interfaces.h>
#include <ros1/c/roswasm/ros1.h>

/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline int uwvm_dobot_operation_cap(roswasmc_capability const* cap)
{
    return cap && cap->context && cap->context->backend && cap->context->backend->version == 1;
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_AI_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rosdemo_v3_AIRequest const* request,
                                                            roswasmc_bounded_1_rosdemo_v3_AIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_AI_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_AO_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rosdemo_v3_AORequest const* request,
                                                            roswasmc_bounded_1_rosdemo_v3_AOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_AO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_AOExecute_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v3_AOExecuteRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v3_AOExecuteResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_AOExecute_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_AccJ_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v3_AccJRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v3_AccJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_AccJ_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_AccL_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v3_AccLRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v3_AccLResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_AccL_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_Arc_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rosdemo_v3_ArcRequest const* request,
                                                             roswasmc_bounded_1_rosdemo_v3_ArcResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_Arc_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_Arch_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v3_ArchRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v3_ArchResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_Arch_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_BrakeControl_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v3_BrakeControlRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v3_BrakeControlResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_BrakeControl_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_CP_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rosdemo_v3_CPRequest const* request,
                                                            roswasmc_bounded_1_rosdemo_v3_CPResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_CP_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_Circle_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v3_CircleRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v3_CircleResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_Circle_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_ClearError_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v3_ClearErrorRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v3_ClearErrorResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_ClearError_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_ContinueScript_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_rosdemo_v3_ContinueScriptRequest const* request,
                                              roswasmc_bounded_1_rosdemo_v3_ContinueScriptResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_ContinueScript_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_Continues_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v3_ContinuesRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v3_ContinuesResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_Continues_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_DI_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rosdemo_v3_DIRequest const* request,
                                                            roswasmc_bounded_1_rosdemo_v3_DIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_DI_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_DIGroup_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v3_DIGroupRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v3_DIGroupResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_DIGroup_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_DO_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rosdemo_v3_DORequest const* request,
                                                            roswasmc_bounded_1_rosdemo_v3_DOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_DO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_DOExecute_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v3_DOExecuteRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v3_DOExecuteResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_DOExecute_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_DOGroup_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v3_DOGroupRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v3_DOGroupResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_DOGroup_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_DigitalOutputs_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_rosdemo_v3_DigitalOutputsRequest const* request,
                                              roswasmc_bounded_1_rosdemo_v3_DigitalOutputsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_DigitalOutputs_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_DisableRobot_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v3_DisableRobotRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v3_DisableRobotResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_DisableRobot_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_EmergencyStop_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_rosdemo_v3_EmergencyStopRequest const* request,
                                             roswasmc_bounded_1_rosdemo_v3_EmergencyStopResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_EmergencyStop_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_EnableRobot_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_EnableRobotRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_EnableRobotResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_EnableRobot_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_GetAngle_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v3_GetAngleRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v3_GetAngleResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_GetAngle_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_GetCoils_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v3_GetCoilsRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v3_GetCoilsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_GetCoils_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_GetErrorID_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v3_GetErrorIDRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v3_GetErrorIDResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_GetErrorID_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_GetHoldRegs_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_GetHoldRegsRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_GetHoldRegsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_GetHoldRegs_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_GetInBits_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v3_GetInBitsRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v3_GetInBitsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_GetInBits_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_GetInRegs_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v3_GetInRegsRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v3_GetInRegsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_GetInRegs_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_GetPathStartPose_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseRequest const* request,
                                                roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_GetPathStartPose_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_GetPose_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v3_GetPoseRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v3_GetPoseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_GetPose_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_GetSixForceData_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_rosdemo_v3_GetSixForceDataRequest const* request,
                                               roswasmc_bounded_1_rosdemo_v3_GetSixForceDataResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_GetSixForceData_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_GetTerminal485_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_rosdemo_v3_GetTerminal485Request const* request,
                                              roswasmc_bounded_1_rosdemo_v3_GetTerminal485Response* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_GetTerminal485_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_GetTraceStartPose_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseRequest const* request,
                                                 roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_GetTraceStartPose_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_HandleTrajPoints_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsRequest const* request,
                                                roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_HandleTrajPoints_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_InverseSolution_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_rosdemo_v3_InverseSolutionRequest const* request,
                                               roswasmc_bounded_1_rosdemo_v3_InverseSolutionResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_InverseSolution_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_JointMovJ_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v3_JointMovJRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v3_JointMovJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_JointMovJ_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_Jump_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v3_JumpRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v3_JumpResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_Jump_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_LimZ_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v3_LimZRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v3_LimZResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_LimZ_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_LoadSwitch_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v3_LoadSwitchRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v3_LoadSwitchResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_LoadSwitch_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Retire explicit owners while preserving the independent primary failure.
 * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the native
 * cleanup reports an error. Report each cleanup result separately; do not reopen or replay an operation.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original cleanup status/facts; cleanup is independent of service or action application completion.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the native
     * cleanup reports an error. Report each cleanup result separately; do not reopen or replay an operation.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_ModbusClose_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_ModbusCloseRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_ModbusCloseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_ModbusClose_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_ModbusCreate_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v3_ModbusCreateRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v3_ModbusCreateResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_ModbusCreate_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_MovJ_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v3_MovJRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v3_MovJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_MovJ_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_MovJExt_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v3_MovJExtRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v3_MovJExtResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_MovJExt_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_MovJIO_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v3_MovJIORequest const* request,
                                      roswasmc_bounded_1_rosdemo_v3_MovJIOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_MovJIO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_MovL_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v3_MovLRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v3_MovLResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_MovL_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_MovLIO_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v3_MovLIORequest const* request,
                                      roswasmc_bounded_1_rosdemo_v3_MovLIOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_MovLIO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_MoveJog_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v3_MoveJogRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v3_MoveJogResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_MoveJog_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_PauseScript_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_PauseScriptRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_PauseScriptResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_PauseScript_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_PayLoad_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v3_PayLoadRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v3_PayLoadResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_PayLoad_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_PositiveSolution_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rosdemo_v3_PositiveSolutionRequest const* request,
                                                roswasmc_bounded_1_rosdemo_v3_PositiveSolutionResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_PositiveSolution_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_PowerOn_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v3_PowerOnRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v3_PowerOnResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_PowerOn_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_RelJointMovJ_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v3_RelJointMovJRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v3_RelJointMovJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_RelJointMovJ_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_RelMovJ_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v3_RelMovJRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v3_RelMovJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_RelMovJ_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_RelMovJTool_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_RelMovJToolRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_RelMovJToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_RelMovJTool_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_RelMovJUser_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_RelMovJUserRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_RelMovJUserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_RelMovJUser_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_RelMovL_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v3_RelMovLRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v3_RelMovLResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_RelMovL_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_RelMovLTool_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_RelMovLToolRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_RelMovLToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_RelMovLTool_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_RelMovLUser_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_RelMovLUserRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_RelMovLUserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_RelMovLUser_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_ResetRobot_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v3_ResetRobotRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v3_ResetRobotResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_ResetRobot_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_RobotMode_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v3_RobotModeRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v3_RobotModeResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_RobotMode_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_RunScript_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v3_RunScriptRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v3_RunScriptResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_RunScript_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_ServoJ_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v3_ServoJRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v3_ServoJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_ServoJ_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_ServoP_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v3_ServoPRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v3_ServoPResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_ServoP_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SetArmOrientation_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rosdemo_v3_SetArmOrientationRequest const* request,
                                                 roswasmc_bounded_1_rosdemo_v3_SetArmOrientationResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SetArmOrientation_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SetCoils_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v3_SetCoilsRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v3_SetCoilsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SetCoils_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SetCollideDrag_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_rosdemo_v3_SetCollideDragRequest const* request,
                                              roswasmc_bounded_1_rosdemo_v3_SetCollideDragResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SetCollideDrag_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SetCollisionLevel_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelRequest const* request,
                                                 roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SetCollisionLevel_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SetHoldRegs_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_SetHoldRegsRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_SetHoldRegsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SetHoldRegs_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SetObstacleAvoid_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidRequest const* request,
                                                roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoid_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SetPayload_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v3_SetPayloadRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v3_SetPayloadResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SetPayload_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SetSafeSkin_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_SetSafeSkinRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_SetSafeSkinResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SetSafeSkin_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SetTerminal485_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_rosdemo_v3_SetTerminal485Request const* request,
                                              roswasmc_bounded_1_rosdemo_v3_SetTerminal485Response* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SetTerminal485_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SetTerminalKeys_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysRequest const* request,
                                               roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SetTerminalKeys_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SpeedFactor_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_SpeedFactorRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_SpeedFactorResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SpeedFactor_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SpeedJ_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v3_SpeedJRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v3_SpeedJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SpeedJ_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SpeedL_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v3_SpeedLRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v3_SpeedLResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SpeedL_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_StartDrag_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v3_StartDragRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v3_StartDragResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_StartDrag_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_StartFCTrace_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v3_StartFCTraceRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v3_StartFCTraceResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_StartFCTrace_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_StartPath_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v3_StartPathRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v3_StartPathResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_StartPath_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_StartTrace_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v3_StartTraceRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v3_StartTraceResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_StartTrace_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_StopDrag_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v3_StopDragRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v3_StopDragResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_StopDrag_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_StopScript_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v3_StopScriptRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v3_StopScriptResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_StopScript_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_StopmoveJog_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_StopmoveJogRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_StopmoveJogResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_StopmoveJog_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_Sync_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v3_SyncRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v3_SyncResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_Sync_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_SyncAll_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v3_SyncAllRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v3_SyncAllResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_SyncAll_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_TCPSpeed_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v3_TCPSpeedRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v3_TCPSpeedResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_TCPSpeed_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_TCPSpeedEnd_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_TCPSpeedEnd_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_Tool_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v3_ToolRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v3_ToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_Tool_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_ToolAI_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v3_ToolAIRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v3_ToolAIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_ToolAI_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_ToolDI_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v3_ToolDIRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v3_ToolDIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_ToolDI_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_ToolDO_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v3_ToolDORequest const* request,
                                      roswasmc_bounded_1_rosdemo_v3_ToolDOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_ToolDO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_ToolDOExecute_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteRequest const* request,
                                             roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_ToolDOExecute_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_User_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v3_UserRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v3_UserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_User_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_dobot_rosdemo_v3_Wait_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v3_WaitRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v3_WaitResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_Wait_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_rosdemo_v3_pause_call(roswasmc_capability const* cap,
                                     roswasmc_bounded_1_rosdemo_v3_pauseRequest const* request,
                                     roswasmc_bounded_1_rosdemo_v3_pauseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v3_pause_call(cap, request, response);
}
#endif
