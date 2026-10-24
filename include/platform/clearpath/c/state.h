/**
 * @file state.h
 * @brief Preserve the complete source-pinned platform interface.
 * @details Original declarations, field order, widths and protocol operations
 * are retained. Native deployment and permissions are configured separately.
 * See this platform's source inventory and language manual for exact bounds,
 * ownership and compilation/transport qualification.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Complete selected Clearpath/legacy Husky/Jackal state, not a projected view.
 * Selection1=Noetic platform,2=Noetic Husky,3=Noetic Jackal,4=Humble,
 * 5=Jazzy,6=main development snapshot. Source/native binding stays explicit.
 */
#ifndef UWVM_CLEARPATH_STATE_H
#define UWVM_CLEARPATH_STATE_H
#include <math.h>
#include <float.h>
#include <ros/c/roswasm/codec.h>
#include "bounded_records.h"
#if !defined(UWVM_CLEARPATH_SELECTION) || UWVM_CLEARPATH_SELECTION < 1 || UWVM_CLEARPATH_SELECTION > 6
# error "Select exactly one Clearpath application and its complete original bundle"
#endif
#if UWVM_CLEARPATH_SELECTION == 1
# define UWVM_CLEARPATH_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_CLEARPATH_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_clearpath_platform_msgs_Status uwvm_clearpath_state;
# define UWVM_CLEARPATH_STATE_DECODE roswasmc_bounded_1_clearpath_platform_msgs_Status_decode
# define UWVM_CLEARPATH_STATE_ENCODE roswasmc_bounded_1_clearpath_platform_msgs_Status_encode
# define UWVM_CLEARPATH_STATE_CAPACITY ROSWASMC_BOUNDED_1_CLEARPATH_PLATFORM_MSGS_STATUS_MAX_WIRE_BYTES
#elif UWVM_CLEARPATH_SELECTION == 2
# define UWVM_CLEARPATH_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_CLEARPATH_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_husky_msgs_HuskyStatus uwvm_clearpath_state;
# define UWVM_CLEARPATH_STATE_DECODE roswasmc_bounded_1_husky_msgs_HuskyStatus_decode
# define UWVM_CLEARPATH_STATE_ENCODE roswasmc_bounded_1_husky_msgs_HuskyStatus_encode
# define UWVM_CLEARPATH_STATE_CAPACITY ROSWASMC_BOUNDED_1_HUSKY_MSGS_HUSKYSTATUS_MAX_WIRE_BYTES
#elif UWVM_CLEARPATH_SELECTION == 3
# define UWVM_CLEARPATH_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_CLEARPATH_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_jackal_msgs_Status uwvm_clearpath_state;
# define UWVM_CLEARPATH_STATE_DECODE roswasmc_bounded_1_jackal_msgs_Status_decode
# define UWVM_CLEARPATH_STATE_ENCODE roswasmc_bounded_1_jackal_msgs_Status_encode
# define UWVM_CLEARPATH_STATE_CAPACITY ROSWASMC_BOUNDED_1_JACKAL_MSGS_STATUS_MAX_WIRE_BYTES
#elif UWVM_CLEARPATH_SELECTION == 4
# define UWVM_CLEARPATH_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_CLEARPATH_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_Status uwvm_clearpath_state;
# define UWVM_CLEARPATH_STATE_DECODE roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_decode
# define UWVM_CLEARPATH_STATE_ENCODE roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_encode
# define UWVM_CLEARPATH_STATE_CAPACITY ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_STATUS_MAX_WIRE_BYTES
#elif UWVM_CLEARPATH_SELECTION == 5
# define UWVM_CLEARPATH_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_CLEARPATH_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_Status uwvm_clearpath_state;
# define UWVM_CLEARPATH_STATE_DECODE roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_decode
# define UWVM_CLEARPATH_STATE_ENCODE roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_encode
# define UWVM_CLEARPATH_STATE_CAPACITY ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_STATUS_MAX_WIRE_BYTES
#elif UWVM_CLEARPATH_SELECTION == 6
# define UWVM_CLEARPATH_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_CLEARPATH_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_Status uwvm_clearpath_state;
# define UWVM_CLEARPATH_STATE_DECODE roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_decode
# define UWVM_CLEARPATH_STATE_ENCODE roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_encode
# define UWVM_CLEARPATH_STATE_CAPACITY ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_STATUS_MAX_WIRE_BYTES
#endif
#if UWVM_CLEARPATH_ROS_VERSION == 1
typedef roswasmc_bounded_1_clearpath_platform_msgs_Drive uwvm_clearpath_drive;
#else
typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive uwvm_clearpath_drive;
#endif
/** @brief Exact selected complete Clearpath/Husky/Jackal observation scratch.
 * @details Capacity follows the selected original record. Caller owns and
 * serializes storage; keep it disjoint from decoded output. No handle is owned.
 * @see uwvm_clearpath_poll_state uwvm_clearpath_state
 */
