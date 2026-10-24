/**
 * @file state.h
 * @brief Retain original realman value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Complete original RealMan values. No native controller SDK, address, policy or ownership
 * is inferred. Exactly one source domain must match the generated include path.
 */
#ifndef UWVM_REALMAN_STATE_H
#define UWVM_REALMAN_STATE_H
#include "bounded_records.h"
#include <ros/c/roswasm/codec.h>
#if UWVM_REALMAN_PROFILE == 1
# define UWVM_REALMAN_ROS_VERSION 1
# define UWVM_REALMAN_STATUS roswasmc_bounded_1_rm_msgs_ArmState
# define UWVM_REALMAN_COMMAND roswasmc_bounded_1_rm_msgs_JointPos
# define UWVM_REALMAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_RM_MSGS_ARMSTATE_MAX_WIRE_BYTES
# define UWVM_REALMAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_RM_MSGS_JOINTPOS_MAX_WIRE_BYTES
#elif UWVM_REALMAN_PROFILE == 2
# define UWVM_REALMAN_ROS_VERSION 1
# define UWVM_REALMAN_STATUS roswasmc_bounded_1_rm_msgs_ArmState
# define UWVM_REALMAN_COMMAND roswasmc_bounded_1_rm_msgs_JointPos
# define UWVM_REALMAN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_RM_MSGS_ARMSTATE_MAX_WIRE_BYTES
# define UWVM_REALMAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_RM_MSGS_JOINTPOS_MAX_WIRE_BYTES
#elif UWVM_REALMAN_PROFILE == 3
# define UWVM_REALMAN_ROS_VERSION 2
# define UWVM_REALMAN_STATUS roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate
# define UWVM_REALMAN_COMMAND roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos
# define UWVM_REALMAN_STATUS_CAPACITY ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMSTATE_MAX_WIRE_BYTES
# define UWVM_REALMAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTPOS_MAX_WIRE_BYTES
#elif UWVM_REALMAN_PROFILE == 4
# define UWVM_REALMAN_ROS_VERSION 2
# define UWVM_REALMAN_STATUS roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate
# define UWVM_REALMAN_COMMAND roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos
# define UWVM_REALMAN_STATUS_CAPACITY ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMSTATE_MAX_WIRE_BYTES
# define UWVM_REALMAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTPOS_MAX_WIRE_BYTES
#elif UWVM_REALMAN_PROFILE == 5
# define UWVM_REALMAN_ROS_VERSION 2
# define UWVM_REALMAN_STATUS roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate
# define UWVM_REALMAN_COMMAND roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos
# define UWVM_REALMAN_STATUS_CAPACITY ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMSTATE_MAX_WIRE_BYTES
# define UWVM_REALMAN_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTPOS_MAX_WIRE_BYTES
#else
# error "Select exactly one original RealMan source profile, numbered 1 through 5"
#endif
#if UWVM_REALMAN_ROS_VERSION == 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_REALMAN_BACKEND roswasmc_ros1_backend
#else
# include <ros2/c/roswasm/ros2.h>
# define UWVM_REALMAN_BACKEND roswasmc_ros2_backend
#endif
#define UWVM_REALMAN_JOIN_(a, b) a##b
#define UWVM_REALMAN_JOIN(a, b) UWVM_REALMAN_JOIN_(a, b)
#define UWVM_REALMAN_STATUS_DECODE UWVM_REALMAN_JOIN(UWVM_REALMAN_STATUS, _decode)
#define UWVM_REALMAN_STATUS_ENCODE UWVM_REALMAN_JOIN(UWVM_REALMAN_STATUS, _encode)
#define UWVM_REALMAN_COMMAND_DECODE UWVM_REALMAN_JOIN(UWVM_REALMAN_COMMAND, _decode)
#define UWVM_REALMAN_COMMAND_ENCODE UWVM_REALMAN_JOIN(UWVM_REALMAN_COMMAND, _encode)
typedef UWVM_REALMAN_STATUS uwvm_realman_status;

