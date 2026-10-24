/* SPDX-License-Identifier: Apache-2.0 */
/**
 * @file sine_topic.c
 * @brief Caller-driven FANUC 1001-point topic reactor.
 * @details Real ROS2 imports preserve the complete selected JointState and
 * JointTrajectory values. An external executor supplies the original one-second
 * ROS timer callbacks and polls state between ticks; this module does not
 * construct that executor or a ROS clock. Serialize every export on one module
 * instance. Cached facts survive close and never prove physical freshness.
 * Source requires C11 or newer and the separate full 1001-point family.
 * @see uwvm_fanuc_make_original_sine
 * @see initialize_case
 * @see close_case
 */
#include <ros2/c/roswasm/ros2.h>
#include <fanuc/c/sine_trajectory.h>

#define EXPORT(name) __attribute__((export_name(name)))

static roswasmc_context context;
static roswasmc_capability joints;
static roswasmc_capability publisher;
static roswasmc_bounded_2_sensor_msgs_msg_JointState state;
static roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory trajectory;
static unsigned char input[ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES];
static unsigned char output[ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_MAX_WIRE_BYTES];
static roswasmc_result last_poll;
static uint32_t primary;
static uint32_t cleanup_joints;
static uint32_t cleanup_publisher;
static int started;
static int closed;
static int ready;
static int attempted;
static int completed;
static int denied;
static int poll_observed;

/** Retire both owned roles, preserving independent operation/cleanup failures. */
static uint32_t close_all(uint32_t status)
{
    if(status && !primary)
    {
        primary = status;
    }
    if(!closed)
    {
        closed = 1;
        if(roswasmc_is_open(&publisher))
        {
            cleanup_publisher = roswasmc_close(&publisher);
        }
        if(roswasmc_is_open(&joints))
        {
            cleanup_joints = roswasmc_close(&joints);
        }
    }
    return primary ? primary : cleanup_publisher ? cleanup_publisher : cleanup_joints;
}

/**
 * @brief Initialize once or verify the explicit empty-authority refusal.
 * @details Requires ABI1 and serialized execution. Positive mode opens
 * fanuc-sine-joints and fanuc-sine-trajectory, then subscribes. The trusted Host
 * must grant the exact original types, directions, quotas and deadlines.
 * No alias, grant, endpoint or controller state is created. Failure retires
 * acquired roles once and permanently closes this instance.
 * @param[in] mode 0 checks error13 with no handle; 1 selects the separately
 * authorized lifecycle. Other values are rejected before initialization.
 * @return 0 for initialization or verified negative completion; 9 after prior
 * initialization/closure; 22 for invalid mode; 95 for ABI mismatch; otherwise
 * the preserved Host/cleanup error. Negative success is not ROS success.
 * @see denied_verified
 * @see cleanup_joints_status
 * @see cleanup_publisher_status
 */
EXPORT("initialize_case") uint32_t initialize_case(uint32_t mode)
{
    uint32_t status;
    if(started || closed)
    {
        return 9;
    }
    if(mode > 1)
    {
        return 22;
    }
    started = 1;
    if(uwvm_ros2_abi_version() != 1)
    {
        return close_all(95);
    }
    context.backend = roswasmc_ros2_backend();
    roswasmc_capability_init(&joints, &context);
    roswasmc_capability_init(&publisher, &context);
    status = roswasmc_open(&joints, "fanuc-sine-joints", 17);
    if(mode == 0)
    {
        denied = status == 13 && !joints.handle;
        return close_all(denied ? 0 : status ? status : 22);
    }
    if(status)
    {
        return close_all(status);
    }
    status = roswasmc_open(&publisher, "fanuc-sine-trajectory", 21);
    if(status)
    {
        return close_all(status);
    }
    status = roswasmc_subscribe(&joints);
    return status ? close_all(status) : 0;
}

/**
 * @brief Poll and commit one complete state before publication is attempted.
 * @details Requires the explicit subscription grant and serialized executor.
 * Borrows no caller memory. Idle11 preserves the previous complete value.
 * Other Host errors or malformed framing close both roles, so a later timer
 * cannot publish an old cached sample following fatal subscription failure.
 * It starts no thread, clock, allocation of caller storage or automatic retry.
 * @return 0 for a new complete sample; 11 for idle; 9 outside the active
 * pre-publication lifecycle; otherwise the preserved fatal/decoding status.
 * No timestamp or physical freshness is inferred.
 * @see state_ready
 * @see poll_result_ready
 * @see poll_status
 */
EXPORT("poll_state_once") uint32_t poll_state_once(void)
{
    roswasmc_bounded_2_sensor_msgs_msg_JointState next;
    roswasmc_result result;
    if(!started || closed || attempted)
    {
        return 9;
    }
    result = roswasmc_poll(&joints, input, sizeof input);
    last_poll = result;
    poll_observed = 1;
    if(result.error == 11)
    {
        return 11;
    }
    if(result.error)
    {
        return close_all(result.error);
    }
    if(!result.has_length || result.length > sizeof input || roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(input, (size_t)result.length, &next))
    {
        return close_all(22);
    }
    state = next;
    ready = 1;
    return 0;
}

/**
 * @brief Process one externally scheduled original one-second timer callback.
 * @details Requires positive initialization, a cached nonempty state and
 * serialized execution. Construction keeps radians, radians/second and the
 * original three-second timestamps. Waiting or local validation consumes no
 * publish attempt. Entering the real publish import consumes the sole attempt,
 * including ambiguous failure. Fatal publication retires both roles. Success
 * completes the local future only; the executor must then call close_case.
 * @return 0 for a successful publish return; 11 awaiting positions; 9 outside
 * the active lifecycle or after an attempt; otherwise the local or Host error.
 * Success never establishes controller admission, motion completion or safety.
 * @see uwvm_fanuc_make_original_sine
 * @see publish_attempted
 * @see future_completed
 * @see close_case
 */
