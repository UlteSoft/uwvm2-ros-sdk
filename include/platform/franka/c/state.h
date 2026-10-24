/* SPDX-License-Identifier: Apache-2.0
 * Complete selected Franka state and pure gripper-goal construction.
 * Select one ROS major explicitly. No constructor opens a native resource.
 */
#ifndef UWVM_FRANKA_STATE_H
#define UWVM_FRANKA_STATE_H
#include <math.h>
#include <platform/ros/c/roswasm/codec.h>
#include <franka/c/selected_records.h>
#if !defined(UWVM_FRANKA_ROS_VERSION) || (UWVM_FRANKA_ROS_VERSION != 1 && UWVM_FRANKA_ROS_VERSION != 2)
# error "Select UWVM_FRANKA_ROS_VERSION=1 or 2 with its exact complete bundle"
#endif
#if UWVM_FRANKA_ROS_VERSION == 1
# include <platform/ros1/c/roswasm/ros1.h>
# define UWVM_FRANKA_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_franka_msgs_FrankaState uwvm_franka_state;
typedef roswasmc_bounded_1_franka_gripper_GraspGoal uwvm_franka_grasp_goal;
# define UWVM_FRANKA_STATE_DECODE roswasmc_bounded_1_franka_msgs_FrankaState_decode
# define UWVM_FRANKA_STATE_ENCODE roswasmc_bounded_1_franka_msgs_FrankaState_encode
# define UWVM_FRANKA_STATE_CAPACITY ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_MAX_WIRE_BYTES
#elif UWVM_FRANKA_ROS_VERSION == 2
# include <platform/ros2/c/roswasm/ros2.h>
# define UWVM_FRANKA_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState uwvm_franka_state;
typedef roswasmc_bounded_2_franka_msgs_action_Grasp_Goal uwvm_franka_grasp_goal;
# define UWVM_FRANKA_STATE_DECODE roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_decode
# define UWVM_FRANKA_STATE_ENCODE roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_encode
# define UWVM_FRANKA_STATE_CAPACITY ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_MAX_WIRE_BYTES
#endif
/** @brief Caller-owned exact complete selected Franka state wire scratch.
 * @details Capacity includes every nested field, never a projected prefix.
 * Exclusively borrow during poll and keep disjoint from the destination. This
 * type neither owns a native handle nor provides a real-time control buffer.
 * @see uwvm_franka_poll_state uwvm_franka_state
 */
typedef struct uwvm_franka_storage
{
    unsigned char bytes[UWVM_FRANKA_STATE_CAPACITY];
} uwvm_franka_storage;

/** @brief Construct every original gripper Grasp goal field without an effect.
 * @details Pure construction with finite values, positive speed/force and
 * nonnegative tolerances. max_width is independently reviewed, not discovered.
 * This helper does not validate model force/speed/tolerance maxima; use the
 * separate complete application validator before an independently granted send.
 * No capability, action, recovery, resume or native controller is created.
 * @param[in] width Finite desired width in metres,0..max_width inclusive.
 * @param[in] speed Positive finite width-change speed in metres/second.
 * @param[in] force Positive finite grasp force in newtons.
 * @param[in] inner Nonnegative finite original inner tolerance in metres.
 * @param[in] outer Nonnegative finite original outer tolerance in metres.
 * @param[in] max_width Explicit positive finite model width bound in metres.
 * @param[out] out Nonnull complete original goal; unchanged on any refusal.
 * @return 0 on complete assignment or22 on null/nonfinite/invalid/range failure.
 * @thread Reentrant with independent output; retains no borrowed references.
 * @see uwvm_franka_grasp_goal uwvm_franka_validate_grasp
 */
inline static uint32_t
    uwvm_franka_make_grasp(double width, double speed, double force, double inner, double outer, double max_width, uwvm_franka_grasp_goal* out)
{
    uwvm_franka_grasp_goal next = {0};
    if(!out || !isfinite(width) || !isfinite(speed) || !isfinite(force) || !isfinite(inner) || !isfinite(outer) || !isfinite(max_width) || max_width <= 0 ||
       width < 0 || width > max_width || speed <= 0 || force <= 0 || inner < 0 || outer < 0)
    {
        return 22;
    }
    next.width = width;
    next.speed = speed;
    next.force = force;
    next.epsilon.inner = inner;
    next.epsilon.outer = outer;
    *out = next;
    return 0;
}

/** @brief Poll once through the actual ABI and decode the complete Franka state.
 * @details Uses the exact selected ROS1 FrankaState or ROS2 FrankaRobotState
 * decoder, retaining every nested field. Idle11 is not an observation; capacity90
 * never enlarges storage or replays a consumed event. No native real-time update
 * loop, unit/frame conversion, opening, activation or implicit close occurs.
 * @param[in] cap Live borrowed exact selected receive owner/context/backend,
 * with independent trusted type/resource/direction/quota/deadline authority.
 * @param[out] out Nonnull complete selected state, disjoint from scratch.
 * @param[in,out] scratch Nonnull exclusive caller-owned complete wire storage.
 * @return Original poll/codec status or22 for local arguments/backend/extent failure.
 * @thread Single admitted Guest caller; serialize cap and scratch until return.
 * @see uwvm_franka_storage roswasmc_poll roswasmc_close
 */
inline static uint32_t uwvm_franka_poll_state(roswasmc_capability const* cap, uwvm_franka_state* out, uwvm_franka_storage* scratch)
{
    roswasmc_result r;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_FRANKA_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch))
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
    return UWVM_FRANKA_STATE_DECODE(scratch->bytes, (size_t)r.length, out);
}
#endif
