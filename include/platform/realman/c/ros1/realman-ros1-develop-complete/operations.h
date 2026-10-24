/**
 * @file operations.h
 * @brief Preserve the complete original realman/ros1_develop canonical value domain.
 * @details The selected domain contains 101 complete record/components and 335 original fields. Declared
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
#ifndef UWVM_REALMAN_ROS1_DEVELOP_COMPLETE_OPERATIONS_H
#define UWVM_REALMAN_ROS1_DEVELOP_COMPLETE_OPERATIONS_H
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
static inline int uwvm_realman_operation_cap(roswasmc_capability const* cap)
{
    return cap && cap->context && cap->context->backend && cap->context->backend->version == 1;
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
static inline uint32_t uwvm_realman_rm_msgs_ArmState_publish(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rm_msgs_ArmState const* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_ArmState_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_ArmState_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_ArmState* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_ArmState next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 161)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_ArmState_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Arm_Analog_Output_publish(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rm_msgs_Arm_Analog_Output const* value,
                                                   unsigned char* scratch,
                                                   size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Arm_Analog_Output_poll(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_rm_msgs_Arm_Analog_Output* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Arm_Analog_Output next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 5)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Arm_Current_State_publish(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rm_msgs_Arm_Current_State const* value,
                                                   unsigned char* scratch,
                                                   size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Arm_Current_State_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Arm_Current_State_poll(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_rm_msgs_Arm_Current_State* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Arm_Current_State next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 129)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Arm_Current_State_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
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
    uwvm_realman_rm_msgs_Arm_Current_Status_publish(roswasmc_capability const* cap,
                                                    roswasmc_bounded_1_rm_msgs_Arm_Current_Status const* value,
                                                    unsigned char* scratch,
                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Arm_Current_Status_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Arm_Current_Status_poll(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Arm_Current_Status* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Arm_Current_Status next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 260)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Arm_Current_Status_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Arm_Digital_Output_publish(roswasmc_capability const* cap,
                                                    roswasmc_bounded_1_rm_msgs_Arm_Digital_Output const* value,
                                                    unsigned char* scratch,
                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Arm_Digital_Output_poll(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Arm_Digital_Output* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Arm_Digital_Output next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 2)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Arm_IO_State_publish(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Arm_IO_State const* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Arm_IO_State_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Arm_IO_State_poll(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rm_msgs_Arm_IO_State* value,
                                                              unsigned char* scratch,
                                                              size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Arm_IO_State next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 4)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Arm_IO_State_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Arm_Joint_Speed_Max_publish(roswasmc_capability const* cap,
                                                     roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max const* value,
                                                     unsigned char* scratch,
                                                     size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Arm_Joint_Speed_Max_poll(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max* value,
                                                  unsigned char* scratch,
                                                  size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 4568)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Arm_Softversion_v3_publish(roswasmc_capability const* cap,
                                                    roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3 const* value,
                                                    unsigned char* scratch,
                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Arm_Softversion_v3_poll(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3 next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 1820)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Arm_Softversion_v4_publish(roswasmc_capability const* cap,
                                                    roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4 const* value,
                                                    unsigned char* scratch,
                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Arm_Softversion_v4_poll(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4 next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 2340)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Arm_Software_Version_publish(roswasmc_capability const* cap,
                                                      roswasmc_bounded_1_rm_msgs_Arm_Software_Version const* value,
                                                      unsigned char* scratch,
                                                      size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Arm_Software_Version_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Arm_Software_Version_poll(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rm_msgs_Arm_Software_Version* value,
                                                   unsigned char* scratch,
                                                   size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Arm_Software_Version next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 3120)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Arm_Software_Version_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Cabinet_publish(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rm_msgs_Cabinet const* value,
                                                            unsigned char* scratch,
                                                            size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Cabinet_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Cabinet_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Cabinet* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Cabinet next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 334)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Cabinet_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_CartePos_publish(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rm_msgs_CartePos const* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_CartePos_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_CartePos_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_CartePos* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_CartePos next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 56)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_CartePos_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_CartePosCustom_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rm_msgs_CartePosCustom const* value,
                                                unsigned char* scratch,
                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_CartePosCustom_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_CartePosCustom_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_CartePosCustom* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_CartePosCustom next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 59)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_CartePosCustom_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_ChangeTool_Name_publish(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_ChangeTool_Name const* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_ChangeTool_Name_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_ChangeTool_Name_poll(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_ChangeTool_Name* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_ChangeTool_Name next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 260)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_ChangeTool_Name_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_ChangeTool_State_publish(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_rm_msgs_ChangeTool_State const* value,
                                                  unsigned char* scratch,
                                                  size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_ChangeTool_State_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_ChangeTool_State_poll(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_rm_msgs_ChangeTool_State* value,
                                                                  unsigned char* scratch,
                                                                  size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_ChangeTool_State next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 1)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_ChangeTool_State_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_ChangeWorkFrame_Name_publish(roswasmc_capability const* cap,
                                                      roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name const* value,
                                                      unsigned char* scratch,
                                                      size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_ChangeWorkFrame_Name_poll(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name* value,
                                                   unsigned char* scratch,
                                                   size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 260)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_ChangeWorkFrame_State_publish(roswasmc_capability const* cap,
                                                       roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State const* value,
                                                       unsigned char* scratch,
                                                       size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_ChangeWorkFrame_State_poll(roswasmc_capability const* cap,
                                                    roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State* value,
                                                    unsigned char* scratch,
                                                    size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 1)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Err_publish(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Err const* value, unsigned char* scratch, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Err_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Err_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Err* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Err next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 36)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Err_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Flowchartrunstate_publish(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rm_msgs_Flowchartrunstate const* value,
                                                   unsigned char* scratch,
                                                   size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Flowchartrunstate_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Flowchartrunstate_poll(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_rm_msgs_Flowchartrunstate* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Flowchartrunstate next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 524)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Flowchartrunstate_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Force_Position_Move_Joint_publish(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint const* value,
                                                                              unsigned char* scratch,
                                                                              size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Force_Position_Move_Joint_poll(roswasmc_capability const* cap,
                                                        roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint* value,
                                                        unsigned char* scratch,
                                                        size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 74)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Force_Position_Move_Pose_publish(roswasmc_capability const* cap,
                                                          roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose const* value,
                                                          unsigned char* scratch,
                                                          size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Force_Position_Move_Pose_poll(roswasmc_capability const* cap,
                                                       roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose* value,
                                                       unsigned char* scratch,
                                                       size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 61)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Force_Position_Move_Pose_Custom_publish(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom const* value,
                                                                                    unsigned char* scratch,
                                                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Force_Position_Move_Pose_Custom_poll(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom* value,
                                                                                 unsigned char* scratch,
                                                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 64)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Force_Position_State_publish(roswasmc_capability const* cap,
                                                      roswasmc_bounded_1_rm_msgs_Force_Position_State const* value,
                                                      unsigned char* scratch,
                                                      size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Force_Position_State_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Force_Position_State_poll(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rm_msgs_Force_Position_State* value,
                                                   unsigned char* scratch,
                                                   size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Force_Position_State next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 75)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Force_Position_State_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_GetArmState_Command_publish(roswasmc_capability const* cap,
                                                     roswasmc_bounded_1_rm_msgs_GetArmState_Command const* value,
                                                     unsigned char* scratch,
                                                     size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_GetArmState_Command_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_GetArmState_Command_poll(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_rm_msgs_GetArmState_Command* value,
                                                  unsigned char* scratch,
                                                  size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_GetArmState_Command next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 260)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_GetArmState_Command_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Get_TCP_Master_List_Param_publish(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param const* value,
                                                                              unsigned char* scratch,
                                                                              size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Get_TCP_Master_List_Param_poll(roswasmc_capability const* cap,
                                                        roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param* value,
                                                        unsigned char* scratch,
                                                        size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 268)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Gettrajectorylist_publish(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rm_msgs_Gettrajectorylist const* value,
                                                   unsigned char* scratch,
                                                   size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Gettrajectorylist_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Gettrajectorylist_poll(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_rm_msgs_Gettrajectorylist* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Gettrajectorylist next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 268)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Gettrajectorylist_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Gripper_Pick_publish(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Gripper_Pick const* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Gripper_Pick_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Gripper_Pick_poll(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rm_msgs_Gripper_Pick* value,
                                                              unsigned char* scratch,
                                                              size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Gripper_Pick next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 4)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Gripper_Pick_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Gripper_Set_publish(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Gripper_Set const* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Gripper_Set_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Gripper_Set_poll(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rm_msgs_Gripper_Set* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Gripper_Set next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 2)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Gripper_Set_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Hand_Angle_publish(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Hand_Angle const* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Hand_Angle_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Hand_Angle_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Hand_Angle* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Hand_Angle next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 13)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Hand_Angle_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Hand_Force_publish(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Hand_Force const* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Hand_Force_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Hand_Force_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Hand_Force* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Hand_Force next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 2)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Hand_Force_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Hand_Posture_publish(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Hand_Posture const* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Hand_Posture_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Hand_Posture_poll(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rm_msgs_Hand_Posture* value,
                                                              unsigned char* scratch,
                                                              size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Hand_Posture next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 3)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Hand_Posture_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Hand_Seq_publish(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rm_msgs_Hand_Seq const* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Hand_Seq_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Hand_Seq_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Hand_Seq* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Hand_Seq next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 3)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Hand_Seq_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Hand_Speed_publish(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Hand_Speed const* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Hand_Speed_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Hand_Speed_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Hand_Speed* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Hand_Speed next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 2)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Hand_Speed_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
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
static inline uint32_t uwvm_realman_rm_msgs_Hand_Status_publish(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Hand_Status const* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Hand_Status_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Hand_Status_poll(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rm_msgs_Hand_Status* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Hand_Status next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 50)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Hand_Status_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_IO_Update_publish(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rm_msgs_IO_Update const* value,
                                                              unsigned char* scratch,
                                                              size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_IO_Update_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_IO_Update_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_IO_Update* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_IO_Update next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 1)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_IO_Update_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_JointPos_publish(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rm_msgs_JointPos const* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_JointPos_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_JointPos_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_JointPos* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_JointPos next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 72)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_JointPos_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_JointPosCustom_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rm_msgs_JointPosCustom const* value,
                                                unsigned char* scratch,
                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_JointPosCustom_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_JointPosCustom_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_JointPosCustom* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_JointPosCustom next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 75)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_JointPosCustom_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Current_publish(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_rm_msgs_Joint_Current const* value,
                                                                  unsigned char* scratch,
                                                                  size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Joint_Current_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Current_poll(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Joint_Current* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Joint_Current next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 68)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Joint_Current_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_En_Flag_publish(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_rm_msgs_Joint_En_Flag const* value,
                                                                  unsigned char* scratch,
                                                                  size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Joint_En_Flag_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_En_Flag_poll(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Joint_En_Flag* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Joint_En_Flag next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 20)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Joint_En_Flag_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Enable_publish(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Joint_Enable const* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Joint_Enable_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Enable_poll(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rm_msgs_Joint_Enable* value,
                                                              unsigned char* scratch,
                                                              size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Joint_Enable next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 2)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Joint_Enable_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Joint_Error_Code_publish(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_rm_msgs_Joint_Error_Code const* value,
                                                  unsigned char* scratch,
                                                  size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Joint_Error_Code_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Error_Code_poll(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_rm_msgs_Joint_Error_Code* value,
                                                                  unsigned char* scratch,
                                                                  size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Joint_Error_Code next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 36)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Joint_Error_Code_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Joint_Max_Speed_publish(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Joint_Max_Speed const* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Max_Speed_poll(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Joint_Max_Speed* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Joint_Max_Speed next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 5)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Joint_PoseEuler_publish(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Joint_PoseEuler const* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_PoseEuler_poll(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Joint_PoseEuler* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Joint_PoseEuler next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 24)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Speed_publish(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Joint_Speed const* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Joint_Speed_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Speed_poll(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rm_msgs_Joint_Speed* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Joint_Speed next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 68)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Joint_Speed_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Step_publish(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Joint_Step const* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Joint_Step_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Joint_Step_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Joint_Step* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Joint_Step next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 9)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Joint_Step_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Teach_publish(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Joint_Teach const* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Joint_Teach_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Teach_poll(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rm_msgs_Joint_Teach* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Joint_Teach next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 264)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Joint_Teach_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Joint_Temperature_publish(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rm_msgs_Joint_Temperature const* value,
                                                   unsigned char* scratch,
                                                   size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Joint_Temperature_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Temperature_poll(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_rm_msgs_Joint_Temperature* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Joint_Temperature next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 68)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Joint_Temperature_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Voltage_publish(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_rm_msgs_Joint_Voltage const* value,
                                                                  unsigned char* scratch,
                                                                  size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Joint_Voltage_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Joint_Voltage_poll(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Joint_Voltage* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Joint_Voltage next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 68)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Joint_Voltage_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Jointversion_publish(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Jointversion const* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Jointversion_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Jointversion_poll(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rm_msgs_Jointversion* value,
                                                              unsigned char* scratch,
                                                              size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Jointversion next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 1820)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Jointversion_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_LiftState_publish(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rm_msgs_LiftState const* value,
                                                              unsigned char* scratch,
                                                              size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_LiftState_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_LiftState_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_LiftState* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_LiftState next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 7)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_LiftState_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Lift_Height_publish(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Lift_Height const* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Lift_Height_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Lift_Height_poll(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rm_msgs_Lift_Height* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Lift_Height next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 4)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Lift_Height_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Lift_In_Position_publish(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_rm_msgs_Lift_In_Position const* value,
                                                  unsigned char* scratch,
                                                  size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Lift_In_Position_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Lift_In_Position_poll(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_rm_msgs_Lift_In_Position* value,
                                                                  unsigned char* scratch,
                                                                  size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Lift_In_Position next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 263)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Lift_In_Position_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Lift_Speed_publish(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Lift_Speed const* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Lift_Speed_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Lift_Speed_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Lift_Speed* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Lift_Speed next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 2)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Lift_Speed_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Manual_Set_Force_Pose_publish(roswasmc_capability const* cap,
                                                       roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose const* value,
                                                       unsigned char* scratch,
                                                       size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Manual_Set_Force_Pose_poll(roswasmc_capability const* cap,
                                                    roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose* value,
                                                    unsigned char* scratch,
                                                    size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 392)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Mastername_publish(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Mastername const* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Mastername_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Mastername_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Mastername* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Mastername next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 260)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Mastername_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
}

/** Whole original message; transport success is not actuator completion. */
/**
 * @brief Decode the whole canonical value for the selected original interface.
 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
 * value. Returned nested values own their storage and retain every original field.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Complete owning value on success; codec failure exposes no accepted partial record.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t
    /**
     * @brief Decode the whole canonical value for the selected original interface.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
     * value. Returned nested values own their storage and retain every original field.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param value Complete original component or local protocol value, with its documented owner and bounds.
     * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_realman_rm_msgs_Modbusreaddata_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rm_msgs_Modbusreaddata const* value,
                                                unsigned char* scratch,
                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Modbusreaddata_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** One poll; idle/error never changes the caller value. No retry. */
