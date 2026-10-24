/**
 * @file until_trajectory.c
 * @brief Retained universal_robots native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/universal_robots/en_US/README.md
 */

/* SPDX-License-Identifier: Apache-2.0
 * Original ur_msgs/FollowJointTrajectoryUntil: a distinct Action and result.
 * Full caller-configured values only. No standard FJT substitution or any-goal
 * cancel role. Native joint order, current-state/limits, controller mode and
 * ToolContact support need independent preflight and explicitly reviewed grants.
 */
#include <ros2/c/roswasm/ros2.h>
#include UWVM_VENDOR_INTERFACES_HEADER
#include <string.h>
#define EXPORT(name) __attribute__((export_name(name)))
static roswasmc_context context;
static roswasmc_action_bundle bundle;
static uint64_t goal_storage[1], goal_id;
static roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal goal;
static roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback feedback;
static roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result result;
static roswasmc_result last_rpc;
static roswasmc_cleanup_report cleanup;
static uint32_t primary, role_cleanup[5], feedback_count;
static uint8_t terminal_kind, cancel_accepted;
static int configured, started, closed, sent, cancel_called, result_ready, denied, observed;

static uint32_t finish(uint32_t status)
{
    if(status && !primary)
        primary = status;
    if(!closed)
    {
        closed = 1;
        cleanup = roswasmc_cleanup_init(primary);
        if(bundle.active)
            cleanup = roswasmc_action_bundle_close_checked(&bundle, primary, role_cleanup, 5);
    }
    return primary ? primary : cleanup.cleanup_error;
}

/**
 * @brief Copy the complete original FollowJointTrajectoryUntil goal.
 * @details Serialized use before initialization. The original ur_msgs action
 * is distinct from control_msgs/FollowJointTrajectory. The selected bounded
 * decoder rejects malformed/nonfinite fields and refuses capacity overflow;
 * no point, tolerance, string or header is truncated. This application requires
 * six distinct nonempty joint names, nonempty points, matching active vectors,
 * nonnegative strictly increasing point times, and until_type TOOL_CONTACT=0.
 * Invalid input leaves the previous owned goal unchanged. The caller must check
 * native joint order, limits, start state, controller mode and ToolContact support.
 * @param[in] bytes Borrowed readable canonical Goal bytes, valid only for this call.
 * @param[in] length Exact byte count within the selected family's wire bound.
 * @return 0 on commit, 9 after initialization/closure, or 22 for invalid input.
 * @see initialize_case
 * @see roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal_decode
 */
EXPORT("configure_goal") uint32_t configure_goal(void const* bytes, uint32_t length)
{
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal next;
    size_t i, j, count;
    int64_t previous = -1;
    if(started || closed)
        return 9;
    if(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal_decode(bytes, length, &next) || next.until_type != 0)
        return 22;
    count = next.trajectory.joint_names.size;
    if(count != 6 || !next.trajectory.points.size)
        return 22;
    for(i = 0; i < count; ++i)
    {
        if(!next.trajectory.joint_names.data[i].size)
            return 22;
        for(j = 0; j < i; ++j)
            if(next.trajectory.joint_names.data[i].size == next.trajectory.joint_names.data[j].size &&
               !memcmp(next.trajectory.joint_names.data[i].data, next.trajectory.joint_names.data[j].data, next.trajectory.joint_names.data[i].size))
                return 22;
    }
    for(i = 0; i < next.trajectory.points.size; ++i)
    {
        roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* point = next.trajectory.points.data + i;
        int64_t time = (int64_t)point->time_from_start.sec * 1000000000 + (int64_t)point->time_from_start.nanosec;
        if(point->positions.size != count || (point->velocities.size && point->velocities.size != count) ||
           (point->accelerations.size && point->accelerations.size != count) || (point->effort.size && point->effort.size != count) ||
           point->time_from_start.sec < 0 || time <= previous)
            return 22;
        previous = time;
    }
    goal = next;
    configured = 1;
    return 0;
}

