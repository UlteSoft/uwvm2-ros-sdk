/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_TURTLEBOT3_APPLICATION_H
#define UWVM_TURTLEBOT3_APPLICATION_H
#include <math.h>
#include <platform/robotis/c/state.h>

/** @brief Explicit native model identity supplied by deployment.
 * @details Burger1, Waffle2 and WafflePi3 are local selectors, not discovery or
 * hardware limits. No model is inferred from a source family or message shape.
 * @see uwvm_turtlebot3_motion_profile uwvm_turtlebot3_validate_motion
 */
enum uwvm_turtlebot3_model
{
    UWVM_TURTLEBOT3_BURGER = 1,
    UWVM_TURTLEBOT3_WAFFLE = 2,
    UWVM_TURTLEBOT3_WAFFLE_PI = 3
};

/** @brief Select the original plain or stamped velocity endpoint type.
 * @details A Twist body cannot stand in for the complete stamped Header/body.
 * ROS1 accepts only plain Twist here; the publisher also refuses stamped values.
 * @see uwvm_turtlebot3_publish_motion uwvm_turtlebot3_validate_motion
 */
enum uwvm_turtlebot3_velocity_type
{
    UWVM_TURTLEBOT3_TWIST = 1,
    UWVM_TURTLEBOT3_TWIST_STAMPED = 2
};

/** @brief Trusted application bounds and explicit model/endpoint selectors.
 * @details Both limits must be positive finite: linear metres/second and yaw
 * radians/second. They are copied values, not hardware specifications, controller
 * readiness, native watchdog configuration or authority. No references are owned.
 * @see uwvm_turtlebot3_validate_motion uwvm_turtlebot3_publish_motion
 */
typedef struct uwvm_turtlebot3_motion_profile
{
    unsigned model, velocity_type;
    double maximum_linear_mps, maximum_angular_rps;
} uwvm_turtlebot3_motion_profile;

/** @brief Validate every Twist component against explicit planar model bounds.
 * @details Pure body validation; no import, conversion or command occurs. The
 * complete stamped route still needs its original Header and exact typed owner.
 * Every component must be finite; lateral/vertical/roll/pitch must equal zero.
 * The deployed native parameter selects the actual endpoint; it is not guessed.
 * @param[in] profile Borrowed valid model/velocity selectors and positive SI limits.
 * @param[in] value Borrowed immutable complete Twist body, unchanged during return.
 * @return 0 on validity,22 on malformed/out-of-limit data,95 for ROS1 stamped mode.
 * @thread Reentrant for independent immutable arguments; retains no references.
 * @see uwvm_turtlebot3_motion_profile uwvm_turtlebot3_publish_motion
 */
static inline uint32_t uwvm_turtlebot3_validate_motion(uwvm_turtlebot3_motion_profile const* profile, roswasmc_twist const* value)
{
    unsigned i;
    if(!profile || !value || profile->model < 1 || profile->model > 3 || profile->velocity_type < 1 || profile->velocity_type > 2 ||
       !isfinite(profile->maximum_linear_mps) || profile->maximum_linear_mps <= 0 || !isfinite(profile->maximum_angular_rps) ||
       profile->maximum_angular_rps <= 0)
        return 22;
#if UWVM_TURTLEBOT3_ROS_VERSION == 1
    if(profile->velocity_type != UWVM_TURTLEBOT3_TWIST)
        return 95;
#endif
    for(i = 0; i < 3; ++i)
        if(!isfinite(value->linear[i]) || !isfinite(value->angular[i]))
            return 22;
    if(value->linear[1] != 0 || value->linear[2] != 0 || value->angular[0] != 0 || value->angular[1] != 0 ||
       fabs(value->linear[0]) > profile->maximum_linear_mps || fabs(value->angular[2]) > profile->maximum_angular_rps)
        return 22;
    return 0;
}

/** @brief Publish one validated plain Twist through the selected actual ROS ABI.
 * @details Performs one publication with no automatic replay, stop, mode change
 * or readiness inference. Stamped endpoints return95; a successful transport
 * receipt establishes no physical completion. Default SDK authority is empty.
 * @param[in] capability Live borrowed exact plain-Twist publish owner in this
 * profile/backend, independently granted by trusted deployment; never closed here.
 * @param[in] profile Explicit immutable planar model bounds in SI units.
 * @param[in] value Complete reviewed Twist body, borrowed until synchronous return.
 * @return Validation/backend status or original publish status; unknown delivery
 * remains unknown and never authorizes replay.
 * @thread Single admitted Guest caller; serialize the capability externally.
 * @see uwvm_turtlebot3_validate_motion roswasmc_publish_twist
 */
static inline uint32_t
    uwvm_turtlebot3_publish_motion(roswasmc_capability const* capability, uwvm_turtlebot3_motion_profile const* profile, roswasmc_twist const* value)
{
    uint32_t error = uwvm_turtlebot3_validate_motion(profile, value);
    if(error)
        return error;
    if(!capability || !capability->context || !capability->context->backend || capability->context->backend->version != UWVM_TURTLEBOT3_ROS_VERSION)
        return 22;
    if(profile->velocity_type != UWVM_TURTLEBOT3_TWIST)
        return 95;
    return roswasmc_publish_twist(capability, value);
}
#endif
