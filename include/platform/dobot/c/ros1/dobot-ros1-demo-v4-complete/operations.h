/**
 * @file operations.h
 * @brief Preserve the complete original dobot/ros1_demo_v4 canonical value domain.
 * @details The selected domain contains 188 complete record/components and 346 original fields. Declared
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
#ifndef UWVM_DOBOT_ROS1_DEMO_V4_COMPLETE_OPERATIONS_H
#define UWVM_DOBOT_ROS1_DEMO_V4_COMPLETE_OPERATIONS_H
#include <dobot/c/ros1/dobot-ros1-demo-v4-complete/bounded_interfaces.h>
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_AI_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rosdemo_v4_AIRequest const* request,
                                                            roswasmc_bounded_1_rosdemo_v4_AIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_AI_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_AO_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rosdemo_v4_AORequest const* request,
                                                            roswasmc_bounded_1_rosdemo_v4_AOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_AO_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_AOInstant_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v4_AOInstantRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v4_AOInstantResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_AOInstant_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_AccJ_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v4_AccJRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v4_AccJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_AccJ_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_AccL_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v4_AccLRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v4_AccLResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_AccL_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_Arc_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rosdemo_v4_ArcRequest const* request,
                                                             roswasmc_bounded_1_rosdemo_v4_ArcResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_Arc_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_BrakeControl_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v4_BrakeControlRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v4_BrakeControlResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_BrakeControl_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_CP_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rosdemo_v4_CPRequest const* request,
                                                            roswasmc_bounded_1_rosdemo_v4_CPResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_CP_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_CalcTool_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v4_CalcToolRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v4_CalcToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_CalcTool_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_CalcUser_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v4_CalcUserRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v4_CalcUserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_CalcUser_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_Circle_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v4_CircleRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v4_CircleResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_Circle_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_ClearError_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v4_ClearErrorRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v4_ClearErrorResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_ClearError_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_Continue_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v4_ContinueRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v4_ContinueResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_Continue_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_DI_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rosdemo_v4_DIRequest const* request,
                                                            roswasmc_bounded_1_rosdemo_v4_DIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_DI_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_DIGroup_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v4_DIGroupRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v4_DIGroupResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_DIGroup_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_DO_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rosdemo_v4_DORequest const* request,
                                                            roswasmc_bounded_1_rosdemo_v4_DOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_DO_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_DOGroup_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v4_DOGroupRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v4_DOGroupResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_DOGroup_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_DOInstant_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v4_DOInstantRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v4_DOInstantResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_DOInstant_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_DisableRobot_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v4_DisableRobotRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v4_DisableRobotResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_DisableRobot_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_DragSensivity_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_rosdemo_v4_DragSensivityRequest const* request,
                                             roswasmc_bounded_1_rosdemo_v4_DragSensivityResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_DragSensivity_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_EmergencyStop_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_rosdemo_v4_EmergencyStopRequest const* request,
                                             roswasmc_bounded_1_rosdemo_v4_EmergencyStopResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_EmergencyStop_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_EnableRobot_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_EnableRobotRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_EnableRobotResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_EnableRobot_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_EnableSafeSkin_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinRequest const* request,
                                              roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_EnableSafeSkin_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetAO_call(roswasmc_capability const* cap,
                                     roswasmc_bounded_1_rosdemo_v4_GetAORequest const* request,
                                     roswasmc_bounded_1_rosdemo_v4_GetAOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetAO_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetAngle_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v4_GetAngleRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v4_GetAngleResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetAngle_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetCoils_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v4_GetCoilsRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v4_GetCoilsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetCoils_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetCurrentCommandId_call(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdRequest const* request,
                                                   roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandId_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetDO_call(roswasmc_capability const* cap,
                                     roswasmc_bounded_1_rosdemo_v4_GetDORequest const* request,
                                     roswasmc_bounded_1_rosdemo_v4_GetDOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetDO_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetDOGroup_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v4_GetDOGroupRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v4_GetDOGroupResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetDOGroup_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetErrorID_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v4_GetErrorIDRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v4_GetErrorIDResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetErrorID_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetHoldRegs_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_GetHoldRegsRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_GetHoldRegsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetHoldRegs_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetInBits_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v4_GetInBitsRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v4_GetInBitsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetInBits_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetInRegs_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v4_GetInRegsRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v4_GetInRegsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetInRegs_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetInputBool_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v4_GetInputBoolRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v4_GetInputBoolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetInputBool_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetInputFloat_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_rosdemo_v4_GetInputFloatRequest const* request,
                                             roswasmc_bounded_1_rosdemo_v4_GetInputFloatResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetInputFloat_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetInputInt_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_GetInputIntRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_GetInputIntResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetInputInt_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetOutputBool_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_rosdemo_v4_GetOutputBoolRequest const* request,
                                             roswasmc_bounded_1_rosdemo_v4_GetOutputBoolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetOutputBool_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetOutputFloat_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_rosdemo_v4_GetOutputFloatRequest const* request,
                                              roswasmc_bounded_1_rosdemo_v4_GetOutputFloatResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetOutputFloat_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetOutputInt_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v4_GetOutputIntRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v4_GetOutputIntResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetOutputInt_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetPose_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v4_GetPoseRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v4_GetPoseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetPose_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_GetStartPose_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v4_GetStartPoseRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v4_GetStartPoseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_GetStartPose_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_InverseKin_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v4_InverseKinRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v4_InverseKinResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_InverseKin_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_InverseSolution_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_rosdemo_v4_InverseSolutionRequest const* request,
                                               roswasmc_bounded_1_rosdemo_v4_InverseSolutionResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_InverseSolution_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_ModbusClose_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_ModbusCloseRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_ModbusCloseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_ModbusClose_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_ModbusCreate_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v4_ModbusCreateRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v4_ModbusCreateResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_ModbusCreate_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_ModbusRTUCreate_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateRequest const* request,
                                               roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreate_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_MovJ_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v4_MovJRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v4_MovJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_MovJ_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_MovJIO_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v4_MovJIORequest const* request,
                                      roswasmc_bounded_1_rosdemo_v4_MovJIOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_MovJIO_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_MovL_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v4_MovLRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v4_MovLResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_MovL_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_MovLIO_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v4_MovLIORequest const* request,
                                      roswasmc_bounded_1_rosdemo_v4_MovLIOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_MovLIO_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_MoveJog_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v4_MoveJogRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v4_MoveJogResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_MoveJog_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_Pause_call(roswasmc_capability const* cap,
                                     roswasmc_bounded_1_rosdemo_v4_PauseRequest const* request,
                                     roswasmc_bounded_1_rosdemo_v4_PauseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_Pause_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_PositiveKin_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_PositiveKinRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_PositiveKinResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_PositiveKin_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_PowerOn_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v4_PowerOnRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v4_PowerOnResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_PowerOn_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_RelJointMovJ_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v4_RelJointMovJRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v4_RelJointMovJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_RelJointMovJ_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_RelMovJTool_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_RelMovJToolRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_RelMovJToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_RelMovJTool_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_RelMovJUser_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_RelMovJUserRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_RelMovJUserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_RelMovJUser_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_RelMovLTool_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_RelMovLToolRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_RelMovLToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_RelMovLTool_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_RelMovLUser_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_RelMovLUserRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_RelMovLUserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_RelMovLUser_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_RobotMode_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v4_RobotModeRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v4_RobotModeResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_RobotMode_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_RunScript_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v4_RunScriptRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v4_RunScriptResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_RunScript_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_ServoJ_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v4_ServoJRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v4_ServoJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_ServoJ_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_ServoP_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v4_ServoPRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v4_ServoPResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_ServoP_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetBackDistance_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_rosdemo_v4_SetBackDistanceRequest const* request,
                                               roswasmc_bounded_1_rosdemo_v4_SetBackDistanceResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetBackDistance_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetCoils_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v4_SetCoilsRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v4_SetCoilsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetCoils_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetCollisionLevel_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelRequest const* request,
                                                 roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetCollisionLevel_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetHoldRegs_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_SetHoldRegsRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_SetHoldRegsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetHoldRegs_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetOutputBool_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_rosdemo_v4_SetOutputBoolRequest const* request,
                                             roswasmc_bounded_1_rosdemo_v4_SetOutputBoolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetOutputBool_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetOutputFloat_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_rosdemo_v4_SetOutputFloatRequest const* request,
                                              roswasmc_bounded_1_rosdemo_v4_SetOutputFloatResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetOutputFloat_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetOutputInt_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v4_SetOutputIntRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v4_SetOutputIntResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetOutputInt_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetPayload_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v4_SetPayloadRequest const* request,
                                          roswasmc_bounded_1_rosdemo_v4_SetPayloadResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetPayload_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_SetPostCollisionMode_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetPostCollisionMode_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetSafeSkin_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_SetSafeSkinRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_SetSafeSkinResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetSafeSkin_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetSafeWallEnable_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableRequest const* request,
                                                 roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnable_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetTool_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v4_SetToolRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v4_SetToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetTool_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetTool485_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_rosdemo_v4_SetTool485Request const* request,
                                          roswasmc_bounded_1_rosdemo_v4_SetTool485Response* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetTool485_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetToolMode_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_SetToolModeRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_SetToolModeResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetToolMode_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetToolPower_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v4_SetToolPowerRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v4_SetToolPowerResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetToolPower_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SetUser_call(roswasmc_capability const* cap,
                                       roswasmc_bounded_1_rosdemo_v4_SetUserRequest const* request,
                                       roswasmc_bounded_1_rosdemo_v4_SetUserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SetUser_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_SpeedFactor_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_SpeedFactorRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_SpeedFactorResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_SpeedFactor_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_StartDrag_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v4_StartDragRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v4_StartDragResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_StartDrag_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_StartPath_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_rosdemo_v4_StartPathRequest const* request,
                                         roswasmc_bounded_1_rosdemo_v4_StartPathResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_StartPath_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_Stop_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v4_StopRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v4_StopResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_Stop_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_StopDrag_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_rosdemo_v4_StopDragRequest const* request,
                                        roswasmc_bounded_1_rosdemo_v4_StopDragResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_StopDrag_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_StopMoveJog_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_rosdemo_v4_StopMoveJogRequest const* request,
                                           roswasmc_bounded_1_rosdemo_v4_StopMoveJogResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_StopMoveJog_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_TcpDashboard_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_rosdemo_v4_TcpDashboardRequest const* request,
                                            roswasmc_bounded_1_rosdemo_v4_TcpDashboardResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_TcpDashboard_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_Tool_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v4_ToolRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v4_ToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_Tool_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_ToolAI_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v4_ToolAIRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v4_ToolAIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_ToolAI_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_ToolDI_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v4_ToolDIRequest const* request,
                                      roswasmc_bounded_1_rosdemo_v4_ToolDIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_ToolDI_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_ToolDO_call(roswasmc_capability const* cap,
                                      roswasmc_bounded_1_rosdemo_v4_ToolDORequest const* request,
                                      roswasmc_bounded_1_rosdemo_v4_ToolDOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_ToolDO_call(cap, request, response);
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
    uwvm_dobot_rosdemo_v4_ToolDOInstant_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_rosdemo_v4_ToolDOInstantRequest const* request,
                                             roswasmc_bounded_1_rosdemo_v4_ToolDOInstantResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_ToolDOInstant_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_User_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v4_UserRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v4_UserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_User_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_VelJ_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v4_VelJRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v4_VelJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_VelJ_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_rosdemo_v4_VelL_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rosdemo_v4_VelLRequest const* request,
                                                              roswasmc_bounded_1_rosdemo_v4_VelLResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_rosdemo_v4_VelL_call(cap, request, response);
}
#endif
