/**
 * @file operations.h
 * @brief Preserve the complete original dobot/ros1_v4 canonical value domain.
 * @details The selected domain contains 190 complete record/components and 356 original fields. Declared
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
#ifndef UWVM_DOBOT_ROS1_V4_COMPLETE_OPERATIONS_H
#define UWVM_DOBOT_ROS1_V4_COMPLETE_OPERATIONS_H
#include "bounded_interfaces.h"
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

/** Whole original message; transport success is not actuator completion. */
/**
 * @brief Check the complete finite representation of the selected original interface.
 * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
 * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Documented Boolean, byte count or original numeric status; this local check grants no authority.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t
    /**
     * @brief Check the complete finite representation of the selected original interface.
     * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
     * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param value Complete original component or local protocol value, with its documented owner and bounds.
     * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return Documented Boolean, byte count or original numeric status; this local check grants no authority.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_dobot_v4_bringup_RobotStatus_publish(roswasmc_capability const* cap,
                                                    roswasmc_bounded_1_dobot_v4_bringup_RobotStatus const* value,
                                                    unsigned char* scratch,
                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_dobot_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       /**
        * @brief Maintain the bounded local protocol state for the selected original interface.
        * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
        * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
        * synchronous return.
        * @param value Complete original component or local protocol value, with its documented owner and
        * bounds.
        * @param value Complete original component or local protocol value, with its documented owner and
        * bounds.
        * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
        * @param code Complete original component or local protocol value, with its documented owner and
        * bounds.
        * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
        * @param capacity Finite active count/capacity in bytes or elements as specified by the selected
        * schema.
        * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous
        * call.
        * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
        * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous
        * call.
        * @param value Complete original component or local protocol value, with its documented owner and
        * bounds.
        * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
        * @param capacity Finite active count/capacity in bytes or elements as specified by the selected
        * schema.
        * @return The declared local result; errors remain separate from native operation and cleanup
        * outcomes.
        * @par Permissions
        * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
        */
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    code = roswasmc_bounded_1_dobot_v4_bringup_RobotStatus_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** One poll; idle/error never changes the caller value. No retry. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t
    /**
     * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
     * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
     * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param value Complete original component or local protocol value, with its documented owner and bounds.
     * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_dobot_v4_bringup_RobotStatus_poll(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_RobotStatus* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    roswasmc_bounded_1_dobot_v4_bringup_RobotStatus next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_dobot_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 2)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_dobot_v4_bringup_RobotStatus_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
}

/** Whole original message; transport success is not actuator completion. */
/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t
    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
     * return.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param value Complete original component or local protocol value, with its documented owner and bounds.
     * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_dobot_v4_bringup_ToolVectorActual_publish(roswasmc_capability const* cap,
                                                         roswasmc_bounded_1_dobot_v4_bringup_ToolVectorActual const* value,
                                                         unsigned char* scratch,
                                                         size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_dobot_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       /**
        * @brief Maintain the bounded local protocol state for the selected original interface.
        * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
        * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
        * synchronous return.
        * @param value Complete original component or local protocol value, with its documented owner and
        * bounds.
        * @param value Complete original component or local protocol value, with its documented owner and
        * bounds.
        * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
        * @param code Complete original component or local protocol value, with its documented owner and
        * bounds.
        * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
        * @param capacity Finite active count/capacity in bytes or elements as specified by the selected
        * schema.
        * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous
        * call.
        * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
        * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous
        * call.
        * @param value Complete original component or local protocol value, with its documented owner and
        * bounds.
        * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
        * @param capacity Finite active count/capacity in bytes or elements as specified by the selected
        * schema.
        * @return The declared local result; errors remain separate from native operation and cleanup
        * outcomes.
        * @par Permissions
        * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
        */
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    code = roswasmc_bounded_1_dobot_v4_bringup_ToolVectorActual_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** One poll; idle/error never changes the caller value. No retry. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t
    /**
     * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
     * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
     * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param value Complete original component or local protocol value, with its documented owner and bounds.
     * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_dobot_dobot_v4_bringup_ToolVectorActual_poll(roswasmc_capability const* cap,
                                                      roswasmc_bounded_1_dobot_v4_bringup_ToolVectorActual* value,
                                                      unsigned char* scratch,
                                                      size_t capacity)
{
    roswasmc_bounded_1_dobot_v4_bringup_ToolVectorActual next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_dobot_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 48)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_dobot_v4_bringup_ToolVectorActual_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
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
    uwvm_dobot_dobot_v4_bringup_AI_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_dobot_v4_bringup_AIRequest const* request,
                                        roswasmc_bounded_1_dobot_v4_bringup_AIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_AI_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_AO_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_dobot_v4_bringup_AORequest const* request,
                                        roswasmc_bounded_1_dobot_v4_bringup_AOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_AO_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_AOInstant_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_dobot_v4_bringup_AOInstantRequest const* request,
                                               roswasmc_bounded_1_dobot_v4_bringup_AOInstantResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_AOInstant_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_AccJ_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_dobot_v4_bringup_AccJRequest const* request,
                                          roswasmc_bounded_1_dobot_v4_bringup_AccJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_AccJ_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_AccL_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_dobot_v4_bringup_AccLRequest const* request,
                                          roswasmc_bounded_1_dobot_v4_bringup_AccLResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_AccL_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_Arc_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_dobot_v4_bringup_ArcRequest const* request,
                                         roswasmc_bounded_1_dobot_v4_bringup_ArcResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_Arc_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_BrakeControl_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_dobot_v4_bringup_BrakeControlRequest const* request,
                                                  roswasmc_bounded_1_dobot_v4_bringup_BrakeControlResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_BrakeControl_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_CP_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_dobot_v4_bringup_CPRequest const* request,
                                        roswasmc_bounded_1_dobot_v4_bringup_CPResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_CP_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_CalcTool_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_dobot_v4_bringup_CalcToolRequest const* request,
                                              roswasmc_bounded_1_dobot_v4_bringup_CalcToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_CalcTool_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_CalcUser_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_dobot_v4_bringup_CalcUserRequest const* request,
                                              roswasmc_bounded_1_dobot_v4_bringup_CalcUserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_CalcUser_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_Circle_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_dobot_v4_bringup_CircleRequest const* request,
                                            roswasmc_bounded_1_dobot_v4_bringup_CircleResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_Circle_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_ClearError_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_dobot_v4_bringup_ClearErrorRequest const* request,
                                                roswasmc_bounded_1_dobot_v4_bringup_ClearErrorResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_ClearError_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_Continue_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_dobot_v4_bringup_ContinueRequest const* request,
                                              roswasmc_bounded_1_dobot_v4_bringup_ContinueResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_Continue_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_DI_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_dobot_v4_bringup_DIRequest const* request,
                                        roswasmc_bounded_1_dobot_v4_bringup_DIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_DI_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_DIGroup_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_dobot_v4_bringup_DIGroupRequest const* request,
                                             roswasmc_bounded_1_dobot_v4_bringup_DIGroupResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_DIGroup_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_DO_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_dobot_v4_bringup_DORequest const* request,
                                        roswasmc_bounded_1_dobot_v4_bringup_DOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_DO_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_DOGroup_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_dobot_v4_bringup_DOGroupRequest const* request,
                                             roswasmc_bounded_1_dobot_v4_bringup_DOGroupResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_DOGroup_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_DOInstant_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_dobot_v4_bringup_DOInstantRequest const* request,
                                               roswasmc_bounded_1_dobot_v4_bringup_DOInstantResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_DOInstant_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_DisableRobot_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_dobot_v4_bringup_DisableRobotRequest const* request,
                                                  roswasmc_bounded_1_dobot_v4_bringup_DisableRobotResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_DisableRobot_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_DragSensivity_call(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_dobot_v4_bringup_DragSensivityRequest const* request,
                                                   roswasmc_bounded_1_dobot_v4_bringup_DragSensivityResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_DragSensivity_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_EmergencyStop_call(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopRequest const* request,
                                                   roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_EmergencyStop_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_EnableRobot_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_EnableRobotRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_EnableRobotResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_EnableRobot_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_dobot_v4_bringup_EnableSafeSkin_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinRequest const* request,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkin_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetAO_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_dobot_v4_bringup_GetAORequest const* request,
                                           roswasmc_bounded_1_dobot_v4_bringup_GetAOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetAO_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetAngle_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_dobot_v4_bringup_GetAngleRequest const* request,
                                              roswasmc_bounded_1_dobot_v4_bringup_GetAngleResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetAngle_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetCoils_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_dobot_v4_bringup_GetCoilsRequest const* request,
                                              roswasmc_bounded_1_dobot_v4_bringup_GetCoilsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetCoils_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetCurrentCommandId_call(roswasmc_capability const* cap,
                                                         roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdRequest const* request,
                                                         roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandId_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetDO_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_dobot_v4_bringup_GetDORequest const* request,
                                           roswasmc_bounded_1_dobot_v4_bringup_GetDOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetDO_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetDOGroup_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupRequest const* request,
                                                roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetDOGroup_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetErrorID_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDRequest const* request,
                                                roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetErrorID_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetHoldRegs_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegs_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetInBits_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_dobot_v4_bringup_GetInBitsRequest const* request,
                                               roswasmc_bounded_1_dobot_v4_bringup_GetInBitsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetInBits_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetInRegs_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_dobot_v4_bringup_GetInRegsRequest const* request,
                                               roswasmc_bounded_1_dobot_v4_bringup_GetInRegsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetInRegs_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetInputBool_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolRequest const* request,
                                                  roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetInputBool_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetInputFloat_call(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatRequest const* request,
                                                   roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetInputFloat_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetInputInt_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_GetInputIntRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_GetInputIntResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetInputInt_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetOutputBool_call(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolRequest const* request,
                                                   roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetOutputBool_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_dobot_v4_bringup_GetOutputFloat_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatRequest const* request,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloat_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetOutputInt_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntRequest const* request,
                                                  roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetOutputInt_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetPose_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_dobot_v4_bringup_GetPoseRequest const* request,
                                             roswasmc_bounded_1_dobot_v4_bringup_GetPoseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetPose_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_GetStartPose_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseRequest const* request,
                                                  roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_GetStartPose_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_InverseKin_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_dobot_v4_bringup_InverseKinRequest const* request,
                                                roswasmc_bounded_1_dobot_v4_bringup_InverseKinResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_InverseKin_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_dobot_v4_bringup_InverseSolution_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionRequest const* request,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_InverseSolution_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_ModbusClose_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_ModbusClose_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_ModbusCreate_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateRequest const* request,
                                                  roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_ModbusCreate_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_dobot_v4_bringup_ModbusRTUCreate_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateRequest const* request,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreate_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_MovJ_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_dobot_v4_bringup_MovJRequest const* request,
                                          roswasmc_bounded_1_dobot_v4_bringup_MovJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_MovJ_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_MovJIO_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_dobot_v4_bringup_MovJIORequest const* request,
                                            roswasmc_bounded_1_dobot_v4_bringup_MovJIOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_MovJIO_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_MovL_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_dobot_v4_bringup_MovLRequest const* request,
                                          roswasmc_bounded_1_dobot_v4_bringup_MovLResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_MovL_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_MovLIO_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_dobot_v4_bringup_MovLIORequest const* request,
                                            roswasmc_bounded_1_dobot_v4_bringup_MovLIOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_MovLIO_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_MoveJog_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_dobot_v4_bringup_MoveJogRequest const* request,
                                             roswasmc_bounded_1_dobot_v4_bringup_MoveJogResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_MoveJog_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_Pause_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_dobot_v4_bringup_PauseRequest const* request,
                                           roswasmc_bounded_1_dobot_v4_bringup_PauseResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_Pause_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_PositiveKin_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_PositiveKinRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_PositiveKinResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_PositiveKin_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_PowerOn_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_dobot_v4_bringup_PowerOnRequest const* request,
                                             roswasmc_bounded_1_dobot_v4_bringup_PowerOnResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_PowerOn_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_RelJointMovJ_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJRequest const* request,
                                                  roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJ_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_RelMovJTool_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_RelMovJTool_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_RelMovJUser_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_RelMovJUser_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_RelMovLTool_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_RelMovLTool_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_RelMovLUser_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_RelMovLUser_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_RobotMode_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_dobot_v4_bringup_RobotModeRequest const* request,
                                               roswasmc_bounded_1_dobot_v4_bringup_RobotModeResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_RobotMode_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_RunScript_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_dobot_v4_bringup_RunScriptRequest const* request,
                                               roswasmc_bounded_1_dobot_v4_bringup_RunScriptResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_RunScript_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_ServoJ_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_dobot_v4_bringup_ServoJRequest const* request,
                                            roswasmc_bounded_1_dobot_v4_bringup_ServoJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_ServoJ_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_ServoP_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_dobot_v4_bringup_ServoPRequest const* request,
                                            roswasmc_bounded_1_dobot_v4_bringup_ServoPResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_ServoP_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_dobot_v4_bringup_SetBackDistance_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceRequest const* request,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetBackDistance_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetCoils_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_dobot_v4_bringup_SetCoilsRequest const* request,
                                              roswasmc_bounded_1_dobot_v4_bringup_SetCoilsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetCoils_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_dobot_v4_bringup_SetCollisionLevel_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevel_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetHoldRegs_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegs_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetOutputBool_call(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolRequest const* request,
                                                   roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetOutputBool_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_dobot_v4_bringup_SetOutputFloat_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatRequest const* request,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloat_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetOutputInt_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntRequest const* request,
                                                  roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetOutputInt_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetPayload_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_dobot_v4_bringup_SetPayloadRequest const* request,
                                                roswasmc_bounded_1_dobot_v4_bringup_SetPayloadResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetPayload_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetPostCollisionMode_call(roswasmc_capability const* cap,
                                                          roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeRequest const* request,
                                                          roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionMode_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetSafeSkin_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkin_call(cap, request, response);
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
static inline roswasmc_result uwvm_dobot_dobot_v4_bringup_SetSafeWallEnable_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnable_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetTool_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_dobot_v4_bringup_SetToolRequest const* request,
                                             roswasmc_bounded_1_dobot_v4_bringup_SetToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetTool_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetTool485_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_dobot_v4_bringup_SetTool485Request const* request,
                                                roswasmc_bounded_1_dobot_v4_bringup_SetTool485Response* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetTool485_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetToolMode_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_SetToolModeRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_SetToolModeResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetToolMode_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetToolPower_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerRequest const* request,
                                                  roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetToolPower_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SetUser_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_dobot_v4_bringup_SetUserRequest const* request,
                                             roswasmc_bounded_1_dobot_v4_bringup_SetUserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SetUser_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_SpeedFactor_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_SpeedFactor_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_StartDrag_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_dobot_v4_bringup_StartDragRequest const* request,
                                               roswasmc_bounded_1_dobot_v4_bringup_StartDragResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_StartDrag_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_StartPath_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_dobot_v4_bringup_StartPathRequest const* request,
                                               roswasmc_bounded_1_dobot_v4_bringup_StartPathResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_StartPath_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_Stop_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_dobot_v4_bringup_StopRequest const* request,
                                          roswasmc_bounded_1_dobot_v4_bringup_StopResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_Stop_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_StopDrag_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_dobot_v4_bringup_StopDragRequest const* request,
                                              roswasmc_bounded_1_dobot_v4_bringup_StopDragResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_StopDrag_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_StopMoveJog_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogRequest const* request,
                                                 roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_StopMoveJog_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_TcpDashboard_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardRequest const* request,
                                                  roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_TcpDashboard_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_Tool_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_dobot_v4_bringup_ToolRequest const* request,
                                          roswasmc_bounded_1_dobot_v4_bringup_ToolResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_Tool_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_ToolAI_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_dobot_v4_bringup_ToolAIRequest const* request,
                                            roswasmc_bounded_1_dobot_v4_bringup_ToolAIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_ToolAI_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_ToolDI_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_dobot_v4_bringup_ToolDIRequest const* request,
                                            roswasmc_bounded_1_dobot_v4_bringup_ToolDIResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_ToolDI_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_ToolDO_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_dobot_v4_bringup_ToolDORequest const* request,
                                            roswasmc_bounded_1_dobot_v4_bringup_ToolDOResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_ToolDO_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_ToolDOInstant_call(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantRequest const* request,
                                                   roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstant_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_User_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_dobot_v4_bringup_UserRequest const* request,
                                          roswasmc_bounded_1_dobot_v4_bringup_UserResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_User_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_VelJ_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_dobot_v4_bringup_VelJRequest const* request,
                                          roswasmc_bounded_1_dobot_v4_bringup_VelJResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_VelJ_call(cap, request, response);
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
    uwvm_dobot_dobot_v4_bringup_VelL_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_dobot_v4_bringup_VelLRequest const* request,
                                          roswasmc_bounded_1_dobot_v4_bringup_VelLResponse* response)
{
    if(!uwvm_dobot_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_dobot_v4_bringup_VelL_call(cap, request, response);
}
#endif
