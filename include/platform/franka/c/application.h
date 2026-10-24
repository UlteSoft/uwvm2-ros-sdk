/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_FRANKA_APPLICATION_H
#define UWVM_FRANKA_APPLICATION_H
#include <platform/franka/c/state.h>

/** @brief Explicit operator-selected gripper bounds in original SI units.
 * @details width_m is maximum metres, speed_mps maximum metres/second, force_n
 * maximum newtons, epsilon_m maximum inner/outer tolerance metres. Width, speed
 * and force must be positive finite; epsilon may be zero. These copied values
 * establish no hardware specification, controller admission or permission.
 * Native libfranka collision/rate/watchdog enforcement remains independent.
 * @see uwvm_franka_validate_grasp uwvm_franka_validate_move
 */
typedef struct uwvm_franka_gripper_limits
{
    double width_m, speed_mps, force_n, epsilon_m;
} uwvm_franka_gripper_limits;

/** @brief Validate every original gripper Grasp goal field against explicit bounds.
 * @details Pure validation without action admission, conversion or native call.
 * Width may be zero; speed/force must be positive; both epsilon values must be
 * nonnegative. All fields and selected bounds must be finite. No value is clamped.
 * @param[in] goal Borrowed complete selected ROS1/ROS2 original Grasp goal.
 * @param[in] limits Borrowed explicit SI limits, unchanged through return.
 * @return 0 on validity or22 on null, nonfinite, invalid or out-of-bound input.
 * @thread Reentrant with immutable independent input; retains no references.
 * @see uwvm_franka_gripper_limits uwvm_franka_validate_move
 */
inline static uint32_t uwvm_franka_validate_grasp(uwvm_franka_grasp_goal const* goal, uwvm_franka_gripper_limits const* limits)
{
    if(!goal || !limits || !isfinite(limits->width_m) || limits->width_m <= 0 || !isfinite(limits->speed_mps) || limits->speed_mps <= 0 ||
       !isfinite(limits->force_n) || limits->force_n <= 0 || !isfinite(limits->epsilon_m) || limits->epsilon_m < 0 || !isfinite(goal->width) ||
       goal->width < 0 || goal->width > limits->width_m || !isfinite(goal->speed) || goal->speed <= 0 || goal->speed > limits->speed_mps ||
       !isfinite(goal->force) || goal->force <= 0 || goal->force > limits->force_n || !isfinite(goal->epsilon.inner) || goal->epsilon.inner < 0 ||
       goal->epsilon.inner > limits->epsilon_m || !isfinite(goal->epsilon.outer) || goal->epsilon.outer < 0 || goal->epsilon.outer > limits->epsilon_m)
    {
        return 22;
    }
    return 0;
}

#if UWVM_FRANKA_ROS_VERSION == 1
typedef roswasmc_bounded_1_franka_gripper_MoveGoal uwvm_franka_move_goal;
#else
typedef roswasmc_bounded_2_franka_msgs_action_Move_Goal uwvm_franka_move_goal;
#endif

/** @brief Validate the complete original gripper Move width and speed.
 * @details Pure validation; width uses metres and speed metres/second. Width
 * may be zero and speed must be positive. This does not infer grasp success,
 * force, a matching native controller, ownership or physical completion.
 * @param[in] goal Complete selected original Move goal, borrowed immutably.
 * @param[in] limits Positive finite width/speed maxima; force/epsilon are unused.
 * @return 0 on validity or22 for local null/nonfinite/range failure.
 * @thread Reentrant for independent immutable values; no retained references.
 * @see uwvm_franka_move_goal uwvm_franka_gripper_limits uwvm_franka_validate_grasp
 */
inline static uint32_t uwvm_franka_validate_move(uwvm_franka_move_goal const* goal, uwvm_franka_gripper_limits const* limits)
{
    if(!goal || !limits || !isfinite(limits->width_m) || limits->width_m <= 0 || !isfinite(limits->speed_mps) || limits->speed_mps <= 0 ||
       !isfinite(goal->width) || goal->width < 0 || goal->width > limits->width_m || !isfinite(goal->speed) || goal->speed <= 0 ||
       goal->speed > limits->speed_mps)
    {
        return 22;
    }
    return 0;
}

#if UWVM_FRANKA_ROS_VERSION == 2
typedef roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal uwvm_franka_ptp_goal;

/** @brief Explicit seven-joint asynchronous PTP bounds in original ROS2 units.
 * @details lower/upper are radians with lower<upper per joint; velocity_rps is
 * positive finite radians/second and tolerance_rad positive finite radians.
 * No robot model, native real-time update API or permission is represented.
 * @see uwvm_franka_validate_ptp uwvm_franka_ptp_goal
 */
typedef struct uwvm_franka_joint_limits
{
    double lower_rad[7], upper_rad[7], velocity_rps[7], tolerance_rad;
} uwvm_franka_joint_limits;

/** @brief Validate all seven original asynchronous PTP positions and velocities.
 * @details ROS2 only. Requires exactly seven positions and seven strictly
 * positive velocities, each finite and within its selected bound. Tolerance
 * must be positive finite and no greater than tolerance_rad. No element is
 * dropped, reordered, clamped or converted and no real-time loop is started.
 * @param[in] goal Borrowed complete selected PTPMotion goal with original units.
 * @param[in] limits Explicit model-correct seven-joint position/speed/tolerance bounds.
 * @return 0 on validity or22 for null, dimension, finite-value or range failure.
 * @thread Reentrant with immutable values; retains no native or Guest reference.
 * @see uwvm_franka_joint_limits uwvm_franka_ptp_goal
 */
inline static uint32_t uwvm_franka_validate_ptp(uwvm_franka_ptp_goal const* goal, uwvm_franka_joint_limits const* limits)
{
    unsigned i;
    if(!goal || !limits || goal->goal_joint_configuration.size != 7 || goal->maximum_joint_velocities.size != 7 || !isfinite(limits->tolerance_rad) ||
       limits->tolerance_rad <= 0 || !isfinite(goal->goal_tolerance) || goal->goal_tolerance <= 0 || goal->goal_tolerance > limits->tolerance_rad)
    {
        return 22;
    }
    for(i = 0; i < 7; ++i)
    {
        double q = goal->goal_joint_configuration.data[i];
        double v = goal->maximum_joint_velocities.data[i];
        if(!isfinite(limits->lower_rad[i]) || !isfinite(limits->upper_rad[i]) || limits->lower_rad[i] >= limits->upper_rad[i] ||
           !isfinite(limits->velocity_rps[i]) || limits->velocity_rps[i] <= 0 || !isfinite(q) || q < limits->lower_rad[i] || q > limits->upper_rad[i] ||
           !isfinite(v) || v <= 0 || v > limits->velocity_rps[i])
        {
            return 22;
        }
    }
    return 0;
}
#endif
#endif