/**
 * @brief Construct the four role-specific Until capabilities or check denial.
 * @details Invoke Wasm reactor initialization first, then serialize every export.
 * ABI v1 and a configured goal are required in mode 1. The external policy must
 * independently grant ur-until-send, ur-until-cancel-own, ur-until-feedback and
 * ur-until-result. No any-goal cancellation role is requested. Construction
 * rolls acquired roles back on failure and preserves each rollback status.
 * Mode 0 expects error 13 and no live handles, then retires the case.
 * @param[in] mode 0 for the no-grant check; 1 for an externally authorized case.
 * @return 0 for expected denial/open success, 9 on reuse, 22 for invalid mode or
 * missing configuration, 95 for ABI mismatch, otherwise the construction error.
 * @see configure_goal
 * @see rollback_status
 * @see send_once
 */
EXPORT("initialize_case") uint32_t initialize_case(uint32_t mode)
{
    roswasmc_action_aliases aliases = {
        {"ur-until-send",       13},
        {"ur-until-cancel-own", 19},
        {"ur-until-feedback",   17},
        {"ur-until-result",     15},
        {NULL,                  0 }
    };
    uint32_t status;
    if(started || closed)
        return 9;
    if(mode > 1 || (mode == 1 && !configured))
        return 22;
    started = 1;
    if(uwvm_ros2_abi_version() != 1)
        return finish(95);
    context.backend = roswasmc_ros2_backend();
    status = roswasmc_action_bundle_init(&context, &bundle, &aliases, goal_storage, 1);
    if(mode == 0)
    {
        size_t i;
        denied = status == 13 && !bundle.active;
        for(i = 0; i < 5; ++i)
            if(bundle.cap[i].handle)
                denied = 0;
        return finish(denied ? 0 : status ? status : 22);
    }
    return status ? finish(status) : 0;
}

/**
 * @brief Submit the configured Until goal once and retain its correlated ID.
 * @details Requires successful mode-1 initialization. Synchronous, serialized
 * call; the attempt is consumed even on failure. Failure closes all roles and
 * retains the first error. Successful submission is acceptance only, requiring
 * later feedback/result polling by the embedding's executor and deadline policy.
 * @return 0 on accepted submission, 9 for invalid lifecycle, otherwise SDK error.
 * @see saved_goal_id
 * @see poll_result_once
 */
EXPORT("send_once") uint32_t send_once(void)
{
    roswasmc_result reply;
    if(!started || closed || sent || !configured)
        return 9;
    sent = 1;
    reply = roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_send(&bundle, &goal, &goal_id);
    last_rpc = reply;
    observed = 1;
    return reply.error ? finish(reply.error) : 0;
}

/**
 * @brief Poll one complete feedback value for this case's correlated goal.
 * @details Serialized nonblocking operation after send_once(). Error 11 means
 * no feedback yet and preserves the previous value and roles. Other errors
 * retire every live role. Successful decoding replaces the complete cached
 * feedback. The embedding schedules polling; this function has no timer/thread.
 * @return 0 on a new observation, 11 if idle, 9 for invalid lifecycle, otherwise
 * the first transport/decode error, with independent cleanup statuses retained.
 * @see copy_feedback
 * @see feedback_observations
 */
EXPORT("poll_feedback_once") uint32_t poll_feedback_once(void)
{
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback next;
    roswasmc_result reply;
    if(!sent || closed || !goal_id)
        return 9;
    reply = roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_feedback(&bundle, goal_id, &next);
    last_rpc = reply;
    observed = 1;
    if(reply.error)
        return reply.error == 11 ? 11 : finish(reply.error);
    feedback = next;
    if(feedback_count != UINT32_MAX)
        ++feedback_count;
    return 0;
}