/**
 * @brief Decode the whole canonical value for the selected original interface.
 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
 * value. Returned nested values own their storage and retain every original field.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Complete owning value on success; codec failure exposes no accepted partial record.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t uwvm_realman_rm_msgs_Modbusreaddata_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Modbusreaddata* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Modbusreaddata next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 68)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Modbusreaddata_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Modbustcpmasterinfo_publish(roswasmc_capability const* cap,
                                                     roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo const* value,
                                                     unsigned char* scratch,
                                                     size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Modbustcpmasterinfo_poll(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo* value,
                                                  unsigned char* scratch,
                                                  size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 524)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Modbustcpmasterlist_publish(roswasmc_capability const* cap,
                                                     roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist const* value,
                                                     unsigned char* scratch,
                                                     size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Modbustcpmasterlist_poll(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist* value,
                                                  unsigned char* scratch,
                                                  size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 8388)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_MoveC_publish(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_MoveC const* value, unsigned char* scratch, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_MoveC_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_MoveC_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_MoveC* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_MoveC next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 119)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_MoveC_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_MoveJ_publish(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_MoveJ const* value, unsigned char* scratch, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_MoveJ_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_MoveJ_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_MoveJ* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_MoveJ next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 73)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_MoveJ_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_MoveJ_P_publish(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_rm_msgs_MoveJ_P const* value,
                                                            unsigned char* scratch,
                                                            size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_MoveJ_P_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_MoveJ_P_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_MoveJ_P* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_MoveJ_P next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 61)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_MoveJ_P_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_MoveL_publish(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_MoveL const* value, unsigned char* scratch, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_MoveL_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_MoveL_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_MoveL* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_MoveL next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 61)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_MoveL_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Moveloffset_publish(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Moveloffset const* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Moveloffset_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Moveloffset_poll(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rm_msgs_Moveloffset* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Moveloffset next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 67)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Moveloffset_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Ort_Teach_publish(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rm_msgs_Ort_Teach const* value,
                                                              unsigned char* scratch,
                                                              size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Ort_Teach_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Ort_Teach_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Ort_Teach* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Ort_Teach next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 522)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Ort_Teach_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Plan_State_publish(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Plan_State const* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Plan_State_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Plan_State_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Plan_State* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Plan_State next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 1)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Plan_State_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Pos_Teach_publish(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rm_msgs_Pos_Teach const* value,
                                                              unsigned char* scratch,
                                                              size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Pos_Teach_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Pos_Teach_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Pos_Teach* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Pos_Teach next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 522)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Pos_Teach_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Programrunstate_publish(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Programrunstate const* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Programrunstate_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Programrunstate_poll(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Programrunstate* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Programrunstate next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 164)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Programrunstate_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_RS485_Mode_publish(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_RS485_Mode const* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_RS485_Mode_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_RS485_Mode_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_RS485_Mode* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_RS485_Mode next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 10)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_RS485_Mode_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_RS485params_publish(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_RS485params const* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_RS485params_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_RS485params_poll(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_rm_msgs_RS485params* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_RS485params next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 8)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_RS485params_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
}

/** Whole original message; transport success is not actuator completion. */
/**
 * @brief Decode the whole canonical value for the selected original interface.
 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
 * value. Returned nested values own their storage and retain every original field.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Complete owning value on success; codec failure exposes no accepted partial record.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t
    /**
     * @brief Decode the whole canonical value for the selected original interface.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
     * value. Returned nested values own their storage and retain every original field.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param value Complete original component or local protocol value, with its documented owner and bounds.
     * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_realman_rm_msgs_Read_ModbusRTU_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rm_msgs_Read_ModbusRTU const* value,
                                                unsigned char* scratch,
                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** One poll; idle/error never changes the caller value. No retry. */
