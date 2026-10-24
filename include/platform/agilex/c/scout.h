/**
 * @file scout.h
 * @brief Preserve the complete source-pinned platform interface.
 * @details Original declarations, field order, widths and protocol operations
 * are retained. Native deployment and permissions are configured separately.
 * See this platform's source inventory and language manual for exact bounds,
 * ownership and compilation/transport qualification.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Complete selected SCOUT client values over the existing controlled ROS ABI.
 * Select exactly one UWVM_SCOUT_ROS_VERSION and its matching generated include
 * directory. This header opens no owner and never accesses a CAN device.
 */
#ifndef UWVM_AGILEX_SCOUT_H
#define UWVM_AGILEX_SCOUT_H
#include <math.h>
#include <ros/c/roswasm/codec.h>
#include "bounded_records.h"

#if UWVM_SCOUT_ROS_VERSION == 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_SCOUT_BACKEND roswasmc_ros1_backend
# define UWVM_SCOUT_RECORD_IMPL(Name) roswasmc_bounded_1_scout_msgs_##Name
# define UWVM_SCOUT_ODOMETRY roswasmc_bounded_1_nav_msgs_Odometry
# define UWVM_SCOUT_REMOTE ScoutRsStatus
#elif UWVM_SCOUT_ROS_VERSION == 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_SCOUT_BACKEND roswasmc_ros2_backend
# define UWVM_SCOUT_RECORD_IMPL(Name) roswasmc_bounded_2_scout_msgs_msg_##Name
# define UWVM_SCOUT_ODOMETRY roswasmc_bounded_2_nav_msgs_msg_Odometry
# define UWVM_SCOUT_REMOTE ScoutRCState
#else
# error "Explicit UWVM_SCOUT_ROS_VERSION=1 or 2 is required; no backend fallback"
#endif
#define UWVM_SCOUT_RECORD(Name) UWVM_SCOUT_RECORD_IMPL(Name)
#define UWVM_SCOUT_JOIN_IMPL(A, B) A##B
#define UWVM_SCOUT_JOIN(A, B) UWVM_SCOUT_JOIN_IMPL(A, B)
typedef UWVM_SCOUT_RECORD(ScoutStatus) uwvm_scout_status;
typedef UWVM_SCOUT_RECORD(ScoutLightCmd) uwvm_scout_light;
typedef UWVM_SCOUT_RECORD(UWVM_SCOUT_REMOTE) uwvm_scout_remote;
typedef UWVM_SCOUT_ODOMETRY uwvm_scout_odometry;

/** @brief Check the borrowed capability's selected ROS major before an effect.
 * @details Pure context/backend-version check; Runtime still owns alias/type/
 * resource authority. This does not open, validate freshness, poll or publish.
 * @param[in] source Borrowed capability/context/backend, stable until return.
 * @return Nonzero only for nonnull context/backend with the exact selected major.
 * @thread Reentrant with independent immutable ownership state.
 * @see uwvm_scout_poll_status uwvm_scout_publish_light
 */
static inline int uwvm_scout_matches_backend(roswasmc_capability const* source)
{
    return source && source->context && source->context->backend && source->context->backend->version == UWVM_SCOUT_ROS_VERSION;
}

/** @brief Caller-owned1024-byte scratch for one complete selected Scout operation.
 * @details Shared exclusively by serialized calls, never callbacks. Returned
 * lengths are checked and stale bytes are ignored. No native handle is owned.
 * @see uwvm_scout_poll_status uwvm_scout_publish_light
 */
typedef struct uwvm_scout_storage
{
    unsigned char wire[1024];
} uwvm_scout_storage;

/** @brief Explicit Scout1, Mini2 or MiniOmni3 axis-policy selector.
 * @details Selection affects admitted axes only. It performs no discovery,
 * protocol negotiation, firmware assertion or robot-resource authorization.
 * @see uwvm_scout_motion_limits uwvm_scout_make_motion
 */
enum uwvm_scout_model
{
    UWVM_SCOUT = 1,
    UWVM_SCOUT_MINI = 2,
    UWVM_SCOUT_MINI_OMNI = 3
};

/** @brief Explicit finite velocity bounds supplied by native deployment.
 * @details forward/lateral use metres/second; yaw uses radians/second. Forward
 * and yaw limits must be positive. Lateral is nonnegative for MiniOmni and
 * exactly zero for Scout/Mini. Zero initialization refuses motion construction.
 * Bounds establish no hardware/controller readiness or permission.
 * @see uwvm_scout_model uwvm_scout_make_motion
 */
typedef struct uwvm_scout_motion_limits
{
    uint32_t model;
    double forward, lateral, yaw;
} uwvm_scout_motion_limits;

