/* SPDX-License-Identifier: Apache-2.0
 * Whole original TurtleBot3 observations and pure sound-value construction.
 * Select an exact original profile and corresponding complete bundle.
 */
#ifndef UWVM_TURTLEBOT3_STATE_H
#define UWVM_TURTLEBOT3_STATE_H
#include <platform/ros/c/roswasm/codec.h>
#include "bounded_records.h"
#if !defined(UWVM_TURTLEBOT3_PROFILE) || UWVM_TURTLEBOT3_PROFILE < 1 || UWVM_TURTLEBOT3_PROFILE > 4
# error "Select profile 1=Noetic, 2=Humble, 3=Jazzy, 4=main with matching exact source"
#endif
#if UWVM_TURTLEBOT3_PROFILE == 1
# define UWVM_TURTLEBOT3_ROS_VERSION 1
#else
# define UWVM_TURTLEBOT3_ROS_VERSION 2
#endif
#if UWVM_TURTLEBOT3_ROS_VERSION == 1
# include <platform/ros1/c/roswasm/ros1.h>
# define UWVM_TURTLEBOT3_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_turtlebot3_msgs_SensorState uwvm_turtlebot3_state;
typedef roswasmc_bounded_1_turtlebot3_msgs_Sound uwvm_turtlebot3_sound;
# define UWVM_TURTLEBOT3_STATE_DECODE roswasmc_bounded_1_turtlebot3_msgs_SensorState_decode
# define UWVM_TURTLEBOT3_STATE_ENCODE roswasmc_bounded_1_turtlebot3_msgs_SensorState_encode
# define UWVM_TURTLEBOT3_STATE_CAPACITY ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_MAX_WIRE_BYTES
#else
# include <platform/ros2/c/roswasm/ros2.h>
# define UWVM_TURTLEBOT3_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState uwvm_turtlebot3_state;
typedef roswasmc_bounded_2_turtlebot3_msgs_msg_Sound uwvm_turtlebot3_sound;
# define UWVM_TURTLEBOT3_STATE_DECODE roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_decode
# define UWVM_TURTLEBOT3_STATE_ENCODE roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_encode
# define UWVM_TURTLEBOT3_STATE_CAPACITY ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_MAX_WIRE_BYTES
#endif
/** @brief Caller-owned complete selected SensorState wire scratch.
 * @details Its exact capacity follows the selected original profile. Keep it
 * disjoint from the destination and exclusively borrowed until poll returns.
 * No allocation, capability ownership or permission is represented by this type.
 * @see uwvm_turtlebot3_poll_state uwvm_turtlebot3_state
 */
typedef struct uwvm_turtlebot3_storage
{
    unsigned char bytes[UWVM_TURTLEBOT3_STATE_CAPACITY];
} uwvm_turtlebot3_storage;

/** @brief Construct one complete original Sound topic value without an effect.
 * @details Codes0..5 are the original named values. Invalid input preserves out.
 * ROS2's distinct Sound service request is a different type and operation; this
 * function performs no conversion, opening, publication or native sound request.
 * @param[in] code Unsigned original sound code in the inclusive range0..5.
 * @param[out] out Nonnull writable selected Sound; borrowed only during this call.
 * @return 0 on complete assignment or22 on null/invalid input; no partial output.
 * @thread Reentrant with independent output storage; no shared mutable state.
 * @see uwvm_turtlebot3_sound uwvm_turtlebot3_poll_state
 */
static inline uint32_t uwvm_turtlebot3_make_sound(uint32_t code, uwvm_turtlebot3_sound* out)
{
    uwvm_turtlebot3_sound next = {0};
    if(!out || code > 5)
        return 22;
    next.value = (uint8_t)code;
    *out = next;
    return 0;
}

/** @brief Poll once and decode every field of the selected original SensorState.
 * @details Uses the actual controlled ABI and the exact compile-time ROS/profile.
 * The generated complete decoder rejects malformed/trailing values. Idle11 is
 * not a new observation; capacity90 does not allocate or retry. No unit or model
 * conversion, opening, subscription activation or implicit close occurs.
 * @param[in] cap Live exact selected subscription/event owner; its context and
 * backend must remain valid until return. A separate trusted receive grant is required.
 * @param[out] out Nonnull selected complete state, disjoint from scratch.
 * @param[in,out] scratch Nonnull exclusive caller-owned wire storage.
 * @return Original poll/codec status;22 for local argument/backend/extent failure.
 * @thread Serialize use of cap and scratch; retain no borrowed pointer after return.
 * @see uwvm_turtlebot3_storage roswasmc_poll roswasmc_close
 */
static inline uint32_t uwvm_turtlebot3_poll_state(roswasmc_capability const* cap, uwvm_turtlebot3_state* out, uwvm_turtlebot3_storage* scratch)
{
    roswasmc_result r;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_TURTLEBOT3_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch))
        return 22;
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->bytes)
        return 22;
    return UWVM_TURTLEBOT3_STATE_DECODE(scratch->bytes, (size_t)r.length, out);
}
#endif