/**
 * @brief Decode the whole canonical value for the selected original interface.
 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
 * value. Returned nested values own their storage and retain every original field.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Complete owning value on success; codec failure exposes no accepted partial record.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t uwvm_realman_rm_msgs_Read_ModbusRTU_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Read_ModbusRTU* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Read_ModbusRTU next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 16)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
}

/** Whole original message; transport success is not actuator completion. */
/**
 * @brief Decode the whole canonical value for the selected original interface.
 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
 * value. Returned nested values own their storage and retain every original field.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Complete owning value on success; codec failure exposes no accepted partial record.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t uwvm_realman_rm_msgs_Read_Register_publish(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_rm_msgs_Read_Register const* value,
                                                                  unsigned char* scratch,
                                                                  size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Read_Register_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** One poll; idle/error never changes the caller value. No retry. */
/**
 * @brief Decode the whole canonical value for the selected original interface.
 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
 * value. Returned nested values own their storage and retain every original field.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Complete owning value on success; codec failure exposes no accepted partial record.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t uwvm_realman_rm_msgs_Read_Register_poll(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Read_Register* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Read_Register next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 13)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Read_Register_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
}

/** Whole original message; transport success is not actuator completion. */
/**
 * @brief Decode the whole canonical value for the selected original interface.
 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
 * value. Returned nested values own their storage and retain every original field.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Complete owning value on success; codec failure exposes no accepted partial record.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t
    /**
     * @brief Decode the whole canonical value for the selected original interface.
     * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
     * value. Returned nested values own their storage and retain every original field.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param value Complete original component or local protocol value, with its documented owner and bounds.
     * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return Complete owning value on success; codec failure exposes no accepted partial record.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_realman_rm_msgs_Read_TCPandRTU_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rm_msgs_Read_TCPandRTU const* value,
                                                unsigned char* scratch,
                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** One poll; idle/error never changes the caller value. No retry. */