typedef struct uwvm_clearpath_storage
{
    unsigned char bytes[UWVM_CLEARPATH_STATE_CAPACITY];
} uwvm_clearpath_storage;

/** @brief Construct the complete original two-wheel Drive velocity command.
 * @details Sets original mode0 and both driver fields. Validate again after
 * float32 conversion so rounding cannot exceed the supplied bound. This is pure
 * data construction, with no capability, publication, acknowledgement or stop.
 * Drive wheel-space values do not replace legacy Husky/Jackal Twist endpoints.
 * @param[in] left Finite left wheel angular velocity, radians/second.
 * @param[in] right Finite right wheel angular velocity, radians/second.
 * @param[in] limit Explicit positive finite model-specific absolute wheel bound,
 * at most FLT_MAX; no model or firmware capability is inferred.
 * @param[out] out Nonnull writable original Drive; unchanged on every refusal.
 * @return 0 on complete assignment or22 for arguments/conversion/out-of-bound data.
 * @thread Reentrant with independent output; retains no references.
 * @see uwvm_clearpath_drive uwvm_clearpath_make_base_motion
 */
static inline uint32_t uwvm_clearpath_make_wheel_velocity(double left, double right, double limit, uwvm_clearpath_drive* out)
{
    uwvm_clearpath_drive next = {0};
    if(!out || !isfinite(left) || !isfinite(right) || !isfinite(limit) || limit <= 0 || limit > FLT_MAX || fabs(left) > limit || fabs(right) > limit)
        return 22;
    next.mode = 0;
    next.drivers[0] = (float)left;
    next.drivers[1] = (float)right;
    if(!isfinite(next.drivers[0]) || !isfinite(next.drivers[1]) || fabs((double)next.drivers[0]) > limit || fabs((double)next.drivers[1]) > limit)
        return 22;
    *out = next;
    return 0;
}

/** @brief Poll once and decode the entire selected original state transactionally.
 * @details Requires an explicit receive owner for this exact ROS/source family.
 * Idle11 is not a new observation; capacity90 allocates nothing and never
 * retries. The complete generated decoder rejects malformed/trailing bytes.
 * This function does not open, activate, close or convert a native endpoint.
 * @param[in] cap Live borrowed receive capability/context/backend; separate
 * trusted type/resource/direction/quota/deadline authority remains required.
 * @param[out] out Nonnull complete selected state, disjoint from scratch.
 * @param[in,out] scratch Nonnull exclusive wire storage, valid until return.
 * @return Original poll/codec status, or22 for local arguments/backend/extent.
 * @thread Serialize cap and scratch; retain no borrowed storage after return.
 * @see uwvm_clearpath_storage roswasmc_poll roswasmc_close
 */
static inline uint32_t uwvm_clearpath_poll_state(roswasmc_capability const* cap, uwvm_clearpath_state* out, uwvm_clearpath_storage* scratch)
{
    roswasmc_result r;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_CLEARPATH_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch))
        return 22;
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->bytes)
        return 22;
    return UWVM_CLEARPATH_STATE_DECODE(scratch->bytes, (size_t)r.length, out);
}
#endif