EXPORT("timer_tick_once") uint32_t timer_tick_once(void)
{
    uint32_t status;
    size_t length = 0;
    if(!started || closed || attempted)
    {
        return 9;
    }
    if(!ready || !state.position.size)
    {
        return 11;
    }
    status = uwvm_fanuc_make_original_sine(&state, &trajectory);
    if(status)
    {
        return status;
    }
    status = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode(&trajectory, output, sizeof output, &length);
    if(status)
    {
        return status;
    }
    attempted = 1;
    status = roswasmc_publish(&publisher, output, length);
    if(status)
    {
        return close_all(status);
    }
    completed = 1;
    return 0;
}

/**
 * @brief Report whether a whole state was committed.
 * @details Local serialized read without imports or grants. The flag persists
 * after close and is not evidence that a sample remains physically current.
 * @return 1 after a complete decode, otherwise 0.
 * @see poll_state_once
 */
EXPORT("state_ready") uint32_t state_ready(void)
{
    return ready;
}

/**
 * @brief Report consumption of the sole publication attempt.
 * @details Local serialized read without imports or grants. The flag remains
 * set after ambiguous Host failure; it does not authorize replay.
 * @return 1 once the publish import was entered, otherwise 0.
 * @see timer_tick_once
 */
EXPORT("publish_attempted") uint32_t publish_attempted(void)
{
    return attempted;
}

/**
 * @brief Read completion of the local publication future.
 * @details Local serialized read with no new rights. A true value records a
 * successful publish return, never execution or completion by a controller.
 * @return 1 after a successful publish return, otherwise 0.
 * @see timer_tick_once
 * @see close_case
 */
EXPORT("future_completed") uint32_t future_completed(void)
{
    return completed;
}

/**
 * @brief Report whether last-poll facts are meaningful.
 * @details Local serialized read without imports/grants. It records an
 * attempted poll, including idle or refusal, and persists after retirement.
 * @return 1 after a real poll was attempted, otherwise 0.
 * @see poll_status
 */
EXPORT("poll_result_ready") uint32_t poll_result_ready(void)
{
    return poll_observed;
}

/**
 * @brief Read the last unsigned Host poll status.
 * @details Local serialized read without imports/grants. Check
 * poll_result_ready first; the initial zero is not a successful observation.
 * @return The preserved Host status, including idle11 and denial13.
 * @see poll_result_ready
 */
EXPORT("poll_status") uint32_t poll_status(void)
{
    return last_poll.error;
}

/**
 * @brief Read presence of the last poll's byte-length fact.
 * @details Local serialized read without imports/grants. Presence remains
 * distinct from the numeric value, including after failure and closure.
 * @return 1 when a length was reported, otherwise 0.
 * @see poll_result_ready
 * @see poll_length
 */
EXPORT("poll_has_length") uint32_t poll_has_length(void)
{
    return last_poll.has_length;
}

/**
 * @brief Read the complete unsigned last-poll length.
 * @details Local serialized read without imports/grants. Check poll_has_length;
 * this is a byte count or required-size fact, not a valid-sample assertion.
 * It is never narrowed to size_t by this getter.
 * @return The preserved u64 length, meaningful only when present.
 * @see poll_has_length
 */
EXPORT("poll_length") uint64_t poll_length(void)
{
    return last_poll.length;
}

/**
 * @brief Read the explicit empty-authority check outcome.
 * @details Local serialized read without imports/grants. A true flag requires
 * error13 and no first-role handle during initialize_case(0).
 * @return 1 for that verified negative case, otherwise 0.
 * @see initialize_case
 */
EXPORT("denied_verified") uint32_t denied_verified(void)
{
    return denied;
}

/**
 * @brief Read the first recorded terminal operation failure.
 * @details Local serialized read without imports/grants. Cleanup never
 * overwrites it; idle and local construction returns remain separate.
 * @return The preserved unsigned status, or 0 when none was recorded.
 * @see cleanup_joints_status
 * @see cleanup_publisher_status
 */
EXPORT("primary_status") uint32_t primary_status(void)
{
    return primary;
}

/**
 * @brief Read the subscription role's independent retirement result.
 * @details Local serialized read without imports/grants. Zero can also mean
 * that no live role needed closing; it is not successful robot activity.
 * @return The retained one-attempt subscription close status.
 * @see close_case
 * @see primary_status
 */
EXPORT("cleanup_joints_status") uint32_t cleanup_joints_status(void)
{
    return cleanup_joints;
}

/**
 * @brief Read the publisher role's independent retirement result.
 * @details Local serialized read without imports/grants. It persists after
 * close and does not replace the first operation failure.
 * @return The retained one-attempt publisher close status; unused roles yield0.
 * @see close_case
 * @see primary_status
 */
EXPORT("cleanup_publisher_status") uint32_t cleanup_publisher_status(void)
{
    return cleanup_publisher;
}

/**
 * @brief Retire every locally owned role once.
 * @details Serialize with every export. Attempts publisher then subscription
 * close even if the first fails. Grants nothing and does not revoke aliases,
 * stop motion, cancel a controller command or retry uncertain publication.
 * Cached facts persist until module destruction. Closing an unstarted instance
 * is allowed and prevents later initialization.
 * @return First primary error, else publisher-close error, else subscription
 * close error; 9 if already closed.
 * @see primary_status
 * @see cleanup_joints_status
 * @see cleanup_publisher_status
 */
EXPORT("close_case") uint32_t close_case(void)
{
    return closed ? 9 : close_all(0);
}
