/* SPDX-License-Identifier: Apache-2.0
 * Complete original Flexiv values. No native RDK, address, policy or ownership
 * is inferred. Exactly one source domain must match the generated include path.
 */
#ifndef UWVM_FLEXIV_STATE_H
#define UWVM_FLEXIV_STATE_H
#include <platform/ros/c/roswasm/codec.h>
#include <flexiv/c/selected_records.h>
#if UWVM_FLEXIV_PROFILE == 1
# define UWVM_FLEXIV_ROS_VERSION 1
# define UWVM_FLEXIV_STATUS roswasmc_bounded_1_flexiv_msgs_RobotStates
# define UWVM_FLEXIV_COMMAND roswasmc_bounded_1_flexiv_msgs_JointPosVel
# define UWVM_FLEXIV_STATUS_CAPACITY ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_MAX_WIRE_BYTES
# define UWVM_FLEXIV_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_MAX_WIRE_BYTES
#elif UWVM_FLEXIV_PROFILE == 2
# define UWVM_FLEXIV_ROS_VERSION 2
# define UWVM_FLEXIV_STATUS roswasmc_bounded_2_flexiv_msgs_msg_RobotStates
# define UWVM_FLEXIV_COMMAND roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel
# define UWVM_FLEXIV_STATUS_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MAX_WIRE_BYTES
# define UWVM_FLEXIV_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_MAX_WIRE_BYTES
#elif UWVM_FLEXIV_PROFILE == 3
# define UWVM_FLEXIV_ROS_VERSION 2
# define UWVM_FLEXIV_STATUS roswasmc_bounded_2_flexiv_msgs_msg_RobotStates
# define UWVM_FLEXIV_COMMAND roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel
# define UWVM_FLEXIV_STATUS_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MAX_WIRE_BYTES
# define UWVM_FLEXIV_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_MAX_WIRE_BYTES
#elif UWVM_FLEXIV_PROFILE == 4
# define UWVM_FLEXIV_ROS_VERSION 2
# define UWVM_FLEXIV_STATUS roswasmc_bounded_2_flexiv_msgs_msg_RobotStates
# define UWVM_FLEXIV_COMMAND roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel
# define UWVM_FLEXIV_STATUS_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MAX_WIRE_BYTES
# define UWVM_FLEXIV_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_MAX_WIRE_BYTES
#elif UWVM_FLEXIV_PROFILE == 5
# define UWVM_FLEXIV_ROS_VERSION 2
# define UWVM_FLEXIV_STATUS roswasmc_bounded_2_flexiv_msgs_msg_RobotStates
# define UWVM_FLEXIV_COMMAND roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel
# define UWVM_FLEXIV_STATUS_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MAX_WIRE_BYTES
# define UWVM_FLEXIV_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_MAX_WIRE_BYTES
#elif UWVM_FLEXIV_PROFILE == 6
# define UWVM_FLEXIV_ROS_VERSION 2
# define UWVM_FLEXIV_STATUS roswasmc_bounded_2_flexiv_msgs_msg_RobotStates
# define UWVM_FLEXIV_COMMAND roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel
# define UWVM_FLEXIV_STATUS_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MAX_WIRE_BYTES
# define UWVM_FLEXIV_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_MAX_WIRE_BYTES
#elif UWVM_FLEXIV_PROFILE == 7
# define UWVM_FLEXIV_ROS_VERSION 2
# define UWVM_FLEXIV_STATUS roswasmc_bounded_2_flexiv_msgs_msg_RobotStates
# define UWVM_FLEXIV_COMMAND roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel
# define UWVM_FLEXIV_STATUS_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MAX_WIRE_BYTES
# define UWVM_FLEXIV_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_MAX_WIRE_BYTES
#elif UWVM_FLEXIV_PROFILE == 8
# define UWVM_FLEXIV_ROS_VERSION 2
# define UWVM_FLEXIV_STATUS roswasmc_bounded_2_flexiv_msgs_msg_RobotStates
# define UWVM_FLEXIV_COMMAND roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel
# define UWVM_FLEXIV_STATUS_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MAX_WIRE_BYTES
# define UWVM_FLEXIV_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_MAX_WIRE_BYTES
#elif UWVM_FLEXIV_PROFILE == 9
# define UWVM_FLEXIV_ROS_VERSION 2
# define UWVM_FLEXIV_STATUS roswasmc_bounded_2_flexiv_msgs_msg_RobotStates
# define UWVM_FLEXIV_COMMAND roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel
# define UWVM_FLEXIV_STATUS_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MAX_WIRE_BYTES
# define UWVM_FLEXIV_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_MAX_WIRE_BYTES
#else
# error "Select exactly one original Flexiv source profile, numbered 1 through 9"
#endif
#if UWVM_FLEXIV_ROS_VERSION == 1
# include <platform/ros1/c/roswasm/ros1.h>
# define UWVM_FLEXIV_BACKEND roswasmc_ros1_backend
#else
# include <platform/ros2/c/roswasm/ros2.h>
# define UWVM_FLEXIV_BACKEND roswasmc_ros2_backend
#endif
#define UWVM_FLEXIV_JOIN_(a, b) a##b
#define UWVM_FLEXIV_JOIN(a, b) UWVM_FLEXIV_JOIN_(a, b)
#define UWVM_FLEXIV_STATUS_DECODE UWVM_FLEXIV_JOIN(UWVM_FLEXIV_STATUS, _decode)
#define UWVM_FLEXIV_STATUS_ENCODE UWVM_FLEXIV_JOIN(UWVM_FLEXIV_STATUS, _encode)
#define UWVM_FLEXIV_COMMAND_DECODE UWVM_FLEXIV_JOIN(UWVM_FLEXIV_COMMAND, _decode)
#define UWVM_FLEXIV_COMMAND_ENCODE UWVM_FLEXIV_JOIN(UWVM_FLEXIV_COMMAND, _encode)
typedef UWVM_FLEXIV_STATUS uwvm_flexiv_status;

