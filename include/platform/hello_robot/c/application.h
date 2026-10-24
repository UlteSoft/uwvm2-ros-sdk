/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_STRETCH_APPLICATION_H
#define UWVM_STRETCH_APPLICATION_H
#include <stdint.h>
#include <string.h>
#include <math.h>
#include "bounded_records.h"

/** @brief Exact selected native controller mode, without an implicit transition.
 * @details Position, trajectory and navigation have different timing/channel
 * contracts. Gamepad/runstopped never authorize this FJT send path.
 * @see uwvm_stretch_validate_goal */
enum uwvm_stretch_mode
{
    UWVM_STRETCH_POSITION = 1,
    UWVM_STRETCH_TRAJECTORY = 2,
    UWVM_STRETCH_NAVIGATION = 3,
    UWVM_STRETCH_GAMEPAD = 4,
    UWVM_STRETCH_RUNSTOPPED = 5
};

/** @brief Explicit original deployment selection, not a discovered model/tool.
 * @details No connected tool, firmware or capability is inferred from this tag.
 * @see uwvm_stretch_deployment */
enum uwvm_stretch_model
{
    UWVM_STRETCH_RE1V0 = 1,
    UWVM_STRETCH_RE2V0 = 2,
    UWVM_STRETCH_SE3 = 3
};

/** @brief Borrow current deployment facts for pure complete-goal validation.
 * @details A caller-owned value; every joint/base-frame string is live and
 * terminated during validation. It authenticates no native endpoint or state.
 * @see uwvm_stretch_validate_deployment uwvm_stretch_validate_goal */
typedef struct uwvm_stretch_deployment
{
    /** @brief Explicit model/mode enums and canonical0/1 homed/runstop/streaming flags.
     * @details Work admission separately requires homed, no runstop/streaming and
     * a supported controller mode. @see uwvm_stretch_validate_goal */
    unsigned model, mode, homed, runstopped, streaming_position;
    /* Actual tool joint names from the selected native deployment, not a
     * guessed model-to-tool table. Strings are borrowed for this pure call. */
    /** @brief Borrow1..64 distinct actual nonempty scalar joint names, at most128 bytes.
     * @details Native selected tool/controller supplies these names; no table is
     * guessed from the model enum. @see uwvm_stretch_validate_deployment */
    char const* const* scalar_joints;
    /** @brief Number of live borrowed joint-name pointers,1..64. @see scalar_joints */
    size_t scalar_joint_count;
    /** @brief Positive observation time and maximum age in the matching monotonic ns domain.
     * @details Caller supplies trusted time; independent topics need not form an
     * atomic native snapshot. @see uwvm_stretch_validate_deployment */
    uint64_t observed_ns, maximum_age_ns;
    /** @brief Explicit positive trajectory-duration maximum in ns when in trajectory mode.
     * @details Not a wall-clock deadline or native permission. @see uwvm_stretch_validate_goal */
    uint64_t maximum_trajectory_ns;
    /** @brief Borrow exact actual MultiDOF base frame when that channel is present.
     * @details No TF lookup, transform or default frame is inferred. @see uwvm_stretch_validate_goal */
    char const* base_frame;
} uwvm_stretch_deployment;

/** @brief Validate complete local deployment facts and their current receive age.
 * @details Checks enums/flags, bounded distinct joint names and monotonic time.
 * Performs no allocation, native discovery, grant, mode transition or ROS call.
 * @param[in] profile Borrowed immutable complete deployment with live strings.
 * @param[in] now_ns Current trusted matching monotonic nanoseconds.
 * @return 0 on local validity or22 on null/range/stale/name failure.
 * @thread Reentrant with stable immutable inputs; caller serializes observations.
 * @see uwvm_stretch_validate_goal uwvm_stretch_deployment
 */
