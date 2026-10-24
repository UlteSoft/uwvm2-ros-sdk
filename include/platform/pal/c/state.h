/* SPDX-License-Identifier: Apache-2.0
 * Complete original PAL Robotics values. No native controller SDK, address, policy or ownership
 * is inferred. Exactly one source domain must match the generated include path.
 */
#ifndef UWVM_PAL_STATE_H
#define UWVM_PAL_STATE_H
#include <platform/ros/c/roswasm/codec.h>
#include "bounded_records.h"
#if UWVM_PAL_PROFILE == 1
# define UWVM_PAL_ROS_VERSION 1
# define UWVM_PAL_STATUS roswasmc_bounded_1_pal_common_msgs_JointCurrent
# define UWVM_PAL_COMMAND roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit
# define UWVM_PAL_STATUS_CAPACITY ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_JOINTCURRENT_MAX_WIRE_BYTES
# define UWVM_PAL_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_ACTUATORCURRENTLIMIT_MAX_WIRE_BYTES
#elif UWVM_PAL_PROFILE == 2
# define UWVM_PAL_ROS_VERSION 2
# define UWVM_PAL_STATUS roswasmc_bounded_2_pal_device_msgs_msg_BatteryState
# define UWVM_PAL_COMMAND roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams
# define UWVM_PAL_STATUS_CAPACITY ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_MAX_WIRE_BYTES
# define UWVM_PAL_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_MAX_WIRE_BYTES
#elif UWVM_PAL_PROFILE == 3
# define UWVM_PAL_ROS_VERSION 1
# define UWVM_PAL_STATUS roswasmc_bounded_1_pal_device_msgs_BatteryState
# define UWVM_PAL_COMMAND roswasmc_bounded_1_pal_device_msgs_LedEffectParams
# define UWVM_PAL_STATUS_CAPACITY ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_BATTERYSTATE_MAX_WIRE_BYTES
# define UWVM_PAL_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_LEDEFFECTPARAMS_MAX_WIRE_BYTES
#elif UWVM_PAL_PROFILE == 4
# define UWVM_PAL_ROS_VERSION 1
# define UWVM_PAL_STATUS roswasmc_bounded_1_pal_device_msgs_BatteryState
# define UWVM_PAL_COMMAND roswasmc_bounded_1_pal_device_msgs_LedEffectParams
# define UWVM_PAL_STATUS_CAPACITY ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_BATTERYSTATE_MAX_WIRE_BYTES
# define UWVM_PAL_COMMAND_CAPACITY ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_LEDEFFECTPARAMS_MAX_WIRE_BYTES
#else
# error "Select exactly one original PAL Robotics source profile, numbered 1 through 4"
#endif
#if UWVM_PAL_ROS_VERSION == 1
# include <platform/ros1/c/roswasm/ros1.h>
# define UWVM_PAL_BACKEND roswasmc_ros1_backend
#else
# include <platform/ros2/c/roswasm/ros2.h>
# define UWVM_PAL_BACKEND roswasmc_ros2_backend
#endif
#define UWVM_PAL_JOIN_(a, b) a##b
#define UWVM_PAL_JOIN(a, b) UWVM_PAL_JOIN_(a, b)
#define UWVM_PAL_STATUS_DECODE UWVM_PAL_JOIN(UWVM_PAL_STATUS, _decode)
#define UWVM_PAL_STATUS_ENCODE UWVM_PAL_JOIN(UWVM_PAL_STATUS, _encode)
#define UWVM_PAL_COMMAND_DECODE UWVM_PAL_JOIN(UWVM_PAL_COMMAND, _decode)
#define UWVM_PAL_COMMAND_ENCODE UWVM_PAL_JOIN(UWVM_PAL_COMMAND, _encode)
/** @brief Complete original status selected by UWVM_PAL_PROFILE1..4.
 * @details Profile1 is JointCurrent; profiles2..4 use their exact BatteryState
 * declaration. A type alias grants no model, endpoint, controller or permission.
 * @see uwvm_pal_poll_status uwvm_pal_status_storage
 */
typedef UWVM_PAL_STATUS uwvm_pal_status;

/** @brief Caller-owned scratch for every byte of the selected complete status.
 * @details Exact generated capacity, no allocation or handle ownership. Keep
 * it disjoint from decoded output and exclusively borrowed during polling.
 * @see uwvm_pal_poll_status uwvm_pal_status
 */
typedef struct uwvm_pal_status_storage
{
    unsigned char bytes[UWVM_PAL_STATUS_CAPACITY];
} uwvm_pal_status_storage;

/** @brief Poll once and transactionally decode every selected original status field.
 * @details The exact complete generated decoder rejects malformed/trailing data.
 * Idle11, denial13 and capacity90 remain explicit. No opening, activation,
 * allocation, retry, controller action or unit conversion occurs.
 * @param[in] cap Live borrowed exact ROS/profile receive owner, with independent
 * trusted resource/type/direction/quota/deadline authority and stable context.
 * @param[out] out Nonnull complete selected status, unchanged on any failure.
 * @param[in,out] scratch Nonnull exclusive caller storage, disjoint from out.
 * @return Original poll/codec status or22 for local argument/backend/extent failure.
 * @thread Single admitted Guest caller; serialize cap and scratch use.
 * @see uwvm_pal_status_storage roswasmc_poll roswasmc_close
 */
static inline uint32_t uwvm_pal_poll_status(roswasmc_capability const* cap, uwvm_pal_status* out, uwvm_pal_status_storage* scratch)
{
    uwvm_pal_status next = {0};
    roswasmc_result r;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_PAL_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch))
        return 22;
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->bytes)
        return 22;
    code = UWVM_PAL_STATUS_DECODE(scratch->bytes, (size_t)r.length, &next);
    if(code)
        return code;
    *out = next;
    return 0;
}

/** @brief Encode and publish one complete selected original PAL command.
 * @details Profile1 uses ActuatorCurrentLimit; profiles2..4 use exact original
 * LedEffectParams. Caller independently checks physical limits, controller/mode
 * and original units. Generated encoding preserves every field and bound. One
 * publication occurs, with no replay, physical stop or automatic recovery.
 * @param[in] cap Live borrowed exact selected publish owner/context/backend,
 * independently granted by trusted native deployment; not closed here.
 * @param[in] value Complete immutable selected command; keep it disjoint from bytes.
 * @param[out] bytes Nonnull caller-owned exclusive canonical wire scratch.
 * @param[in] capacity Writable scratch bytes; insufficient space returns codec failure.
 * @return Original encode/publish status, or22 for local arguments/backend/overlap.
 * Success is transport knowledge and establishes no controller/physical completion.
 * @thread Single admitted Guest caller; serialize cap and output scratch.
 * @see uwvm_pal_validate_current_limits roswasmc_publish roswasmc_close
 */
static inline uint32_t uwvm_pal_publish_command(roswasmc_capability const* cap, UWVM_PAL_COMMAND const* value, unsigned char* bytes, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_PAL_ROS_VERSION || !value || !bytes ||
       uwvm_bounded_overlap(value, sizeof *value, bytes, capacity))
        return 22;
    code = UWVM_PAL_COMMAND_ENCODE(value, bytes, capacity, &used);
    if(code)
        return code;
    return roswasmc_publish(cap, bytes, used);
}
#endif