/**
 * @brief Request cancellation of this case's own goal at most once.
 * @details Uses the separate cancel-own role and saved correlation ID. The
 * attempt is consumed before the call and is never retried. A successful
 * acknowledgement is cached but is not a terminal result or physical-stop
 * observation; poll_result_once() remains necessary. Error 11 leaves the roles
 * open; another transport error retires them. All access must be serialized.
 * @return 0 on a decoded cancellation response, 11 if temporarily unavailable,
 * 9 for invalid lifecycle/repeat, otherwise the first SDK error.
 * @see cancel_acknowledged
 * @see poll_result_once
 */
EXPORT("cancel_once") uint32_t cancel_once(void)
{
    roswasmc_result reply;
    int accepted = 0;
    if(!sent || closed || cancel_called || !goal_id)
        return 9;
    cancel_called = 1;
    reply = roswasmc_action_bundle_cancel_own(&bundle, goal_id, &accepted);
    last_rpc = reply;
    observed = 1;
    if(!reply.error)
        cancel_accepted = (uint8_t)accepted;
    return reply.error && reply.error != 11 ? finish(reply.error) : reply.error;
}

/**
 * @brief Poll the complete terminal Until result, then close all roles.
 * @details Serialized, nonblocking correlated result operation. Error 11 keeps
 * the case open; another SDK error closes it. A complete result is retained
 * even for canceled/failed actions. Application success requires terminal kind
 * 2, error_code 0, and until_condition_result 0 or 1; other terminal values
 * produce error 5. These are original result values, not live physical state.
 * @return 0 for application success and clean closure, 11 if pending, 9 for
 * invalid lifecycle, 5 for a failed terminal result, otherwise the SDK/close error.
 * @see result_available
 * @see copy_result
 */
EXPORT("poll_result_once") uint32_t poll_result_once(void)
{
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result next;
    uint8_t kind = 0;
    roswasmc_result reply;
    if(!sent || closed || result_ready || !goal_id)
        return 9;
    reply = roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_result(&bundle, goal_id, &kind, &next);
    last_rpc = reply;
    observed = 1;
    if(reply.error)
        return reply.error == 11 ? 11 : finish(reply.error);
    result = next;
    terminal_kind = kind;
    result_ready = 1;
    return finish(kind == 2 && result.error_code == 0 && (result.until_condition_result == 0 || result.until_condition_result == 1) ? 0 : 5);
}

/**
 * @brief Encode the entire last feedback into caller-owned Guest storage.
 * @details Serialized cached-value operation; available after a feedback
 * observation, including after closure. No host IO, partial write or truncation.
 * Output pointers are borrowed only during this call and must not overlap each
 * other or the cached feedback object; the caller retains all output ownership.
 * @param[out] destination Writable canonical byte buffer; may be null only for
 * an empty encoding if permitted by the selected encoder.
 * @param[in] capacity Available destination bytes within valid Guest memory.
 * @param[out] length Writable size_t receiving the exact encoded byte count.
 * @return 9 without feedback; otherwise encoder status: 0 on success, 90 for
 * insufficient capacity, or 22 for invalid/overlapping storage. Failure leaves
 * destination and length unchanged according to the selected encoder contract.
 * @see roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback_encode
 * @see feedback_observations
 */
EXPORT("copy_feedback") uint32_t copy_feedback(void* destination, uint32_t capacity, size_t* length)
{
    if(!feedback_count)
        return 9;
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback_encode(&feedback, destination, capacity, length);
}

/**
 * @brief Encode the complete retained Until result into caller-owned storage.
 * @details Serialized cached-value operation after result_available(), including
 * failure/cancellation and closure. No host IO or text terminator is added. All
 * output storage is borrowed for this call, writable, and disjoint from the
 * cached result and from each other; ownership stays with the caller.
 * @param[out] destination Writable Guest canonical byte buffer.
 * @param[in] capacity Valid destination capacity in bytes; no truncation occurs.
 * @param[out] length Writable size_t receiving the exact encoded byte count.
 * @return 9 before a result; otherwise 0 for success, 90 for capacity, or 22 for
 * invalid/overlapping storage. Encoder refusal preserves destination and length.
 * @see roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result_encode
 * @see result_available
 */