static inline uint32_t uwvm_stretch_validate_deployment(uwvm_stretch_deployment const* profile, uint64_t now_ns)
{
    size_t i, j;
    if(!profile || profile->model < 1 || profile->model > 3 || profile->mode < 1 || profile->mode > 5 || profile->homed > 1 || profile->runstopped > 1 ||
       profile->streaming_position > 1 || !profile->observed_ns || !profile->maximum_age_ns || now_ns < profile->observed_ns ||
       now_ns - profile->observed_ns > profile->maximum_age_ns || !profile->scalar_joints || !profile->scalar_joint_count || profile->scalar_joint_count > 64)
        return 22;
    for(i = 0; i < profile->scalar_joint_count; ++i)
    {
        if(!profile->scalar_joints[i] || !profile->scalar_joints[i][0] || strlen(profile->scalar_joints[i]) > 128)
            return 22;
        for(j = 0; j < i; ++j)
            if(!strcmp(profile->scalar_joints[i], profile->scalar_joints[j]))
                return 22;
    }
    return 0;
}

/** @brief Validate every original FJT field plus exact deployment/mode constraints.
 * @details The genuine complete codec validates all fields first. Unsupported
 * tolerance guarantees, timestamped starts and channels return95 rather than
 * being erased. Trajectory mode requires at least two strictly timed points;
 * the published one-point profile cannot satisfy it. MultiDOF uses the original
 * position name, explicit base frame and planar/unit-quaternion constraints.
 * No mode switch, runstop release, home, goal submission or replay occurs.
 * @param[in] profile Actual immutable deployment facts with stable borrowed names.
 * @param[in] now_ns Trusted matching monotonic ns for the exact observation age.
 * @param[in] goal Complete original selected bounded Goal, unchanged on return.
 * @return 0 local validity;22 invalid/stale/dimension/ordering failure;95 unsupported
 * original guarantee/channel;125 unhomed/runstopped/streaming or disallowed mode.
 * This result grants no native action and establishes no physical readiness.
 * @thread Reentrant with immutable inputs; no callback, timer or native thread.
 * @see uwvm_stretch_validate_deployment uwvm_stretch_deployment
 */
