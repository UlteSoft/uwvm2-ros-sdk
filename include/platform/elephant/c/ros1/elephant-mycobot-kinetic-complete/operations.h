/**
 * @file operations.h
 * @brief Preserve the complete original elephant/kinetic canonical value domain.
 * @details The selected domain contains 36 complete record/components and 116 original fields. Declared
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
#ifndef UWVM_ELEPHANT_MYCOBOT_KINETIC_COMPLETE_OPERATIONS_H
#define UWVM_ELEPHANT_MYCOBOT_KINETIC_COMPLETE_OPERATIONS_H
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
static inline int uwvm_elephant_operation_cap(roswasmc_capability const* cap)
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
static inline uint32_t uwvm_elephant_mycobot_communication_MycobotAngles_publish(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_mycobot_communication_MycobotAngles const* value,
                                                                                 unsigned char* scratch,
                                                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode(value, scratch, capacity, &used);
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
    uwvm_elephant_mycobot_communication_MycobotAngles_poll(roswasmc_capability const* cap,
                                                           roswasmc_bounded_1_mycobot_communication_MycobotAngles* value,
                                                           unsigned char* scratch,
                                                           size_t capacity)
{
    roswasmc_bounded_1_mycobot_communication_MycobotAngles next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 24)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_mycobot_communication_MycobotAngles_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_elephant_mycobot_communication_MycobotCoords_publish(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_mycobot_communication_MycobotCoords const* value,
                                                                                 unsigned char* scratch,
                                                                                 size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mycobot_communication_MycobotCoords_encode(value, scratch, capacity, &used);
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
    uwvm_elephant_mycobot_communication_MycobotCoords_poll(roswasmc_capability const* cap,
                                                           roswasmc_bounded_1_mycobot_communication_MycobotCoords* value,
                                                           unsigned char* scratch,
                                                           size_t capacity)
{
    roswasmc_bounded_1_mycobot_communication_MycobotCoords next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 24)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_mycobot_communication_MycobotCoords_decode(scratch, (size_t)result.length, &next);
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
    uwvm_elephant_mycobot_communication_MycobotGripperStatus_publish(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus const* value,
                                                                     unsigned char* scratch,
                                                                     size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_elephant_mycobot_communication_MycobotGripperStatus_poll(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus* value,
                                                                                     unsigned char* scratch,
                                                                                     size_t capacity)
{
    roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 1)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_elephant_mycobot_communication_MycobotPumpStatus_publish(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus const* value,
                                                                                     unsigned char* scratch,
                                                                                     size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_elephant_mycobot_communication_MycobotPumpStatus_poll(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus* value,
                                                                                  unsigned char* scratch,
                                                                                  size_t capacity)
{
    roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 3)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_elephant_mycobot_communication_MycobotSetAngles_publish(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_mycobot_communication_MycobotSetAngles const* value,
                                                                                    unsigned char* scratch,
                                                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_elephant_mycobot_communication_MycobotSetAngles_poll(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_mycobot_communication_MycobotSetAngles* value,
                                                                                 unsigned char* scratch,
                                                                                 size_t capacity)
{
    roswasmc_bounded_1_mycobot_communication_MycobotSetAngles next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 25)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_elephant_mycobot_communication_MycobotSetCoords_publish(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_mycobot_communication_MycobotSetCoords const* value,
                                                                                    unsigned char* scratch,
                                                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_elephant_mycobot_communication_MycobotSetCoords_poll(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_mycobot_communication_MycobotSetCoords* value,
                                                                                 unsigned char* scratch,
                                                                                 size_t capacity)
{
    roswasmc_bounded_1_mycobot_communication_MycobotSetCoords next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 26)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_decode(scratch, (size_t)result.length, &next);
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
static inline roswasmc_result uwvm_elephant_mycobot_communication_GetAngles_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_mycobot_communication_GetAnglesRequest const* request,
                                                                                 roswasmc_bounded_1_mycobot_communication_GetAnglesResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mycobot_communication_GetAngles_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_elephant_mycobot_communication_GetCoords_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_mycobot_communication_GetCoordsRequest const* request,
                                                                                 roswasmc_bounded_1_mycobot_communication_GetCoordsResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mycobot_communication_GetCoords_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    uwvm_elephant_mycobot_communication_GripperStatus_call(roswasmc_capability const* cap,
                                                           roswasmc_bounded_1_mycobot_communication_GripperStatusRequest const* request,
                                                           roswasmc_bounded_1_mycobot_communication_GripperStatusResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mycobot_communication_GripperStatus_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_elephant_mycobot_communication_PumpStatus_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_mycobot_communication_PumpStatusRequest const* request,
                                                                                  roswasmc_bounded_1_mycobot_communication_PumpStatusResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mycobot_communication_PumpStatus_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_elephant_mycobot_communication_SetAngles_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_mycobot_communication_SetAnglesRequest const* request,
                                                                                 roswasmc_bounded_1_mycobot_communication_SetAnglesResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mycobot_communication_SetAngles_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result uwvm_elephant_mycobot_communication_SetCoords_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_mycobot_communication_SetCoordsRequest const* request,
                                                                                 roswasmc_bounded_1_mycobot_communication_SetCoordsResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mycobot_communication_SetCoords_call(cap, request, response);
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
static inline uint32_t uwvm_elephant_mypalletizer_communication_MypalAngles_publish(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_mypalletizer_communication_MypalAngles const* value,
                                                                                    unsigned char* scratch,
                                                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_elephant_mypalletizer_communication_MypalAngles_poll(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_mypalletizer_communication_MypalAngles* value,
                                                                                 unsigned char* scratch,
                                                                                 size_t capacity)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalAngles next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 16)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_mypalletizer_communication_MypalAngles_decode(scratch, (size_t)result.length, &next);
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
static inline uint32_t uwvm_elephant_mypalletizer_communication_MypalCoords_publish(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_mypalletizer_communication_MypalCoords const* value,
                                                                                    unsigned char* scratch,
                                                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mypalletizer_communication_MypalCoords_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_elephant_mypalletizer_communication_MypalCoords_poll(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_mypalletizer_communication_MypalCoords* value,
                                                                                 unsigned char* scratch,
                                                                                 size_t capacity)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalCoords next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 16)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_mypalletizer_communication_MypalCoords_decode(scratch, (size_t)result.length, &next);
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
    uwvm_elephant_mypalletizer_communication_MypalGripperStatus_publish(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus const* value,
                                                                        unsigned char* scratch,
                                                                        size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_elephant_mypalletizer_communication_MypalGripperStatus_poll(roswasmc_capability const* cap,
                                                                                        roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus* value,
                                                                                        unsigned char* scratch,
                                                                                        size_t capacity)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 1)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code =

        roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_decode(scratch, (size_t)result.length, &next);
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
    uwvm_elephant_mypalletizer_communication_MypalPumpStatus_publish(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus const* value,
                                                                     unsigned char* scratch,
                                                                     size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_elephant_mypalletizer_communication_MypalPumpStatus_poll(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus* value,
                                                                                     unsigned char* scratch,
                                                                                     size_t capacity)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 3)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_decode(scratch, (size_t)result.length, &next);
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
    uwvm_elephant_mypalletizer_communication_MypalSetAngles_publish(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles const* value,
                                                                    unsigned char* scratch,
                                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_elephant_mypalletizer_communication_MypalSetAngles_poll(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles* value,
                                                                                    unsigned char* scratch,
                                                                                    size_t capacity)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 17)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_decode(scratch, (size_t)result.length, &next);
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
    uwvm_elephant_mypalletizer_communication_MypalSetCoords_publish(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords const* value,
                                                                    unsigned char* scratch,
                                                                    size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
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
    code = roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_encode(value, scratch, capacity, &used);
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
static inline uint32_t uwvm_elephant_mypalletizer_communication_MypalSetCoords_poll(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords* value,
                                                                                    unsigned char* scratch,
                                                                                    size_t capacity)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_elephant_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
        return 22;
    if(capacity < 18)
        return 90;
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
        return result.error;
    if(!result.has_length || result.length > capacity)
        return 22;
    code = roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_decode(scratch, (size_t)result.length, &next);
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
    uwvm_elephant_mypalletizer_communication_GetAngles_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest const* request,
                                                            roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mypalletizer_communication_GetAngles_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    uwvm_elephant_mypalletizer_communication_GetCoords_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest const* request,
                                                            roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mypalletizer_communication_GetCoords_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    uwvm_elephant_mypalletizer_communication_GripperStatus_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest const* request,
                                                                roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mypalletizer_communication_GripperStatus_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    uwvm_elephant_mypalletizer_communication_PumpStatus_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest const* request,
                                                             roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mypalletizer_communication_PumpStatus_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    uwvm_elephant_mypalletizer_communication_SetAngles_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest const* request,
                                                            roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mypalletizer_communication_SetAngles_call(cap, request, response);
}

/** One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    uwvm_elephant_mypalletizer_communication_SetCoords_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest const* request,
                                                            roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse* response)
{
    if(!uwvm_elephant_operation_cap(cap))
        return roswasmc_action_bundle_failure(22);
    return roswasmc_bounded_1_mypalletizer_communication_SetCoords_call(cap, request, response);
}
#endif
