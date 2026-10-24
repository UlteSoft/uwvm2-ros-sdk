/* SPDX-License-Identifier: Apache-2.0
 * Complete original Interbotix values. No native controller SDK, address, policy or ownership
 * is inferred. Exactly one source domain must match the generated include path.
 */
#ifndef UWVM_TROSSEN_STATE_H
#define UWVM_TROSSEN_STATE_H
#include <platform/ros/c/roswasm/codec.h>
#include "bounded_records.h"
#if UWVM_TROSSEN_PROFILE == 1
# define UWVM_TROSSEN_ROS_VERSION 2
# define UWVM_TROSSEN_STATUS roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps
# define UWVM_TROSSEN_COMMAND roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand
# define UWVM_TROSSEN_STATUS_CAPACITY ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_MAX_WIRE_BYTES
# define UWVM_TROSSEN_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_MAX_WIRE_BYTES
#elif UWVM_TROSSEN_PROFILE == 2
# define UWVM_TROSSEN_ROS_VERSION 2
# define UWVM_TROSSEN_STATUS roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps
# define UWVM_TROSSEN_COMMAND roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand
# define UWVM_TROSSEN_STATUS_CAPACITY ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_MAX_WIRE_BYTES
# define UWVM_TROSSEN_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_MAX_WIRE_BYTES
#elif UWVM_TROSSEN_PROFILE == 3
# define UWVM_TROSSEN_ROS_VERSION 2
# define UWVM_TROSSEN_STATUS roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps
# define UWVM_TROSSEN_COMMAND roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand
# define UWVM_TROSSEN_STATUS_CAPACITY ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_MAX_WIRE_BYTES
# define UWVM_TROSSEN_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_MAX_WIRE_BYTES
#elif UWVM_TROSSEN_PROFILE == 4
# define UWVM_TROSSEN_ROS_VERSION 2
# define UWVM_TROSSEN_STATUS roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps
# define UWVM_TROSSEN_COMMAND roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand
# define UWVM_TROSSEN_STATUS_CAPACITY ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_MAX_WIRE_BYTES
# define UWVM_TROSSEN_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_MAX_WIRE_BYTES
#elif UWVM_TROSSEN_PROFILE == 5
# define UWVM_TROSSEN_ROS_VERSION 1
# define UWVM_TROSSEN_STATUS roswasmc_bounded_1_interbotix_xs_msgs_JointTemps
# define UWVM_TROSSEN_COMMAND roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand
# define UWVM_TROSSEN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_MAX_WIRE_BYTES
# define UWVM_TROSSEN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_MAX_WIRE_BYTES
#elif UWVM_TROSSEN_PROFILE == 6
# define UWVM_TROSSEN_ROS_VERSION 1
# define UWVM_TROSSEN_STATUS roswasmc_bounded_1_interbotix_xs_msgs_JointTemps
# define UWVM_TROSSEN_COMMAND roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand
# define UWVM_TROSSEN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_MAX_WIRE_BYTES
# define UWVM_TROSSEN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_MAX_WIRE_BYTES
#elif UWVM_TROSSEN_PROFILE == 7
# define UWVM_TROSSEN_ROS_VERSION 1
# define UWVM_TROSSEN_STATUS roswasmc_bounded_1_interbotix_xs_msgs_JointTemps
# define UWVM_TROSSEN_COMMAND roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand
# define UWVM_TROSSEN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_MAX_WIRE_BYTES
# define UWVM_TROSSEN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_MAX_WIRE_BYTES
#elif UWVM_TROSSEN_PROFILE == 8
# define UWVM_TROSSEN_ROS_VERSION 1
# define UWVM_TROSSEN_STATUS roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy
# define UWVM_TROSSEN_COMMAND roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy
# define UWVM_TROSSEN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MAX_WIRE_BYTES
# define UWVM_TROSSEN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MAX_WIRE_BYTES
#elif UWVM_TROSSEN_PROFILE == 9
# define UWVM_TROSSEN_ROS_VERSION 1
# define UWVM_TROSSEN_STATUS roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy
# define UWVM_TROSSEN_COMMAND roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy
# define UWVM_TROSSEN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MAX_WIRE_BYTES
# define UWVM_TROSSEN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MAX_WIRE_BYTES
#elif UWVM_TROSSEN_PROFILE == 10
# define UWVM_TROSSEN_ROS_VERSION 1
# define UWVM_TROSSEN_STATUS roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy
# define UWVM_TROSSEN_COMMAND roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy
# define UWVM_TROSSEN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MAX_WIRE_BYTES
# define UWVM_TROSSEN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MAX_WIRE_BYTES
#elif UWVM_TROSSEN_PROFILE == 11
# define UWVM_TROSSEN_ROS_VERSION 1
# define UWVM_TROSSEN_STATUS roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy
# define UWVM_TROSSEN_COMMAND roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy
# define UWVM_TROSSEN_STATUS_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MAX_WIRE_BYTES
# define UWVM_TROSSEN_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MAX_WIRE_BYTES
#else
# error "Select exactly one original Interbotix source profile, numbered 1 through 11"
#endif
#if UWVM_TROSSEN_ROS_VERSION == 1
# include <platform/ros1/c/roswasm/ros1.h>
# define UWVM_TROSSEN_BACKEND roswasmc_ros1_backend
#else
# include <platform/ros2/c/roswasm/ros2.h>
# define UWVM_TROSSEN_BACKEND roswasmc_ros2_backend
#endif
#define UWVM_TROSSEN_JOIN_(a, b) a##b
#define UWVM_TROSSEN_JOIN(a, b) UWVM_TROSSEN_JOIN_(a, b)
#define UWVM_TROSSEN_STATUS_DECODE UWVM_TROSSEN_JOIN(UWVM_TROSSEN_STATUS, _decode)
#define UWVM_TROSSEN_STATUS_ENCODE UWVM_TROSSEN_JOIN(UWVM_TROSSEN_STATUS, _encode)
#define UWVM_TROSSEN_COMMAND_DECODE UWVM_TROSSEN_JOIN(UWVM_TROSSEN_COMMAND, _decode)
#define UWVM_TROSSEN_COMMAND_ENCODE UWVM_TROSSEN_JOIN(UWVM_TROSSEN_COMMAND, _encode)
/** @brief Exact selected complete original Interbotix status.
 * @details XS profiles1..7 use JointTemps; manipulator profiles8..11 use ArmJoy.
 * Every original field and selected generated bound is retained. A type does
 * not infer native model, controller, endpoint, epoch or authority.
 * @see uwvm_trossen_poll_status uwvm_trossen_status_storage
 */