/** @brief Construct a complete bounded Scout Twist with explicit model axes.
 * @details Pure construction. All unused axes are zero; non-Omni models refuse
 * any lateral command or nonzero lateral limit. No guessed vendor maximum,
 * controller/watchdog action, publication, permission or conversion is involved.
 * @param[in] limits Borrowed valid model and finite original SI velocity bounds.
 * @param[in] forward Finite linear.x metres/second within its absolute bound.
 * @param[in] lateral Finite linear.y metres/second, zero unless explicitly Omni.
 * @param[in] yaw Finite angular.z radians/second within its absolute bound.
 * @param[out] output Nonnull writable complete Twist; unchanged on refusal.
 * @return 0 on complete assignment or22 on invalid model, null/nonfinite/range/axis data.
 * @thread Reentrant with independent output; retains no references.
 * @see uwvm_scout_motion_limits uwvm_scout_publish_motion
 */
static inline uint32_t uwvm_scout_make_motion(uwvm_scout_motion_limits const* limits, double forward, double lateral, double yaw, roswasmc_twist* output)
{
    roswasmc_twist next = {
        {0, 0, 0},
        {0, 0, 0}
    };
    if(!limits || !output || limits->model < UWVM_SCOUT || limits->model > UWVM_SCOUT_MINI_OMNI || !isfinite(limits->forward) || !isfinite(limits->lateral) ||
       !isfinite(limits->yaw) || limits->forward <= 0 || limits->yaw <= 0 || limits->lateral < 0 || !isfinite(forward) || !isfinite(lateral) ||
       !isfinite(yaw) || fabs(forward) > limits->forward || fabs(lateral) > limits->lateral || fabs(yaw) > limits->yaw ||
       (limits->model != UWVM_SCOUT_MINI_OMNI && (limits->lateral != 0 || lateral != 0)))
        return 22;
    next.linear[0] = forward;
    next.linear[1] = lateral;
    next.angular[2] = yaw;
    *output = next;
    return 0;
}

/** @brief Construct every field of the complete original ScoutLightCmd value.
 * @details Preserves ROS1 enable_cmd_light_control versus ROS2 cmd_ctrl_allowed.
 * Mode0..3 and custom byte values are original protocol values. No native light
 * control, command-mode transition, publication or permission is performed.
 * @param[in] enabled Exact Boolean0/1 for the selected original control field.
 * @param[in] front_mode Original front mode0..3.
 * @param[in] front_value Original front custom byte0..255.
 * @param[in] rear_mode Original rear mode0..3.
 * @param[in] rear_value Original rear custom byte0..255.
 * @param[out] output Nonnull complete original light command; unchanged on failure.
 * @return 0 on complete assignment or22 for null/invalid Boolean/mode/byte values.
 * @thread Reentrant with independent output; retains no references.
 * @see uwvm_scout_light uwvm_scout_publish_light
 */
static inline uint32_t
    uwvm_scout_make_light(unsigned enabled, unsigned front_mode, unsigned front_value, unsigned rear_mode, unsigned rear_value, uwvm_scout_light* output)
{
    uwvm_scout_light next = {0};
    if(!output || enabled > 1 || front_mode > 3 || rear_mode > 3 || front_value > 255 || rear_value > 255)
        return 22;
#if UWVM_SCOUT_ROS_VERSION == 1
    next.enable_cmd_light_control = (uint8_t)enabled;
#else
    next.cmd_ctrl_allowed = (uint8_t)enabled;
#endif
    next.front_mode = (uint8_t)front_mode;
    next.front_custom_value = (uint8_t)front_value;
    next.rear_mode = (uint8_t)rear_mode;
    next.rear_custom_value = (uint8_t)rear_value;
    *output = next;
    return 0;
}

/** @brief Define a complete selected original Scout record receive operation.
 * @details Each expanded public poll performs one actual nonblocking event read
 * and genuine whole generated decode. Idle11 is not delivery. No sleep, retry,
 * prefix decode, partial assignment or implicit ownership transition occurs.
 * @param[in] source Live borrowed exact selected receive capability/context,
 * independently granted for this original type/resource/operation.
 * @param[out] output Nonnull complete selected record, disjoint from storage.
 * @param[in,out] storage Nonnull exclusive1024-byte wire scratch, valid until return.
 * @return Original poll/codec status;22 for local backend/overlap/extent failure.
 * @thread Single admitted Guest caller; serialize source and storage use.
 * @see uwvm_scout_storage uwvm_scout_matches_backend roswasmc_poll
 */