static inline uint32_t uwvm_stretch_validate_goal(uwvm_stretch_deployment const* profile,
                                                  uint64_t now_ns,
                                                  roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* goal)
{
    uint32_t i, j;
    size_t k;
    uint32_t error = uwvm_stretch_validate_deployment(profile, now_ns);
    if(error)
        return error;
    if(!goal || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_valid(goal))
        return 22;
    if(!profile->homed || profile->runstopped || profile->streaming_position || profile->mode == UWVM_STRETCH_GAMEPAD ||
       profile->mode == UWVM_STRETCH_RUNSTOPPED)
        return 125;
    /* The pinned server does not enforce these complete standard tolerance
     * fields. Refuse a requested guarantee here rather than silently erase it.
     * Generic complete codecs still expose every original value. */
    if(goal->path_tolerance.size || goal->goal_tolerance.size || goal->component_path_tolerance.size || goal->component_goal_tolerance.size ||
       goal->goal_time_tolerance.sec || goal->goal_time_tolerance.nanosec)
        return 95;
    if(!goal->trajectory.joint_names.size && !goal->multi_dof_trajectory.joint_names.size)
        return 22;
    for(i = 0; i < goal->trajectory.joint_names.size; ++i)
    {
        unsigned found = 0;
        uint32_t n = goal->trajectory.joint_names.data[i].size;
        if(!n || memchr(goal->trajectory.joint_names.data[i].data, 0, n))
            return 22;
        for(k = 0; k < profile->scalar_joint_count; ++k)
            if(strlen(profile->scalar_joints[k]) == n && !memcmp(profile->scalar_joints[k], goal->trajectory.joint_names.data[i].data, n))
                found = 1;
        if(!found)
            return 95;
        for(j = 0; j < i; ++j)
            if(n == goal->trajectory.joint_names.data[j].size &&
               !memcmp(goal->trajectory.joint_names.data[i].data, goal->trajectory.joint_names.data[j].data, n))
                return 22;
    }
    if(goal->trajectory.joint_names.size && !goal->trajectory.points.size)
        return 22;
    if(goal->trajectory.header.stamp.sec || goal->trajectory.header.stamp.nanosec || goal->multi_dof_trajectory.header.stamp.sec ||
       goal->multi_dof_trajectory.header.stamp.nanosec)
        return 95;
    if(profile->mode == UWVM_STRETCH_TRAJECTORY && (!profile->maximum_trajectory_ns || (goal->trajectory.joint_names.size && goal->trajectory.points.size < 2)))
        return 95;
    for(i = 0; i < goal->trajectory.points.size; ++i)
    {
        roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* point = &goal->trajectory.points.data[i];
        uint64_t elapsed;
        if(goal->trajectory.points.data[i].positions.size != goal->trajectory.joint_names.size)
            return 22;
        if(point->time_from_start.sec < 0)
            return 22;
        elapsed = (uint64_t)point->time_from_start.sec * 1000000000u + point->time_from_start.nanosec;
        if(profile->mode != UWVM_STRETCH_TRAJECTORY && elapsed)
            return 95;
        if(profile->mode == UWVM_STRETCH_TRAJECTORY)
        {
            if(elapsed > profile->maximum_trajectory_ns)
                return 22;
            if(i)
            {
                roswasmc_bounded_2_builtin_interfaces_msg_Duration const* prior = &goal->trajectory.points.data[i - 1].time_from_start;
                uint64_t previous = (uint64_t)prior->sec * 1000000000u + prior->nanosec;
                if(elapsed <= previous)
                    return 22;
            }
        }
        if((point->velocities.size && point->velocities.size != goal->trajectory.joint_names.size) ||
           (point->accelerations.size && point->accelerations.size != goal->trajectory.joint_names.size) ||
           (point->effort.size && point->effort.size != goal->trajectory.joint_names.size))
            return 22;
    }
    /* The pinned trajectory component's genuine MultiDOF base name is
     * "position". Position/navigation FJT paths do not execute this channel;
     * never let a successful scalar action silently stand in for base motion. */
    if(goal->multi_dof_trajectory.joint_names.size)
    {
        if(profile->mode != UWVM_STRETCH_TRAJECTORY)
            return 95;
        if(goal->multi_dof_trajectory.joint_names.size != 1 || goal->multi_dof_trajectory.joint_names.data[0].size != 8 ||
           memcmp(goal->multi_dof_trajectory.joint_names.data[0].data, "position", 8) || goal->multi_dof_trajectory.points.size < 2 || !profile->base_frame ||
           strlen(profile->base_frame) != goal->multi_dof_trajectory.header.frame_id.size ||
           memcmp(profile->base_frame, goal->multi_dof_trajectory.header.frame_id.data, goal->multi_dof_trajectory.header.frame_id.size))
            return 22;
        for(i = 0; i < goal->multi_dof_trajectory.points.size; ++i)
        {
            roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* point = &goal->multi_dof_trajectory.points.data[i];
            uint64_t elapsed;
            if(point->transforms.size != 1 || point->time_from_start.sec < 0 || (point->velocities.size && point->velocities.size != 1) ||
               (point->accelerations.size && point->accelerations.size != 1))
                return 22;
            elapsed = (uint64_t)point->time_from_start.sec * 1000000000u + point->time_from_start.nanosec;
            if(elapsed > profile->maximum_trajectory_ns)
                return 22;
            if(i)
            {
                roswasmc_bounded_2_builtin_interfaces_msg_Duration const* prior = &goal->multi_dof_trajectory.points.data[i - 1].time_from_start;
                if(elapsed <= (uint64_t)prior->sec * 1000000000u + prior->nanosec)
                    return 22;
            }
            if(point->transforms.data[0].translation.z != 0 || point->transforms.data[0].rotation.x != 0 || point->transforms.data[0].rotation.y != 0 ||
               fabs(point->transforms.data[0].rotation.z * point->transforms.data[0].rotation.z +
                    point->transforms.data[0].rotation.w * point->transforms.data[0].rotation.w - 1) > 1e-9)
                return 22;
            if(point->velocities.size &&
               (point->velocities.data[0].linear.z != 0 || point->velocities.data[0].angular.x != 0 || point->velocities.data[0].angular.y != 0))
                return 22;
            if(point->accelerations.size &&
               (point->accelerations.data[0].linear.z != 0 || point->accelerations.data[0].angular.x != 0 || point->accelerations.data[0].angular.y != 0))
                return 22;
        }
    }
    return 0;
}
#endif
