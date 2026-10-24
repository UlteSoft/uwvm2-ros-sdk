/* SPDX-License-Identifier: Apache-2.0
 * Complete selected original ROS operations. Empty authority by default.
 * No endpoint, mode, unit conversion, retry or controller success is inferred.
 * Caller owns each live capability/context/backend and serializes its use.
 * All writable destinations must remain disjoint from these live objects.
 */
#ifndef UWVM_FLEXIV_ROS2_JAZZY_V2_2_COMPLETE_OPERATIONS_H
#define UWVM_FLEXIV_ROS2_JAZZY_V2_2_COMPLETE_OPERATIONS_H
#include "bounded_interfaces.h"
#include <platform/ros2/c/roswasm/ros2.h>

inline static int uwvm_flexiv_operation_cap(roswasmc_capability const* cap)
{
    return cap && cap->context && cap->context->backend && cap->context->backend->version == 2;
}

/** @brief Full original Action components use the generated owned role bundle.
 * send/cancel-own/feedback/result require distinct explicit grants.
 * Cancellation acknowledgement is not terminal completion or a stop. */
#define uwvm_flexiv_flexiv_msgs_action_ErrorRecovery_send roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_send
#define uwvm_flexiv_flexiv_msgs_action_ErrorRecovery_feedback roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_feedback
#define uwvm_flexiv_flexiv_msgs_action_ErrorRecovery_result roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_result
/** @brief Full original Action components use the generated owned role bundle.
 * send/cancel-own/feedback/result require distinct explicit grants.
 * Cancellation acknowledgement is not terminal completion or a stop. */
#define uwvm_flexiv_flexiv_msgs_action_Grasp_send roswasmc_bounded_2_flexiv_msgs_action_Grasp_send
#define uwvm_flexiv_flexiv_msgs_action_Grasp_feedback roswasmc_bounded_2_flexiv_msgs_action_Grasp_feedback
#define uwvm_flexiv_flexiv_msgs_action_Grasp_result roswasmc_bounded_2_flexiv_msgs_action_Grasp_result
/** @brief Full original Action components use the generated owned role bundle.
 * send/cancel-own/feedback/result require distinct explicit grants.
 * Cancellation acknowledgement is not terminal completion or a stop. */
#define uwvm_flexiv_flexiv_msgs_action_Move_send roswasmc_bounded_2_flexiv_msgs_action_Move_send
#define uwvm_flexiv_flexiv_msgs_action_Move_feedback roswasmc_bounded_2_flexiv_msgs_action_Move_feedback
#define uwvm_flexiv_flexiv_msgs_action_Move_result roswasmc_bounded_2_flexiv_msgs_action_Move_result

/** @brief Whole original message; transport success is not actuator completion. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_Digital_publish(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_flexiv_msgs_msg_Digital const* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_Digital_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** @brief One poll; idle/error never changes the caller value. No retry. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_Digital_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_flexiv_msgs_msg_Digital* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_Digital next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 2)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_Digital_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/** @brief Whole original message; transport success is not actuator completion. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_GPIOStates_publish(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates const* value,
                                                                      unsigned char* scratch,
                                                                      size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** @brief One poll; idle/error never changes the caller value. No retry. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_GPIOStates_poll(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 68)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/** @brief Whole original message; transport success is not actuator completion. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointImpedance_publish(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance const* value,
                                                                          unsigned char* scratch,
                                                                          size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** @brief One poll; idle/error never changes the caller value. No retry. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointImpedance_poll(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance* value,
                                                                       unsigned char* scratch,
                                                                       size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 9373)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/** @brief Whole original message; transport success is not actuator completion. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointInertiaScale_publish(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale const* value,
                                                                             unsigned char* scratch,
                                                                             size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** @brief One poll; idle/error never changes the caller value. No retry. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointInertiaScale_poll(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale* value,
                                                                          unsigned char* scratch,
                                                                          size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 8853)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/** @brief Whole original message; transport success is not actuator completion. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointPosVel_publish(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel const* value,
                                                                       unsigned char* scratch,
                                                                       size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** @brief One poll; idle/error never changes the caller value. No retry. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointPosVel_poll(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel* value,
                                                                    unsigned char* scratch,
                                                                    size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 520)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/** @brief Whole original message; transport success is not actuator completion. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_MaxContactTorque_publish(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque const* value,
                                                                            unsigned char* scratch,
                                                                            size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** @brief One poll; idle/error never changes the caller value. No retry. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_MaxContactTorque_poll(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque* value,
                                                                         unsigned char* scratch,
                                                                         size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 9113)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/** @brief Whole original message; transport success is not actuator completion. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_Mode_publish(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_flexiv_msgs_msg_Mode const* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** @brief One poll; idle/error never changes the caller value. No retry. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_Mode_poll(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_flexiv_msgs_msg_Mode* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_Mode next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 1)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_Mode_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/** @brief Whole original message; transport success is not actuator completion. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_OperationalStatus_publish(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus const* value,
                                                                             unsigned char* scratch,
                                                                             size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** @brief One poll; idle/error never changes the caller value. No retry. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_OperationalStatus_poll(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus* value,
                                                                          unsigned char* scratch,
                                                                          size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 17650)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/** @brief Whole original message; transport success is not actuator completion. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RecoveryPolicy_publish(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy const* value,
                                                                          unsigned char* scratch,
                                                                          size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** @brief One poll; idle/error never changes the caller value. No retry. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RecoveryPolicy_poll(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy* value,
                                                                       unsigned char* scratch,
                                                                       size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 1)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/** @brief Whole original message; transport success is not actuator completion. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RobotEvent_publish(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent const* value,
                                                                      unsigned char* scratch,
                                                                      size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** @brief One poll; idle/error never changes the caller value. No retry. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RobotEvent_poll(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 1053)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/** @brief Whole original message; transport success is not actuator completion. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RobotStates_publish(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_2_flexiv_msgs_msg_RobotStates const* value,
                                                                       unsigned char* scratch,
                                                                       size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/** @brief One poll; idle/error never changes the caller value. No retry. */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RobotStates_poll(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates* value,
                                                                    unsigned char* scratch,
                                                                    size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 5160)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/** @brief One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_GetOperationalStatus_call(roswasmc_capability const* cap,
                                                          roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request const* request,
                                                          roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_call(cap, request, response);
}

/** @brief One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
inline static roswasmc_result uwvm_flexiv_flexiv_msgs_srv_SetJointImpedance_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request const* request,
                                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_call(cap, request, response);
}

/** @brief One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetJointInertiaScale_call(roswasmc_capability const* cap,
                                                          roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request const* request,
                                                          roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_call(cap, request, response);
}

/** @brief One exact original service. Inspect original result fields separately.
 * Timeout/disconnection may leave controller delivery unknown. Never replay. */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetMaxContactTorque_call(roswasmc_capability const* cap,
                                                         roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request const* request,
                                                         roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_call(cap, request, response);
}
#endif