typedef struct uwvm_realman_status_storage
{
    unsigned char bytes[UWVM_REALMAN_STATUS_CAPACITY];
} uwvm_realman_status_storage;

/**
 * @brief Check that writable storage cannot overwrite the borrowed capability owners.
 * @details Reject null context/backend/storage and overlapping or wrapped byte ranges before I/O.
 * Pointers must designate live C objects; this range check cannot prove object allocation or lifetime.
 * @return Nonzero only for disjoint live storage; zero means the enclosing operation must refuse.
 * @param cap Borrowed live capability/context/backend; serialize access and retain all owners through
 * return.
 * @param data Caller-owned writable range checked against every borrowed owner.
 * @param size Exact live writable range size in bytes; wrapped/overlapping ranges are refused.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline int uwvm_realman_destination(roswasmc_capability const* cap, void const* data, size_t size)
{
    if(!cap || !cap->context || !cap->context->backend || !data)
        return 0;
    return !uwvm_bounded_overlap(data, size, cap, sizeof *cap) && !uwvm_bounded_overlap(data, size, cap->context, sizeof *cap->context) &&
           !uwvm_bounded_overlap(data, size, cap->context->backend, sizeof *cap->context->backend);
}

/**
 * @brief Poll once and commit one complete original observation after whole-value validation.
 * @details Borrow an already opened, subscribed exact ROS capability. Preserve every original field and
 * selected model count. Output and scratch must be disjoint from each other and all capability owners.
 * Idle 11, denial 13 and capacity 90 do not publish a value, grow storage or trigger a retry.
 * @return Original poll errno or codec/model refusal; zero commits the whole value. The caller retains
 * the close obligation independently from this result.
 * @param cap Borrowed live capability/context/backend; serialize access and retain all owners through
 * return.
 * @param out Exclusive live whole-value output; the enclosing commit occurs only after complete
 * acceptance.
 * @param scratch Exclusive bounded caller scratch; its bytes become unusable as a value on refusal.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_realman_poll_status(roswasmc_capability const* cap, uwvm_realman_status* out, uwvm_realman_status_storage* scratch)
{
    uwvm_realman_status next = {0};
    roswasmc_result r;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_REALMAN_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch) || !uwvm_realman_destination(cap, out, sizeof *out) ||
       !uwvm_realman_destination(cap, scratch, sizeof *scratch))
        return 22;
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->bytes)
        return 22;
    code = UWVM_REALMAN_STATUS_DECODE(scratch->bytes, (size_t)r.length, &next);
    if(code)
        return code;
    *out = next;
    return 0;
}

/**
 * @brief Publish every original selected joint-command field once through explicit authority.
 * @details The caller selects the controller/mode, original units, physical limits and exact granted
 * native endpoint. Validate and encode the whole value into disjoint caller storage before publication.
 * No request is replayed. Closing this resource supplies no physical stop command.
 * @return Original codec or publication errno; zero reports the import outcome, not actuator completion.
 * @param cap Borrowed live capability/context/backend; serialize access and retain all owners through
 * return.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param bytes Exclusive writable canonical output scratch, disjoint from value and all borrowed owners.
 * @param capacity Actual live scratch capacity in bytes; insufficient capacity refuses publication.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_realman_publish_joint(roswasmc_capability const* cap, UWVM_REALMAN_COMMAND const* value, unsigned char* bytes, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_REALMAN_ROS_VERSION || !value || !bytes ||
       uwvm_bounded_overlap(value, sizeof *value, bytes, capacity) || !uwvm_realman_destination(cap, bytes, capacity))
        return 22;
    code = UWVM_REALMAN_COMMAND_ENCODE(value, bytes, capacity, &used);
    if(code)
        return code;
    return roswasmc_publish(cap, bytes, used);
}
#endif