typedef struct uwvm_flexiv_status_storage
{
    unsigned char bytes[UWVM_FLEXIV_STATUS_CAPACITY];
} uwvm_flexiv_status_storage;

/** @brief Preserve borrowed capability owners. All pointers designate live C objects. */
inline static int uwvm_flexiv_destination(roswasmc_capability const* cap, void const* data, size_t size)
{
    if(!cap || !cap->context || !cap->context->backend || !data)
    {
        return 0;
    }
    return !uwvm_bounded_overlap(data, size, cap, sizeof *cap) && !uwvm_bounded_overlap(data, size, cap->context, sizeof *cap->context) &&
           !uwvm_bounded_overlap(data, size, cap->context->backend, sizeof *cap->context->backend);
}

/** @brief Poll once into disjoint caller storage; never expose a partial/trailing value.
 * Idle11/denial13/capacity90 remain explicit. No allocation, retry or conversion.
 */
inline static uint32_t uwvm_flexiv_poll_status(roswasmc_capability const* cap, uwvm_flexiv_status* out, uwvm_flexiv_status_storage* scratch)
{
    uwvm_flexiv_status next = {0};
    roswasmc_result r;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_FLEXIV_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch) || !uwvm_flexiv_destination(cap, out, sizeof *out) ||
       !uwvm_flexiv_destination(cap, scratch, sizeof *scratch))
    {
        return 22;
    }
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
    {
        return r.error;
    }
    if(!r.has_length || r.length > sizeof scratch->bytes)
    {
        return 22;
    }
    code = UWVM_FLEXIV_STATUS_DECODE(scratch->bytes, (size_t)r.length, &next);
    if(code)
    {
        return code;
    }
    *out = next;
    return 0;
}

/** @brief Preserve the entire original JointPosVel command. Caller owns physical limits,
 * controller/mode selection and authorization. This operation never retries.
 * Closing its capability releases a resource; it is not a physical stop.
 */
inline static uint32_t uwvm_flexiv_publish_joint(roswasmc_capability const* cap, UWVM_FLEXIV_COMMAND const* value, unsigned char* bytes, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_FLEXIV_ROS_VERSION || !value || !bytes ||
       uwvm_bounded_overlap(value, sizeof *value, bytes, capacity) || !uwvm_flexiv_destination(cap, bytes, capacity))
    {
        return 22;
    }
    code = UWVM_FLEXIV_COMMAND_ENCODE(value, bytes, capacity, &used);
    if(code)
    {
        return code;
    }
    return roswasmc_publish(cap, bytes, used);
}
#endif
