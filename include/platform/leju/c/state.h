/**
 * @file state.h
 * @brief Provide the complete leju state.h source contract.
 * @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
 * encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Complete original Leju values. No native controller SDK, address, policy or ownership
 * is inferred. Exactly one source domain must match the generated include path.
 */
#ifndef UWVM_LEJU_STATE_H
#define UWVM_LEJU_STATE_H
#include <platform/ros/c/roswasm/codec.h>
#include "bounded_records.h"
#if UWVM_LEJU_PROFILE == 1
# define UWVM_LEJU_ROS_VERSION 1
# define UWVM_LEJU_STATUS roswasmc_bounded_1_kuavo_msgs_sensorsData
# define UWVM_LEJU_COMMAND roswasmc_bounded_1_kuavo_msgs_jointCmd
# define UWVM_LEJU_STATUS_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_MSGS_SENSORSDATA_MAX_WIRE_BYTES
# define UWVM_LEJU_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_MSGS_JOINTCMD_MAX_WIRE_BYTES
#elif UWVM_LEJU_PROFILE == 2
# define UWVM_LEJU_ROS_VERSION 1
# define UWVM_LEJU_STATUS roswasmc_bounded_1_motion_capture_ik_robotArmQVVD
# define UWVM_LEJU_COMMAND roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree
# define UWVM_LEJU_STATUS_CAPACITY ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_MAX_WIRE_BYTES
# define UWVM_LEJU_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_MAX_WIRE_BYTES
#elif UWVM_LEJU_PROFILE == 3
# define UWVM_LEJU_ROS_VERSION 1
# define UWVM_LEJU_STATUS roswasmc_bounded_1_kuavo_sdk_qv
# define UWVM_LEJU_COMMAND roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories
# define UWVM_LEJU_STATUS_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_MAX_WIRE_BYTES
# define UWVM_LEJU_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_MAX_WIRE_BYTES
#elif UWVM_LEJU_PROFILE == 4
# define UWVM_LEJU_ROS_VERSION 1
# define UWVM_LEJU_STATUS roswasmc_bounded_1_kuavo_msgs_sensorsData
# define UWVM_LEJU_COMMAND roswasmc_bounded_1_kuavo_msgs_jointCmd
# define UWVM_LEJU_STATUS_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_MSGS_SENSORSDATA_MAX_WIRE_BYTES
# define UWVM_LEJU_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_MSGS_JOINTCMD_MAX_WIRE_BYTES
#elif UWVM_LEJU_PROFILE == 5
# define UWVM_LEJU_ROS_VERSION 1
# define UWVM_LEJU_STATUS roswasmc_bounded_1_motion_capture_ik_robotArmQVVD
# define UWVM_LEJU_COMMAND roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree
# define UWVM_LEJU_STATUS_CAPACITY ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_MAX_WIRE_BYTES
# define UWVM_LEJU_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_MAX_WIRE_BYTES
#elif UWVM_LEJU_PROFILE == 6
# define UWVM_LEJU_ROS_VERSION 1
# define UWVM_LEJU_STATUS roswasmc_bounded_1_kuavo_sdk_qv
# define UWVM_LEJU_COMMAND roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories
# define UWVM_LEJU_STATUS_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_MAX_WIRE_BYTES
# define UWVM_LEJU_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_MAX_WIRE_BYTES
#elif UWVM_LEJU_PROFILE == 7
# define UWVM_LEJU_ROS_VERSION 1
# define UWVM_LEJU_STATUS roswasmc_bounded_1_kuavo_msgs_sensorsData
# define UWVM_LEJU_COMMAND roswasmc_bounded_1_kuavo_msgs_jointCmd
# define UWVM_LEJU_STATUS_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_MSGS_SENSORSDATA_MAX_WIRE_BYTES
# define UWVM_LEJU_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_MSGS_JOINTCMD_MAX_WIRE_BYTES
#elif UWVM_LEJU_PROFILE == 8
# define UWVM_LEJU_ROS_VERSION 1
# define UWVM_LEJU_STATUS roswasmc_bounded_1_motion_capture_ik_robotArmQVVD
# define UWVM_LEJU_COMMAND roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree
# define UWVM_LEJU_STATUS_CAPACITY ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_MAX_WIRE_BYTES
# define UWVM_LEJU_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_MAX_WIRE_BYTES
#elif UWVM_LEJU_PROFILE == 9
# define UWVM_LEJU_ROS_VERSION 1
# define UWVM_LEJU_STATUS roswasmc_bounded_1_kuavo_sdk_qv
# define UWVM_LEJU_COMMAND roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories
# define UWVM_LEJU_STATUS_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_MAX_WIRE_BYTES
# define UWVM_LEJU_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_MAX_WIRE_BYTES
#else
# error "Select exactly one original Leju source profile, numbered 1 through 9"
#endif
#if UWVM_LEJU_ROS_VERSION == 1
# include <platform/ros1/c/roswasm/ros1.h>
# define UWVM_LEJU_BACKEND roswasmc_ros1_backend
#else
# include <platform/ros2/c/roswasm/ros2.h>
# define UWVM_LEJU_BACKEND roswasmc_ros2_backend
#endif
#define UWVM_LEJU_JOIN_(a, b) a##b
#define UWVM_LEJU_JOIN(a, b) UWVM_LEJU_JOIN_(a, b)
#define UWVM_LEJU_STATUS_DECODE UWVM_LEJU_JOIN(UWVM_LEJU_STATUS, _decode)
#define UWVM_LEJU_STATUS_ENCODE UWVM_LEJU_JOIN(UWVM_LEJU_STATUS, _encode)
#define UWVM_LEJU_COMMAND_DECODE UWVM_LEJU_JOIN(UWVM_LEJU_COMMAND, _decode)
#define UWVM_LEJU_COMMAND_ENCODE UWVM_LEJU_JOIN(UWVM_LEJU_COMMAND, _encode)
typedef UWVM_LEJU_STATUS uwvm_leju_status;

typedef struct uwvm_leju_status_storage
{
    unsigned char bytes[UWVM_LEJU_STATUS_CAPACITY];
} uwvm_leju_status_storage;

/** Poll once into disjoint caller storage; never expose a partial/trailing value.
 * Idle11/denial13/capacity90 remain explicit. No allocation, retry or conversion.
 */
static inline uint32_t uwvm_leju_poll_status(roswasmc_capability const* cap, uwvm_leju_status* out, uwvm_leju_status_storage* scratch)
{
    uwvm_leju_status next = {0};
    roswasmc_result r;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_LEJU_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch))
        return 22;
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->bytes)
        return 22;
    code = UWVM_LEJU_STATUS_DECODE(scratch->bytes, (size_t)r.length, &next);
    if(code)
        return code;
    *out = next;
    return 0;
}

/** Preserve the entire original selected complete command. Caller owns physical limits,
 * controller/mode selection and authorization. This operation never retries.
 * Closing its capability releases a resource; it is not a physical stop.
 */
static inline uint32_t uwvm_leju_publish_command(roswasmc_capability const* cap, UWVM_LEJU_COMMAND const* value, unsigned char* bytes, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_LEJU_ROS_VERSION || !value || !bytes ||
       uwvm_bounded_overlap(value, sizeof *value, bytes, capacity))
        return 22;
    code = UWVM_LEJU_COMMAND_ENCODE(value, bytes, capacity, &used);
    if(code)
        return code;
    return roswasmc_publish(cap, bytes, used);
}
#endif