EXPORT("copy_result") uint32_t copy_result(void* destination, uint32_t capacity, size_t* length)
{
    if(!result_ready)
        return 9;
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result_encode(&result, destination, capacity, length);
}

/** @brief Test whether a complete terminal result was retained.
 * @details Serialized cached read; true for failed/canceled results as well.
 * @return 1 after complete terminal decoding, otherwise 0.
 * @see poll_result_once
 */
EXPORT("result_available") uint32_t result_available(void)
{
    return result_ready;
}

/** @brief Read the original terminal action kind.
 * @details Valid after result_available(). Serialized cached value; kind 2 is
 * completed, 3 aborted and 4 canceled under the selected action ABI.
 * @return Original terminal kind; initial zero is not a received result.
 * @see result_available
 */
EXPORT("result_kind") uint32_t result_kind(void)
{
    return terminal_kind;
}

/** @brief Read the original signed Until error_code field.
 * @details Valid after result_available(); serialized cached controller data.
 * @return Unmodified int32 result code; zero before readiness is not success.
 * @see result_available
 */
EXPORT("error_code") int32_t error_code(void)
{
    return result.error_code;
}

/** @brief Read the original Until condition result.
 * @details Valid after result_available(); cached values 0/1 are accepted by
 * this application's success predicate, independently of the action kind.
 * @return Original signed int32 field, without remapping or native-state claims.
 * @see poll_result_once
 */
EXPORT("until_condition_result") int32_t until_condition_result(void)
{
    return result.until_condition_result;
}

/** @brief Read the number of complete feedback observations.
 * @details Serialized cached counter saturates at UINT32_MAX; it is neither a
 * freshness indicator nor an unbounded event count. No host IO is performed.
 * @return Successfully decoded feedback count, capped at UINT32_MAX.
 * @see poll_feedback_once
 */
EXPORT("feedback_observations") uint32_t feedback_observations(void)
{
    return feedback_count;
}

/** @brief Read the original cancel-own acknowledgement.
 * @details Valid after cancel_once() succeeds. Cached true does not imply a
 * terminal action, native controller stop, or permission to resend the goal.
 * @return Decoded cancellation Boolean, 0 or 1.
 * @see cancel_once
 */
EXPORT("cancel_acknowledged") uint32_t cancel_acknowledged(void)
{
    return cancel_accepted;
}

/** @brief Read this case's retained goal-correlation ID.
 * @details Serialized cached value; owned by this module and never authority
 * to cancel a different goal. Retained after cleanup for observation only.
 * @return Opaque nonzero ID after accepted send, or 0 before acceptance.
 * @see send_once
 */
EXPORT("saved_goal_id") uint64_t saved_goal_id(void)
{
    return goal_id;
}

/** @brief Test whether an action RPC envelope has been recorded.
 * @details Serialized cached read; every send/feedback/cancel/result attempt
 * replaces the envelope, including idle and failed attempts.
 * @return 1 after the first RPC attempt, otherwise 0.
 * @see rpc_status
 */
EXPORT("rpc_observed") uint32_t rpc_observed(void)
{
    return observed;
}

/** @brief Read the most recently attempted action operation's SDK status.
 * @details Valid after rpc_observed(); 11 means idle, independent of primary_status().
 * @return Unmodified last transport/decode status, with 0 for success.
 * @see rpc_observed
 */
EXPORT("rpc_status") uint32_t rpc_status(void)
{
    return last_rpc.error;
}

/** @brief Test whether the last RPC envelope contains a byte count.
 * @details Serialized cached flag, valid after rpc_observed().
 * @return Original SDK has_length Boolean, 0 or 1.
 * @see rpc_length
 */
EXPORT("rpc_has_length") uint32_t rpc_has_length(void)
{
    return last_rpc.has_length;
}

