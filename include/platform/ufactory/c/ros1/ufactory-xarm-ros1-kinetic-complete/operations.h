/**
 * @file operations.h
 * @brief Preserve the complete original ufactory/ros1_kinetic canonical value domain.
 * @details The selected domain contains 84 complete record/components and 196 original fields. Declared
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
#ifndef UWVM_UFACTORY_XARM_ROS1_KINETIC_COMPLETE_OPERATIONS_H
#define UWVM_UFACTORY_XARM_ROS1_KINETIC_COMPLETE_OPERATIONS_H
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
static inline int uwvm_ufactory_operation_cap(roswasmc_capability const* cap)
{
    return cap && cap->context && cap->context->backend && cap->context->backend->version == 1;
}

/** Full original Action components use the generated owned role bundle.
 * send/cancel-own/feedback/result require distinct explicit grants.
 * Cancellation acknowledgement is not terminal completion or a stop. */
#define uwvm_ufactory_xarm_gripper_Move_send roswasmc_bounded_1_xarm_gripper_Move_send
#define uwvm_ufactory_xarm_gripper_Move_feedback roswasmc_bounded_1_xarm_gripper_Move_feedback
#define uwvm_ufactory_xarm_gripper_Move_result roswasmc_bounded_1_xarm_gripper_Move_result

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
static inline uint32_t uwvm_ufactory_xarm_msgs_CIOState_publish(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_xarm_msgs_CIOState const* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_ufactory_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_xarm_msgs_CIOState_encode(value, scratch, capacity, &used);
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
    uwvm_ufactory_xarm_msgs_CIOState_poll(roswasmc_capability const* cap, roswasmc_bounded_1_xarm_msgs_CIOState* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_xarm_msgs_CIOState next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_ufactory_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 332)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_xarm_msgs_CIOState_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_ufactory_xarm_msgs_IOState_publish(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_xarm_msgs_IOState const* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_ufactory_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_xarm_msgs_IOState_encode(value, scratch, capacity, &used);
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
    uwvm_ufactory_xarm_msgs_IOState_poll(roswasmc_capability const* cap, roswasmc_bounded_1_xarm_msgs_IOState* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_xarm_msgs_IOState next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_ufactory_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 16)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_xarm_msgs_IOState_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_ufactory_xarm_msgs_RobotMsg_publish(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_xarm_msgs_RobotMsg const* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_ufactory_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_xarm_msgs_RobotMsg_encode(value, scratch, capacity, &used);
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
    uwvm_ufactory_xarm_msgs_RobotMsg_poll(roswasmc_capability const* cap, roswasmc_bounded_1_xarm_msgs_RobotMsg* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_xarm_msgs_RobotMsg next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_ufactory_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 366)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_xarm_msgs_RobotMsg_decode(scratch, (size_t)result.length, &next);
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
    uwvm_ufactory_xarm_msgs_VeloMoveMsg_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_xarm_msgs_VeloMoveMsg const* value,
                                                unsigned char* scratch,
                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_ufactory_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_ufactory_xarm_msgs_VeloMoveMsg_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_xarm_msgs_VeloMoveMsg* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_1_xarm_msgs_VeloMoveMsg next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_ufactory_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 138)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_decode(scratch, (size_t)result.length, &next);
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
static inline roswasmc_result uwvm_ufactory_xarm_msgs_Call_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_xarm_msgs_CallRequest const* request,
                                                                roswasmc_bounded_1_xarm_msgs_CallResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_Call_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_ClearErr_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* request,
                                          roswasmc_bounded_1_xarm_msgs_ClearErrResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_ClearErr_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_ConfigToolModbus_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* request,
                                                  roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_FtCaliLoad_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest const* request,
                                            roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_FtCaliLoad_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_FtIdenLoad_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest const* request,
                                            roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_FtIdenLoad_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_GetAnalogIO_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* request,
                                             roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_GetControllerDigitalIO_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* request,
                                                                                  roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_GetDigitalIO_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* request,
                                              roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_GetErr_call(roswasmc_capability const* cap,
                                        roswasmc_bounded_1_xarm_msgs_GetErrRequest const* request,
                                        roswasmc_bounded_1_xarm_msgs_GetErrResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_GetErr_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_GetFloat32List_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest const* request,
                                                roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_GetFloat32List_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_GetInt32_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_xarm_msgs_GetInt32Request const* request,
                                          roswasmc_bounded_1_xarm_msgs_GetInt32Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_GetInt32_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_GetSetModbusData_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest const* request,
                                                  roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_GetSetModbusData_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_GripperConfig_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* request,
                                               roswasmc_bounded_1_xarm_msgs_GripperConfigResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_GripperConfig_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_GripperMove_call(roswasmc_capability const* cap,
                                             roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* request,
                                             roswasmc_bounded_1_xarm_msgs_GripperMoveResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_GripperMove_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_GripperState_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* request,
                                              roswasmc_bounded_1_xarm_msgs_GripperStateResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_GripperState_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_Move_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_xarm_msgs_MoveRequest const* request,
                                                                roswasmc_bounded_1_xarm_msgs_MoveResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_Move_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_MoveAxisAngle_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest const* request,
                                               roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_MoveAxisAngle_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_MoveVelo_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_xarm_msgs_MoveVeloRequest const* request,
                                          roswasmc_bounded_1_xarm_msgs_MoveVeloResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_MoveVelo_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_MoveVelocity_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest const* request,
                                              roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_MoveVelocity_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_PlayTraj_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_xarm_msgs_PlayTrajRequest const* request,
                                          roswasmc_bounded_1_xarm_msgs_PlayTrajResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_PlayTraj_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_SetAxis_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* request,
                                         roswasmc_bounded_1_xarm_msgs_SetAxisResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_SetAxis_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_SetControllerAnalogIO_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest const* request,
                                                                                 roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_SetDigitalIO_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* request,
                                              roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_SetFloat32_call(roswasmc_capability const* cap,
                                            roswasmc_bounded_1_xarm_msgs_SetFloat32Request const* request,
                                            roswasmc_bounded_1_xarm_msgs_SetFloat32Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_SetFloat32_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_SetInt16_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_1_xarm_msgs_SetInt16Request const* request,
                                          roswasmc_bounded_1_xarm_msgs_SetInt16Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_SetInt16_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_SetLoad_call(roswasmc_capability const* cap,
                                         roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* request,
                                         roswasmc_bounded_1_xarm_msgs_SetLoadResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_SetLoad_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_SetModbusTimeout_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest const* request,
                                                  roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_SetModbusTimeout_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_SetMultipleInts_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest const* request,
                                                 roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_SetMultipleInts_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_SetString_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_xarm_msgs_SetStringRequest const* request,
                                           roswasmc_bounded_1_xarm_msgs_SetStringResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_SetString_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_SetToolModbus_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* request,
                                               roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_SetToolModbus_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_TCPOffset_call(roswasmc_capability const* cap,
                                           roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* request,
                                           roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_TCPOffset_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_msgs_VacuumGripperCtrl_call(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest const* request,
                                                   roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrl_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_planner_exec_plan_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_xarm_planner_exec_planRequest const* request,
                                              roswasmc_bounded_1_xarm_planner_exec_planResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_planner_exec_plan_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_planner_joint_plan_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_1_xarm_planner_joint_planRequest const* request,
                                               roswasmc_bounded_1_xarm_planner_joint_planResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_planner_joint_plan_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    uwvm_ufactory_xarm_planner_pose_plan_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_1_xarm_planner_pose_planRequest const* request,
                                              roswasmc_bounded_1_xarm_planner_pose_planResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_planner_pose_plan_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_planner_single_straight_plan_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_xarm_planner_single_straight_planRequest const* request,
                                                                                   roswasmc_bounded_1_xarm_planner_single_straight_planResponse* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_xarm_planner_single_straight_plan_call(cap, request, response);
}
#endif
