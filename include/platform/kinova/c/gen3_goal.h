/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_KINOVA_GEN3_GOAL_H
#define UWVM_KINOVA_GEN3_GOAL_H
#include <math.h>
#include <stdint.h>
#include <string.h>
#include <kinova/c/ros2/mobile-fjt-humble-complete/bounded_records.h>

/** @brief Explicit selected Gen3 joint count/model; Gen3 Lite is outside this route.
 * @details This tag discovers no robot, firmware, tool or native permission.
 * @see uwvm_gen3_joint_limits uwvm_gen3_validate_goal */
enum uwvm_gen3_model
{
    UWVM_GEN3_6DOF = 6,
    UWVM_GEN3_7DOF = 7
};

/** @brief Explicit complete local bounds for a selected ROS radian trajectory.
 * @details Caller-owned model-correct values; no defaults, native SDK object,
 * authorization, collision configuration or real-time limit is represented.
 * @see uwvm_gen3_validate_goal */
typedef struct uwvm_gen3_joint_limits
{
    /** @brief Exact enum6/7 controlling the active prefix of every bound array.
     * @details No six-joint-to-Gen3-Lite inference. @see uwvm_gen3_model */
    unsigned model;
    /** @brief Finite ordered radian lower/upper and positive rad/s,rad/s² maxima.
     * @details Each active velocity/acceleration bound is positive; omitted goal
     * derivative arrays remain omitted rather than being synthesized.
     * @see uwvm_gen3_validate_goal */
    double lower_rad[7], upper_rad[7], velocity_rps[7], acceleration_rps2[7];
    /** @brief Positive maximum time_from_start extent in ns, not an action deadline.
     * @details Native RPC limits/watchdogs remain independent. @see uwvm_gen3_validate_goal */
    uint64_t maximum_trajectory_ns;
} uwvm_gen3_joint_limits;

/** @brief Validate the whole original Goal for the pinned position-trajectory route.
 * @details Uses the genuine generated validator and every active model bound.
 * Requires exact joint_1..joint_N names, complete position dimensions, optional
 * matching velocity/acceleration arrays and nonnegative strictly increasing
 * point times within the explicit duration. Nonempty effort/MultiDOF are95.
 * Other original fields remain present; native server semantics and acceptance
 * still need a qualified deployment. ROS radians and native Kortex protobuf
 * degrees are separate APIs and are never reinterpreted, converted or clamped.
 * @param[in] limits Borrowed immutable model/tool/firmware-correct6/7-joint bounds.
 * @param[in] goal Complete original selected bounded ROS2 Goal, unchanged.
 * @return 0 on local validity,22 invalid model/data/bounds/name/dimension/time,
 * or95 for unsupported effort/MultiDOF. No action or native authority is granted.
 * @thread Reentrant with immutable disjoint inputs; creates no allocation/thread.
 * @see uwvm_gen3_joint_limits uwvm_gen3_model
 */
inline static uint32_t uwvm_gen3_validate_goal(uwvm_gen3_joint_limits const* limits,
                                               roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* goal)
{
    unsigned i, j, n;
    uint64_t previous = 0;
    if(!limits || !goal || (limits->model != 6 && limits->model != 7) || !limits->maximum_trajectory_ns ||
       !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_valid(goal))
    {
        return 22;
    }
    n = limits->model;
    if(goal->multi_dof_trajectory.joint_names.size || goal->multi_dof_trajectory.points.size)
    {
        return 95;
    }
    if(goal->trajectory.joint_names.size != n || !goal->trajectory.points.size)
    {
        return 22;
    }
    for(i = 0; i < n; ++i)
    {
        unsigned char expected[7] = {'j', 'o', 'i', 'n', 't', '_', 0};
        expected[6] = (unsigned char)('1' + i);
        if(goal->trajectory.joint_names.data[i].size != 7 || memcmp(goal->trajectory.joint_names.data[i].data, expected, 7) ||
           !isfinite(limits->lower_rad[i]) || !isfinite(limits->upper_rad[i]) || limits->lower_rad[i] >= limits->upper_rad[i] ||
           !isfinite(limits->velocity_rps[i]) || limits->velocity_rps[i] <= 0 || !isfinite(limits->acceleration_rps2[i]) || limits->acceleration_rps2[i] <= 0)
        {
            return 22;
        }
    }
    for(j = 0; j < goal->trajectory.points.size; ++j)
    {
        roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* point = &goal->trajectory.points.data[j];
        uint64_t duration;
        if(point->time_from_start.sec < 0 || point->time_from_start.nanosec >= 1000000000u)
        {
            return 22;
        }
        duration = (uint64_t)point->time_from_start.sec * 1000000000u + point->time_from_start.nanosec;
        if((j && duration <= previous) || duration > limits->maximum_trajectory_ns || point->positions.size != n ||
           (point->velocities.size && point->velocities.size != n) || (point->accelerations.size && point->accelerations.size != n))
        {
            return 22;
        }
        if(point->effort.size)
        {
            return 95;
        }
        for(i = 0; i < n; ++i)
        {
            if(point->positions.data[i] < limits->lower_rad[i] || point->positions.data[i] > limits->upper_rad[i] ||
               (point->velocities.size && fabs(point->velocities.data[i]) > limits->velocity_rps[i]) ||
               (point->accelerations.size && fabs(point->accelerations.data[i]) > limits->acceleration_rps2[i]))
            {
                return 22;
            }
        }
        previous = duration;
    }
    return 0;
}
#endif