/** @brief Read the most recently saved RPC length in bytes.
 * @details Valid only after rpc_observed() and rpc_has_length(); no buffer or
 * capability is exposed and no host call occurs.
 * @return Unmodified SDK byte count; initial zero is not a response.
 * @see rpc_has_length
 */
EXPORT("rpc_length") uint64_t rpc_length(void)
{
    return last_rpc.length;
}

/** @brief Read one construction-rollback close result.
 * @details Serialized cached results persist after closure. Role order is send,
 * cancel-own, feedback, result, cancel-any; the fifth role is never requested.
 * @param[in] role Zero-based role index 0..4.
 * @return That role's rollback error, 0 if clean/unacquired, or 22 outside 0..4.
 * @see construction_status
 */
EXPORT("rollback_status") uint32_t rollback_status(uint32_t role)
{
    return role < 5 ? bundle.rollback_status[role] : 22;
}

/** @brief Read the action bundle's construction status.
 * @details Serialized cached value; in the expected denial case it remains 13
 * even though initialize_case(0) returns application success.
 * @return Preserved bundle construction error, or 0 for success/not attempted.
 * @see initialize_case
 */
EXPORT("construction_status") uint32_t construction_status(void)
{
    return bundle.error;
}

/** @brief Read the primary error that caused construction rollback.
 * @details Serialized cached value; distinct from later operation failures.
 * @return Original rollback primary status, or 0 when no failure was recorded.
 * @see rollback_cleanup_status
 */
EXPORT("rollback_primary_status") uint32_t rollback_primary_status(void)
{
    return bundle.rollback.primary_error;
}

/** @brief Read the first independent error while rolling construction back.
 * @details Cached status does not replace the failed open's primary error.
 * @return First rollback close error, or 0 for clean/no rollback.
 * @see rollback_status
 */
EXPORT("rollback_cleanup_status") uint32_t rollback_cleanup_status(void)
{
    return bundle.rollback.cleanup_error;
}

/** @brief Read one role's final close result.
 * @details Serialized cached final cleanup, using the same order as rollback_status().
 * @param[in] role Zero-based role index 0..4; cancel-any remains unacquired.
 * @return That role's close error, 0 for clean/unacquired, or 22 outside 0..4.
 * @see cleanup_status
 * @see rollback_status
 */
EXPORT("cleanup_role_status") uint32_t cleanup_role_status(uint32_t role)
{
    return role < 5 ? role_cleanup[role] : 22;
}

/** @brief Read whether default denial left every action role closed.
 * @details Cached mode-0 observation establishes neither positive action
 * integration nor controller/ToolContact functionality.
 * @return 1 for construction error 13 with no active bundle/handles; otherwise 0.
 * @see initialize_case
 */
EXPORT("denied_verified") uint32_t denied_verified(void)
{
    return denied;
}

/** @brief Read the first latched fatal lifecycle or action error.
 * @details Serialized cached value survives cleanup; idle 11 and direct
 * precondition refusals do not become the primary failure.
 * @return First latched nonzero status, or 0 if none was recorded.
 * @see cleanup_status
 */
EXPORT("primary_status") uint32_t primary_status(void)
{
    return primary;
}

/** @brief Read the first independent final role-close error.
 * @details Serialized cached status; capability closure does not cancel native
 * work, revoke policy aliases, or demonstrate that the physical robot stopped.
 * @return First close error, or 0 for clean/no acquired roles.
 * @see cleanup_role_status
 */
EXPORT("cleanup_status") uint32_t cleanup_status(void)
{
    return cleanup.cleanup_error;
}

/** @brief Close all acquired roles once while retaining observations.
 * @details Serialized terminal transition in reverse role order. It does not
 * cancel the native goal; explicit cancel_once() and terminal result handling
 * must be scheduled by the caller with separately granted authority/deadlines.
 * @return 9 if already closed; otherwise the first primary error, or close error.
 * @see cancel_once
 * @see cleanup_role_status
 */
EXPORT("close_case") uint32_t close_case(void)
{
    return closed ? 9 : finish(0);
}