/**
 * @brief Decode the whole canonical value for the selected original interface.
 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
 * value. Returned nested values own their storage and retain every original field.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Complete owning value on success; codec failure exposes no accepted partial record.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t uwvm_realman_rm_msgs_Read_TCPandRTU_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Read_TCPandRTU* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Read_TCPandRTU next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 540)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Register_Data_publish(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_rm_msgs_Register_Data const* value,
                                                                  unsigned char* scratch,
                                                                  size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Register_Data_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Register_Data_poll(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Register_Data* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Register_Data next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 37)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Register_Data_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Rm_Plus_Base_publish(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Rm_Plus_Base const* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Rm_Plus_Base_poll(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rm_msgs_Rm_Plus_Base* value,
                                                              unsigned char* scratch,
                                                              size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Rm_Plus_Base next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 1597)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Rm_Plus_State_publish(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_rm_msgs_Rm_Plus_State const* value,
                                                                  unsigned char* scratch,
                                                                  size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Rm_Plus_State_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Rm_Plus_State_poll(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Rm_Plus_State* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Rm_Plus_State next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 892)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Rm_Plus_State_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Servo_GetAngle_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rm_msgs_Servo_GetAngle const* value,
                                                unsigned char* scratch,
                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Servo_GetAngle_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Servo_GetAngle_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Servo_GetAngle* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Servo_GetAngle next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 2)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Servo_GetAngle_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Servo_Move_publish(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Servo_Move const* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Servo_Move_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Servo_Move_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Servo_Move* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Servo_Move next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 4)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Servo_Move_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Set_Force_Position_publish(roswasmc_capability const* cap,
                                                    roswasmc_bounded_1_rm_msgs_Set_Force_Position const* value,
                                                    unsigned char* scratch,
                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Set_Force_Position_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Set_Force_Position_poll(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Set_Force_Position* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Set_Force_Position next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 5)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Set_Force_Position_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Set_Modbus_Mode_publish(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode const* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Set_Modbus_Mode_poll(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 272)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Set_Realtime_Push_publish(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rm_msgs_Set_Realtime_Push const* value,
                                                   unsigned char* scratch,
                                                   size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Set_Realtime_Push_poll(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_rm_msgs_Set_Realtime_Push* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Set_Realtime_Push next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 276)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Six_Force_publish(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_rm_msgs_Six_Force const* value,
                                                              unsigned char* scratch,
                                                              size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Six_Force_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Six_Force_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Six_Force* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Six_Force next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 24)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Six_Force_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Socket_Command_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rm_msgs_Socket_Command const* value,
                                                unsigned char* scratch,
                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Socket_Command_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Socket_Command_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Socket_Command* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Socket_Command next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 2)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Socket_Command_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Softwarebuildinfo_publish(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rm_msgs_Softwarebuildinfo const* value,
                                                   unsigned char* scratch,
                                                   size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Softwarebuildinfo_poll(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_rm_msgs_Softwarebuildinfo* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Softwarebuildinfo next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 520)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Start_Multi_Drag_Teach_publish(roswasmc_capability const* cap,
                                                        roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach const* value,
                                                        unsigned char* scratch,
                                                        size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Start_Multi_Drag_Teach_poll(roswasmc_capability const* cap,
                                                     roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach* value,
                                                     unsigned char* scratch,
                                                     size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 32)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Stop_publish(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Stop const* value, unsigned char* scratch, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Stop_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Stop_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Stop* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Stop next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 1)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Stop_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Stop_Teach_publish(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Stop_Teach const* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Stop_Teach_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Stop_Teach_poll(roswasmc_capability const* cap, roswasmc_bounded_1_rm_msgs_Stop_Teach* value, unsigned char* scratch, size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Stop_Teach next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 260)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Stop_Teach_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Tool_Analog_Output_publish(roswasmc_capability const* cap,
                                                    roswasmc_bounded_1_rm_msgs_Tool_Analog_Output const* value,
                                                    unsigned char* scratch,
                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Tool_Analog_Output_poll(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Tool_Analog_Output* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Tool_Analog_Output next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 4)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Tool_Digital_Output_publish(roswasmc_capability const* cap,
                                                     roswasmc_bounded_1_rm_msgs_Tool_Digital_Output const* value,
                                                     unsigned char* scratch,
                                                     size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_Tool_Digital_Output_poll(roswasmc_capability const* cap,
                                                  roswasmc_bounded_1_rm_msgs_Tool_Digital_Output* value,
                                                  unsigned char* scratch,
                                                  size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Tool_Digital_Output next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 2)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Tool_IO_State_publish(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_rm_msgs_Tool_IO_State const* value,
                                                                  unsigned char* scratch,
                                                                  size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Tool_IO_State_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Tool_IO_State_poll(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Tool_IO_State* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Tool_IO_State next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 4)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Tool_IO_State_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Trajectoryinfo_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rm_msgs_Trajectoryinfo const* value,
                                                unsigned char* scratch,
                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Trajectoryinfo_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Trajectoryinfo_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Trajectoryinfo* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Trajectoryinfo next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 524)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Trajectoryinfo_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_Trajectorylist_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rm_msgs_Trajectorylist const* value,
                                                unsigned char* scratch,
                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Trajectorylist_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Trajectorylist_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Trajectorylist* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Trajectorylist next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 8660)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Trajectorylist_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_realman_rm_msgs_Turtle_Driver_publish(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_rm_msgs_Turtle_Driver const* value,
                                                                  unsigned char* scratch,
                                                                  size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Turtle_Driver_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_realman_rm_msgs_Turtle_Driver_poll(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_rm_msgs_Turtle_Driver* value,
                                                               unsigned char* scratch,
                                                               size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Turtle_Driver next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 532)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Turtle_Driver_decode(scratch, (size_t)result.length, &next);
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
    uwvm_realman_rm_msgs_UpdateTCPmasterparam_publish(roswasmc_capability const* cap,
                                                      roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam const* value,
                                                      unsigned char* scratch,
                                                      size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_encode(value, scratch, capacity, &used);
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
    uwvm_realman_rm_msgs_UpdateTCPmasterparam_poll(roswasmc_capability const* cap,
                                                   roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam* value,
                                                   unsigned char* scratch,
                                                   size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 784)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
}

/** Whole original message; transport success is not actuator completion. */
/**
 * @brief Encode the complete ordered value for the selected original interface.
 * @details Validate initialized field domains and finite quotas before publishing output. Canonical bytes
 * exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the caller.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Whole initialized bytes or the original codec refusal; rejected data is never a native transport
 * success.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t
    /**
     * @brief Encode the complete ordered value for the selected original interface.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical bytes
     * exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the caller.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param value Complete original component or local protocol value, with its documented owner and bounds.
     * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native transport
     * success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_realman_rm_msgs_Write_ModbusRTU_publish(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Write_ModbusRTU const* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** One poll; idle/error never changes the caller value. No retry. */
