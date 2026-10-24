/**
 * @file state.h
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see document/platform/doosan/en_US/README.md
 */

/* SPDX-License-Identifier: Apache-2.0
 * Complete original Doosan values. No native controller SDK, address, policy or ownership
 * is inferred. Exactly one source domain must match the generated include path.
 */
#ifndef UWVM_DOOSAN_STATE_H
#define UWVM_DOOSAN_STATE_H
#include <ros/c/roswasm/codec.h>
#ifndef UWVM_VENDOR_RECORDS_HEADER
# error "Select the exact vendor source domain with the public SDK provider"
#endif
#include UWVM_VENDOR_RECORDS_HEADER
#if UWVM_DOOSAN_PROFILE == 1
# define UWVM_DOOSAN_ROS_VERSION 1
# define UWVM_DOOSAN_STATUS roswasmc_bounded_1_dsr_msgs_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_1_dsr_msgs_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTOP_MAX_WIRE_BYTES
#elif UWVM_DOOSAN_PROFILE == 2
# define UWVM_DOOSAN_ROS_VERSION 1
# define UWVM_DOOSAN_STATUS roswasmc_bounded_1_dsr_msgs_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_1_dsr_msgs_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTOP_MAX_WIRE_BYTES
#elif UWVM_DOOSAN_PROFILE == 3
# define UWVM_DOOSAN_ROS_VERSION 1
# define UWVM_DOOSAN_STATUS roswasmc_bounded_1_dsr_msgs_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_1_dsr_msgs_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTOP_MAX_WIRE_BYTES
#elif UWVM_DOOSAN_PROFILE == 4
# define UWVM_DOOSAN_ROS_VERSION 1
# define UWVM_DOOSAN_STATUS roswasmc_bounded_1_dsr_msgs_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_1_dsr_msgs_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTOP_MAX_WIRE_BYTES
#elif UWVM_DOOSAN_PROFILE == 5
# define UWVM_DOOSAN_ROS_VERSION 1
# define UWVM_DOOSAN_STATUS roswasmc_bounded_1_dsr_msgs_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_1_dsr_msgs_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTOP_MAX_WIRE_BYTES
#elif UWVM_DOOSAN_PROFILE == 6
# define UWVM_DOOSAN_ROS_VERSION 1
# define UWVM_DOOSAN_STATUS roswasmc_bounded_1_dsr_msgs_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_1_dsr_msgs_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTOP_MAX_WIRE_BYTES
#elif UWVM_DOOSAN_PROFILE == 7
# define UWVM_DOOSAN_ROS_VERSION 1
# define UWVM_DOOSAN_STATUS roswasmc_bounded_1_dsr_msgs_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_1_dsr_msgs_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTOP_MAX_WIRE_BYTES
#elif UWVM_DOOSAN_PROFILE == 8
# define UWVM_DOOSAN_ROS_VERSION 1
# define UWVM_DOOSAN_STATUS roswasmc_bounded_1_dsr_msgs_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_1_dsr_msgs_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTOP_MAX_WIRE_BYTES
#elif UWVM_DOOSAN_PROFILE == 9
# define UWVM_DOOSAN_ROS_VERSION 1
# define UWVM_DOOSAN_STATUS roswasmc_bounded_1_dsr_msgs_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_1_dsr_msgs_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTOP_MAX_WIRE_BYTES
#elif UWVM_DOOSAN_PROFILE == 10
# define UWVM_DOOSAN_ROS_VERSION 1
# define UWVM_DOOSAN_STATUS roswasmc_bounded_1_dsr_msgs_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_1_dsr_msgs_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_DSR_MSGS_ROBOTSTOP_MAX_WIRE_BYTES
#elif UWVM_DOOSAN_PROFILE == 11
# define UWVM_DOOSAN_ROS_VERSION 2
# define UWVM_DOOSAN_STATUS roswasmc_bounded_2_dsr_msgs2_msg_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_2_dsr_msgs2_msg_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_2_DSR_MSGS2_MSG_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_DSR_MSGS2_MSG_ROBOTSTOP_MAX_WIRE_BYTES
#elif UWVM_DOOSAN_PROFILE == 12
# define UWVM_DOOSAN_ROS_VERSION 2
# define UWVM_DOOSAN_STATUS roswasmc_bounded_2_dsr_msgs2_msg_RobotState
# define UWVM_DOOSAN_COMMAND roswasmc_bounded_2_dsr_msgs2_msg_RobotStop
# define UWVM_DOOSAN_STATUS_CAPACITY ROSWASMC_BOUNDED_2_DSR_MSGS2_MSG_ROBOTSTATE_MAX_WIRE_BYTES
# define UWVM_DOOSAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_DSR_MSGS2_MSG_ROBOTSTOP_MAX_WIRE_BYTES
#else
# error "Select exactly one original Doosan source profile, numbered 1 through 12"
#endif
#if UWVM_DOOSAN_ROS_VERSION == 1
# include <ros/c/roswasm/ros1.h>
# define UWVM_DOOSAN_BACKEND roswasmc_ros1_backend
#else
# include <ros/c/roswasm/ros2.h>
# define UWVM_DOOSAN_BACKEND roswasmc_ros2_backend
#endif
#define UWVM_DOOSAN_JOIN_(a, b) a##b
#define UWVM_DOOSAN_JOIN(a, b) UWVM_DOOSAN_JOIN_(a, b)
#define UWVM_DOOSAN_STATUS_DECODE UWVM_DOOSAN_JOIN(UWVM_DOOSAN_STATUS, _decode)
#define UWVM_DOOSAN_STATUS_ENCODE UWVM_DOOSAN_JOIN(UWVM_DOOSAN_STATUS, _encode)
#define UWVM_DOOSAN_COMMAND_DECODE UWVM_DOOSAN_JOIN(UWVM_DOOSAN_COMMAND, _decode)
#define UWVM_DOOSAN_COMMAND_ENCODE UWVM_DOOSAN_JOIN(UWVM_DOOSAN_COMMAND, _encode)
typedef UWVM_DOOSAN_STATUS uwvm_doosan_status;

typedef struct uwvm_doosan_status_storage
{
    unsigned char bytes[UWVM_DOOSAN_STATUS_CAPACITY];
} uwvm_doosan_status_storage;

/** Poll once into disjoint caller storage; never expose a partial/trailing value.
 * Idle11/denial13/capacity90 remain explicit. No allocation, retry or conversion.
 */
static inline uint32_t uwvm_doosan_poll_status(roswasmc_capability const* cap, uwvm_doosan_status* out, uwvm_doosan_status_storage* scratch)
{
    uwvm_doosan_status next = {0};
    roswasmc_result r;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_DOOSAN_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch))
        return 22;
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->bytes)
        return 22;
    code = UWVM_DOOSAN_STATUS_DECODE(scratch->bytes, (size_t)r.length, &next);
    if(code)
        return code;
    *out = next;
    return 0;
}

/** Preserve the entire original selected complete stop request. Caller owns physical limits,
 * controller/mode selection and authorization. This operation never retries.
 * Closing its capability releases a resource; it is not a physical stop.
 */
static inline uint32_t uwvm_doosan_publish_stop(roswasmc_capability const* cap, UWVM_DOOSAN_COMMAND const* value, unsigned char* bytes, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_DOOSAN_ROS_VERSION || !value || !bytes ||
       uwvm_bounded_overlap(value, sizeof *value, bytes, capacity))
        return 22;
    code = UWVM_DOOSAN_COMMAND_ENCODE(value, bytes, capacity, &used);
    if(code)
        return code;
    return roswasmc_publish(cap, bytes, used);
}
#endif