#define UWVM_SCOUT_POLL(Name, Type, Prefix)                                                                                                                    \
    static inline uint32_t uwvm_scout_poll_##Name(roswasmc_capability const* source, Type* output, uwvm_scout_storage* storage)                                \
    {                                                                                                                                                          \
        roswasmc_result result;                                                                                                                                \
        if(!uwvm_scout_matches_backend(source) || !output || !storage || uwvm_bounded_overlap(output, sizeof *output, storage, sizeof *storage))               \
            return 22;                                                                                                                                         \
        result = roswasmc_poll(source, storage->wire, sizeof storage->wire);                                                                                   \
        if(result.error)                                                                                                                                       \
            return result.error;                                                                                                                               \
        if(!result.has_length || result.length > sizeof storage->wire)                                                                                         \
            return 22;                                                                                                                                         \
        return UWVM_SCOUT_JOIN(Prefix, _decode)(storage->wire, (size_t)result.length, output);                                                                 \
    }
/** @brief Poll a complete selected original ScoutStatus, retaining every field.
 * @details Uses UWVM_SCOUT_POLL's borrowed-owner, transactional decode and
 * independent authority/cleanup contract. This is an observation, not readiness.
 * @see UWVM_SCOUT_POLL uwvm_scout_validate_observation
 */
UWVM_SCOUT_POLL(status, uwvm_scout_status, UWVM_SCOUT_RECORD(ScoutStatus))
/** @brief Poll the complete ROS1 ScoutRsStatus or ROS2 ScoutRCState.
 * @details Uses UWVM_SCOUT_POLL's full-value/ownership/failure contract with no
 * projection or ROS-major conversion; original remote-state fields are retained.
 * @see UWVM_SCOUT_POLL uwvm_scout_remote
 */
UWVM_SCOUT_POLL(remote, uwvm_scout_remote, UWVM_SCOUT_RECORD(UWVM_SCOUT_REMOTE))
/** @brief Poll complete original nav_msgs Odometry with all nested fields.
 * @details Uses UWVM_SCOUT_POLL's exact type, disjoint storage, failure and
 * serialized ownership contract. No frame, covariance or time conversion occurs.
 * @see UWVM_SCOUT_POLL uwvm_scout_odometry
 */
UWVM_SCOUT_POLL(odometry, uwvm_scout_odometry, UWVM_SCOUT_ODOMETRY)
#if UWVM_SCOUT_ROS_VERSION == 1
typedef UWVM_SCOUT_RECORD(ScoutBmsStatus) uwvm_scout_bms;
/** @brief Poll every original ROS1 ScoutBmsStatus field without projection.
 * @details ROS1 only; uses UWVM_SCOUT_POLL's exact receive and failure contract.
 * A decoded observation neither authorizes charging nor acknowledges a fault.
 * @see UWVM_SCOUT_POLL uwvm_scout_bms
 */
UWVM_SCOUT_POLL(bms, uwvm_scout_bms, UWVM_SCOUT_RECORD(ScoutBmsStatus))
#endif
#undef UWVM_SCOUT_POLL

/** @brief Encode and publish one complete original ScoutLightCmd once.
 * @details Uses the selected original codec and one actual ABI publication.
 * No replay, mode transition or implicit close occurs; success is not controller
 * feedback or physical completion. Caller retains the complete immutable value.
 * @param[in] source Live borrowed exact independently granted light publish owner.
 * @param[in] value Complete original command, disjoint from wire scratch.
 * @param[in,out] storage Nonnull exclusive1024-byte caller scratch, valid until return.
 * @return Original encode/publish status, or22 on local backend/null/overlap failure.
 * @thread Single admitted Guest caller; serialize capability and storage use.
 * @see uwvm_scout_make_light uwvm_scout_storage roswasmc_publish
 */
static inline uint32_t uwvm_scout_publish_light(roswasmc_capability const* source, uwvm_scout_light const* value, uwvm_scout_storage* storage)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_scout_matches_backend(source) || !value || !storage || uwvm_bounded_overlap(value, sizeof *value, storage, sizeof *storage))
        return 22;
    code = UWVM_SCOUT_JOIN(UWVM_SCOUT_RECORD(ScoutLightCmd), _encode)(value, storage->wire, sizeof storage->wire, &used);
    return code ? code : roswasmc_publish(source, storage->wire, used);
}

/** @brief Publish one complete zero-velocity Twist through an independent grant.
 * @details An ordinary command, not a physical E-Stop or rollback. No retry,
 * implicit close or feedback wait occurs; transport success or absent feedback
 * cannot establish physical stopping. Native supervision remains independent.
 * @param[in] source Live borrowed exact selected Twist topic.publish capability,
 * independently authorized by trusted deployment; not transferred or closed.
 * @return Original publication status or22 for a null/wrong selected backend.
 * @thread Single admitted Guest caller; serialize source use externally.
 * @see uwvm_scout_make_motion roswasmc_publish_twist roswasmc_close
 */
static inline uint32_t uwvm_scout_stop(roswasmc_capability const* source)
{
    roswasmc_twist value = {
        {0, 0, 0},
        {0, 0, 0}
    };
    return uwvm_scout_matches_backend(source) ? roswasmc_publish_twist(source, &value) : 22;
}
#endif