/**
 * @brief Encode the complete ordered value for the selected original interface.
 * @details Validate initialized field domains and finite quotas before publishing output. Canonical bytes
 * exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the caller.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Whole initialized bytes or the original codec refusal; rejected data is never a native transport
 * success.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t uwvm_realman_rm_msgs_Write_ModbusRTU_poll(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Write_ModbusRTU* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Write_ModbusRTU next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 80)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
}

/** Whole original message; transport success is not actuator completion. */
/**
 * @brief Encode the complete ordered value for the selected original interface.
 * @details Validate initialized field domains and finite quotas before publishing output. Canonical bytes
 * exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the caller.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Whole initialized bytes or the original codec refusal; rejected data is never a native transport
 * success.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t
    /**
     * @brief Encode the complete ordered value for the selected original interface.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical bytes
     * exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the caller.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param value Complete original component or local protocol value, with its documented owner and bounds.
     * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native transport
     * success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_realman_rm_msgs_Write_Register_publish(roswasmc_capability const* cap,
                                                roswasmc_bounded_1_rm_msgs_Write_Register const* value,
                                                unsigned char* scratch,
                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Write_Register_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** One poll; idle/error never changes the caller value. No retry. */
/**
 * @brief Encode the complete ordered value for the selected original interface.
 * @details Validate initialized field domains and finite quotas before publishing output. Canonical bytes
 * exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the caller.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Whole initialized bytes or the original codec refusal; rejected data is never a native transport
 * success.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t uwvm_realman_rm_msgs_Write_Register_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_rm_msgs_Write_Register* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Write_Register next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 49)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Write_Register_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
}

/** Whole original message; transport success is not actuator completion. */
/**
 * @brief Encode the complete ordered value for the selected original interface.
 * @details Validate initialized field domains and finite quotas before publishing output. Canonical bytes
 * exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the caller.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Whole initialized bytes or the original codec refusal; rejected data is never a native transport
 * success.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t
    /**
     * @brief Encode the complete ordered value for the selected original interface.
     * @details Validate initialized field domains and finite quotas before publishing output. Canonical bytes
     * exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the caller.
     * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
     * @param value Complete original component or local protocol value, with its documented owner and bounds.
     * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return Whole initialized bytes or the original codec refusal; rejected data is never a native transport
     * success.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    uwvm_realman_rm_msgs_Write_TCPandRTU_publish(roswasmc_capability const* cap,
                                                 roswasmc_bounded_1_rm_msgs_Write_TCPandRTU const* value,
                                                 unsigned char* scratch,
                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** One poll; idle/error never changes the caller value. No retry. */
/**
 * @brief Encode the complete ordered value for the selected original interface.
 * @details Validate initialized field domains and finite quotas before publishing output. Canonical bytes
 * exclude native padding. Borrow inputs synchronously; successful returned buffers belong to the caller.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param value Complete original component or local protocol value, with its documented owner and bounds.
 * @param scratch Exclusive caller-owned writable storage with the documented finite capacity.
 * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return Whole initialized bytes or the original codec refusal; rejected data is never a native transport
 * success.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline uint32_t uwvm_realman_rm_msgs_Write_TCPandRTU_poll(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_rm_msgs_Write_TCPandRTU* value,
                                                                 unsigned char* scratch,
                                                                 size_t capacity)
{
    roswasmc_bounded_1_rm_msgs_Write_TCPandRTU next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_realman_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 604)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_decode(scratch, (size_t)result.length, &next);
    if(code)
        return code;
    *value = next;
    return 0;
}
#endif