typedef UWVM_TROSSEN_STATUS uwvm_trossen_status;

/** @brief Caller-owned complete selected Interbotix wire scratch.
 * @details Capacity follows the selected original schema. Keep disjoint from
 * decoded output and exclusively borrowed during polling. No handle is owned.
 * @see uwvm_trossen_poll_status uwvm_trossen_status
 */
typedef struct uwvm_trossen_status_storage
{
    unsigned char bytes[UWVM_TROSSEN_STATUS_CAPACITY];
} uwvm_trossen_status_storage;

/** @brief Poll once and transactionally decode every original selected status field.
 * @details Uses actual controlled receive and the full generated decoder.
 * Malformed/trailing data is refused; idle11, denial13 and capacity90 remain
 * explicit. No allocation, retry, model/mode conversion or ownership change.
 * @param[in] cap Live exact selected borrowed receive owner/context/backend with
 * independent trusted resource/type/direction/quota/deadline authority.
 * @param[out] out Nonnull complete selected status; unchanged on every failure.
 * @param[in,out] scratch Nonnull exclusive caller storage, disjoint from out.
 * @return Original poll/codec status or22 for local null/backend/extent/overlap failure.
 * @thread Single admitted Guest caller; serialize cap and scratch until return.
 * @see uwvm_trossen_status_storage roswasmc_poll roswasmc_close
 */
static inline uint32_t uwvm_trossen_poll_status(roswasmc_capability const* cap, uwvm_trossen_status* out, uwvm_trossen_status_storage* scratch)
{
    uwvm_trossen_status next = {0};
    roswasmc_result r;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_TROSSEN_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch))
        return 22;
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->bytes)
        return 22;
    code = UWVM_TROSSEN_STATUS_DECODE(scratch->bytes, (size_t)r.length, &next);
    if(code)
        return code;
    *out = next;
    return 0;
}

/** @brief Encode and publish one complete selected original Interbotix command.
 * @details XS profiles use JointGroupCommand; manipulator profiles use ArmJoy.
 * Original fields and units are retained. Caller independently validates model,
 * robot/group/mode/epoch and physical bounds; generated validity is insufficient.
 * Performs one publication without retry, physical stop or implicit cleanup.
 * @param[in] cap Live borrowed exact selected publish owner/context/backend with
 * independent trusted command authority; not transferred or closed here.
 * @param[in] value Complete immutable selected command, disjoint from bytes.
 * @param[out] bytes Nonnull caller-owned exclusive canonical wire scratch.
 * @param[in] capacity Writable scratch bytes; insufficient capacity returns codec failure.
 * @return Original encode/publish status, or22 on local argument/backend/overlap failure.
 * An uncertain reply never permits replay and success is not physical completion.
 * @thread Single admitted Guest caller; serialize cap and scratch until return.
 * @see uwvm_trossen_validate_group roswasmc_publish roswasmc_close
 */
static inline uint32_t uwvm_trossen_publish_command(roswasmc_capability const* cap, UWVM_TROSSEN_COMMAND const* value, unsigned char* bytes, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_TROSSEN_ROS_VERSION || !value || !bytes ||
       uwvm_bounded_overlap(value, sizeof *value, bytes, capacity))
        return 22;
    code = UWVM_TROSSEN_COMMAND_ENCODE(value, bytes, capacity, &used);
    if(code)
        return code;
    return roswasmc_publish(cap, bytes, used);
}
#endif
