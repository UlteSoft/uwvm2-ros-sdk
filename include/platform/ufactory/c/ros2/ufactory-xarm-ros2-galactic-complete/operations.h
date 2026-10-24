/**
 * @file operations.h
 * @brief Preserve the complete original ufactory/ros2_galactic canonical value domain.
 * @details The selected domain contains 111 complete record/components and 300 original fields. Declared
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
#ifndef UWVM_UFACTORY_XARM_ROS2_GALACTIC_COMPLETE_OPERATIONS_H
#define UWVM_UFACTORY_XARM_ROS2_GALACTIC_COMPLETE_OPERATIONS_H
#include "bounded_interfaces.h"
#include <ros2/c/roswasm/ros2.h>

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
    return cap && cap->context && cap->context->backend && cap->context->backend->version == 2;
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
    uwvm_ufactory_xarm_msgs_msg_CIOState_publish(roswasmc_capability const* cap,
                                                 roswasmc_bounded_2_xarm_msgs_msg_CIOState const* value,
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
    code = roswasmc_bounded_2_xarm_msgs_msg_CIOState_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_ufactory_xarm_msgs_msg_CIOState_poll(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_xarm_msgs_msg_CIOState* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    roswasmc_bounded_2_xarm_msgs_msg_CIOState next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_ufactory_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 328)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_2_xarm_msgs_msg_CIOState_decode(scratch, (size_t)result.length, &next);
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
    uwvm_ufactory_xarm_msgs_msg_IOState_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_2_xarm_msgs_msg_IOState const* value,
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
    code = roswasmc_bounded_2_xarm_msgs_msg_IOState_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_ufactory_xarm_msgs_msg_IOState_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_xarm_msgs_msg_IOState* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_2_xarm_msgs_msg_IOState next = UWVM_ROS_C_ZERO_INITIALIZER;
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
    code = roswasmc_bounded_2_xarm_msgs_msg_IOState_decode(scratch, (size_t)result.length, &next);
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
    uwvm_ufactory_xarm_msgs_msg_MoveVelocity_publish(roswasmc_capability const* cap,
                                                     roswasmc_bounded_2_xarm_msgs_msg_MoveVelocity const* value,
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
    code = roswasmc_bounded_2_xarm_msgs_msg_MoveVelocity_encode(value, scratch, capacity, &used);
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
    uwvm_ufactory_xarm_msgs_msg_MoveVelocity_poll(roswasmc_capability const* cap,
                                                  roswasmc_bounded_2_xarm_msgs_msg_MoveVelocity* value,
                                                  unsigned char* scratch,
                                                  size_t capacity)
{
    roswasmc_bounded_2_xarm_msgs_msg_MoveVelocity next = UWVM_ROS_C_ZERO_INITIALIZER;
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
    code = roswasmc_bounded_2_xarm_msgs_msg_MoveVelocity_decode(scratch, (size_t)result.length, &next);
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
    uwvm_ufactory_xarm_msgs_msg_RobotMsg_publish(roswasmc_capability const* cap,
                                                 roswasmc_bounded_2_xarm_msgs_msg_RobotMsg const* value,
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
    code = roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_ufactory_xarm_msgs_msg_RobotMsg_poll(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_xarm_msgs_msg_RobotMsg* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    roswasmc_bounded_2_xarm_msgs_msg_RobotMsg next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_ufactory_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 362)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_decode(scratch, (size_t)result.length, &next);
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
    uwvm_ufactory_xarm_msgs_srv_BioGripperCtrl_call(roswasmc_capability const* cap,
                                                    roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request const* request,
                                                    roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_srv_BioGripperEnable_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request const* request,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_Call_call(roswasmc_capability const* cap,
                                          roswasmc_bounded_2_xarm_msgs_srv_Call_Request const* request,
                                          roswasmc_bounded_2_xarm_msgs_srv_Call_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_Call_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_srv_FtAdmittanceParams_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Request const* request,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_FtCaliLoad_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request const* request,
                                                roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_FtForceConfig_call(roswasmc_capability const* cap,
                                                   roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request const* request,
                                                   roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_FtForceParams_call(roswasmc_capability const* cap,
                                                   roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Request const* request,
                                                   roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_FtForcePid_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request const* request,
                                                roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_FtImpedance_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request const* request,
                                                 roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_GetAnalogIO_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request const* request,
                                                 roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_GetDigitalIO_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request const* request,
                                                  roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_GetFloat32_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request const* request,
                                                roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_GetFloat32List_call(roswasmc_capability const* cap,
                                                    roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request const* request,
                                                    roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_GetInt16_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request const* request,
                                              roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt16_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_GetInt16List_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request const* request,
                                                  roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_GetInt32_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request const* request,
                                              roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt32_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_GetInt32ByType_call(roswasmc_capability const* cap,
                                                    roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request const* request,
                                                    roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_srv_GetSetModbusData_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request const* request,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_GripperMove_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request const* request,
                                                 roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_GripperMove_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_IdenLoad_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request const* request,
                                              roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    uwvm_ufactory_xarm_msgs_srv_LinearMotorBackOrigin_call(roswasmc_capability const* cap,
                                                           roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Request const* request,
                                                           roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_srv_LinearMotorSetPos_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Request const* request,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    uwvm_ufactory_xarm_msgs_srv_LinearTrackBackOrigin_call(roswasmc_capability const* cap,
                                                           roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request const* request,
                                                           roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_srv_LinearTrackSetPos_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request const* request,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_MoveCartesian_call(roswasmc_capability const* cap,
                                                   roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request const* request,
                                                   roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_MoveCircle_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request const* request,
                                                roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_MoveHome_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request const* request,
                                              roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_MoveHome_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_MoveJoint_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request const* request,
                                               roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_MoveVelocity_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request const* request,
                                                  roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_PlanExec_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request const* request,
                                              roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_PlanExec_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_PlanJoint_call(roswasmc_capability const* cap,
                                               roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request const* request,
                                               roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_PlanPose_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request const* request,
                                              roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_PlanPose_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_srv_PlanSingleStraight_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request const* request,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_srv_RobotiqActivate_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request const* request,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_srv_RobotiqGetStatus_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request const* request,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_RobotiqMove_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request const* request,
                                                 roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_RobotiqReset_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request const* request,
                                                  roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_SetAnalogIO_call(roswasmc_capability const* cap,
                                                 roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request const* request,
                                                 roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_SetDigitalIO_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request const* request,
                                                  roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_SetFloat32_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request const* request,
                                                roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_SetFloat32List_call(roswasmc_capability const* cap,
                                                    roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request const* request,
                                                    roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_SetInt16_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request const* request,
                                              roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_SetInt16ById_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request const* request,
                                                  roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_SetInt16List_call(roswasmc_capability const* cap,
                                                  roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request const* request,
                                                  roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_SetInt32_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request const* request,
                                              roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt32_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_SetInt32ByType_call(roswasmc_capability const* cap,
                                                    roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request const* request,
                                                    roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_srv_SetModbusTimeout_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request const* request,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_SetTcpLoad_call(roswasmc_capability const* cap,
                                                roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request const* request,
                                                roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_TrajCtrl_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request const* request,
                                              roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded component.
     * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
     * timeout is not evidence of rollback or actuator completion.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param request Complete original component or local protocol value, with its documented owner and bounds.
     * @param response Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_ufactory_xarm_msgs_srv_TrajPlay_call(roswasmc_capability const* cap,
                                              roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request const* request,
                                              roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_ufactory_xarm_msgs_srv_VacuumGripperCtrl_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request const* request,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response* response)
{
    if(!uwvm_ufactory_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_call(cap, request, response);
}
#endif
