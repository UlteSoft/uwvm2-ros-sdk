/**
 * @file application.h
 * @brief Preserve the complete source-pinned platform interface.
 * @details Original declarations, field order, widths and protocol operations
 * are retained. Native deployment and permissions are configured separately.
 * See this platform's source inventory and language manual for exact bounds,
 * ownership and compilation/transport qualification.
 */
/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_CLEARPATH_APPLICATION_H
#define UWVM_CLEARPATH_APPLICATION_H
#include <clearpath/c/state.h>

/** @brief Explicit deployment limits for a planar base Twist body.
 * @details Positive finite linear metres/second and yaw radians/second bounds;
 * neither is a discovered hardware limit, endpoint selector or permission.
 * @see uwvm_clearpath_make_base_motion uwvm_clearpath_publish_legacy_base_motion
 */
typedef struct uwvm_clearpath_motion_limits
{
    double linear_mps, angular_rps;
} uwvm_clearpath_motion_limits;

/** @brief Construct a complete planar differential-drive Twist in SI units.
 * @details Initializes every component; only forward linear.x and yaw angular.z
 * may be nonzero. Native deployment selects model, namespace, controller,
 * stamped/plain endpoint and watchdog. This is pure validation/construction and
 * does not convert platform Drive wheel-space commands or publish anything.
 * @param[in] limits Borrowed positive finite linear/yaw absolute bounds.
 * @param[in] forward Finite forward velocity in metres/second within its bound.
 * @param[in] yaw Finite angular velocity in radians/second within its bound.
 * @param[out] output Nonnull complete Twist; unchanged on invalid input.
 * @return 0 on complete assignment or22 on null, nonfinite or out-of-bound input.
 * @thread Reentrant with independent writable output; retains no references.
 * @see uwvm_clearpath_motion_limits uwvm_clearpath_make_wheel_velocity
 */
static inline uint32_t uwvm_clearpath_make_base_motion(uwvm_clearpath_motion_limits const* limits, double forward, double yaw, roswasmc_twist* output)
{
    roswasmc_twist next = {
        {0, 0, 0},
        {0, 0, 0}
    };
    if(!limits || !output || !isfinite(limits->linear_mps) || limits->linear_mps <= 0 || !isfinite(limits->angular_rps) || limits->angular_rps <= 0 ||
       !isfinite(forward) || !isfinite(yaw) || fabs(forward) > limits->linear_mps || fabs(yaw) > limits->angular_rps)
        return 22;
    next.linear[0] = forward;
    next.angular[2] = yaw;
    *output = next;
    return 0;
}

/** @brief Publish one validated legacy Husky/Jackal ROS1 plain Twist.
 * @details Available only for selections2/3. Other source families return95
 * because their actual stamped/plain controller endpoints require independent
 * selection. No replay, implicit Stop, watchdog or controller activation occurs.
 * @param[in] capability Live borrowed exact ROS1 Twist publish capability,
 * independently granted by trusted deployment; not transferred or closed here.
 * @param[in] limits Explicit immutable positive SI bounds.
 * @param[in] forward Reviewed finite metres/second within the selected limit.
 * @param[in] yaw Reviewed finite radians/second within the selected limit.
 * @return 95 on another family,22 on local failure, otherwise original transport
 * status. Success is publication knowledge, not evidence of physical completion.
 * @thread Single admitted Guest caller; serialize capability use externally.
 * @see uwvm_clearpath_make_base_motion roswasmc_publish_twist
 */
static inline uint32_t
    uwvm_clearpath_publish_legacy_base_motion(roswasmc_capability const* capability, uwvm_clearpath_motion_limits const* limits, double forward, double yaw)
{
    roswasmc_twist value;
    uint32_t error;
    if(!capability || !capability->context || !capability->context->backend || capability->context->backend->version != UWVM_CLEARPATH_ROS_VERSION)
        return 22;
#if UWVM_CLEARPATH_SELECTION != 2 && UWVM_CLEARPATH_SELECTION != 3
    (void)limits;
    (void)forward;
    (void)yaw;
    (void)value;
    (void)error;
    return 95;
#else
    error = uwvm_clearpath_make_base_motion(limits, forward, yaw, &value);
    return error ? error : roswasmc_publish_twist(capability, &value);
#endif
}
#endif
