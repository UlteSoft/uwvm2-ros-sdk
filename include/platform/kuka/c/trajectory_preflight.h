/**
 * @file trajectory_preflight.h
 * @brief Complete kuka values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see document/platform/kuka/en_US/README.md
 */

/* SPDX-License-Identifier: Apache-2.0
 * Pure KUKA trajectory preflight for explicitly selected controller routes.
 * Complete generated values stay unchanged. No ROS import, grant, socket,
 * clock, allocation, command, physical limit discovery or controller admission.
 * This conservative application subset is not a physical safety certification.
 */
#ifndef UWVM_KUKA_TRAJECTORY_PREFLIGHT_H
#define UWVM_KUKA_TRAJECTORY_PREFLIGHT_H
#ifndef UWVM_VENDOR_RECORDS_HEADER
# error "Select the exact vendor source domain with the public SDK provider"
#endif
#include UWVM_VENDOR_RECORDS_HEADER
#include <math.h>
#include <stddef.h>
#include <stdint.h>
#include <string.h>

enum uwvm_kuka_route
{
    uwvm_kuka_kss_rsi_six_axis = 1,
    uwvm_kuka_iiqka_os2_rsi_six_axis = 2,
    uwvm_kuka_iiqka_eac_six_axis = 3,
    uwvm_kuka_sunrise_fri_seven_axis = 4
};

/**
 * @brief Borrowed exact joint-name bytes in installation order.
 * @details size counts active UTF-8 bytes, excludes a terminator, and must fit
 * the selected complete family. The caller retains readable storage through
 * validation. No allocation, identity authentication or permission is implied.
 * @see uwvm_kuka_trajectory_contract
 */
typedef struct uwvm_kuka_joint_name
{
    unsigned char const* data;
    size_t size;
} uwvm_kuka_joint_name;

/**
 * @brief Caller-supplied route, joint order, limits and observation-age contract.
 * @details Pointers borrow live arrays of joint_count entries through the call;
 * the caller supplies disjoint report storage and immutable inputs. Revolute
 * positions and first_position_tolerance use radians. state_age_ns and its
 * nonzero maximum use one caller steady-clock domain, not the ROS header stamp.
 * maximum_points is a nonzero application quota, never permission to truncate.
 * Route/version assertions, bounds and current state must come from the exact
 * admitted installation; this SDK cannot authenticate or discover them. No
 * resource, clock, allocation or controller permission is created by the value.
 * Concurrent validators may share immutable inputs, with independent reports.
 * @see uwvm_kuka_validate_trajectory
 */
typedef struct uwvm_kuka_trajectory_contract
{
    enum uwvm_kuka_route route;
    size_t joint_count;
    uwvm_kuka_joint_name const* joint_names;
    double const* lower_position;
    double const* upper_position;
    double const* current_position;
    double first_position_tolerance;
    uint64_t state_age_ns;
    uint64_t maximum_state_age_ns;
    size_t maximum_points;
} uwvm_kuka_trajectory_contract;

/**
 * @brief Stable local diagnostic categories, independent of Host status codes.
 * @details Categories identify the first rejected contract/source/trajectory
 * condition. They are neither native controller errors nor safety outcomes.
 * Zero means this local check passed; it does not authorize a robot operation.
 * @see uwvm_kuka_preflight_report
 */
enum uwvm_kuka_preflight_reason
{
    uwvm_kuka_preflight_ok = 0,
    uwvm_kuka_preflight_contract = 1,
    uwvm_kuka_preflight_source_value = 2,
    uwvm_kuka_preflight_stale_state = 3,
    uwvm_kuka_preflight_joint_order = 4,
    uwvm_kuka_preflight_point_quota = 5,
    uwvm_kuka_preflight_unsupported_component = 6,
    uwvm_kuka_preflight_duration = 7,
    uwvm_kuka_preflight_array_shape = 8,
    uwvm_kuka_preflight_position_limit = 9,
    uwvm_kuka_preflight_first_position = 10,
    uwvm_kuka_preflight_final_velocity = 11,
    uwvm_kuka_preflight_final_acceleration = 12,
    uwvm_kuka_preflight_tolerance = 13
};

/**
 * @brief Caller-owned first-failure category and optional zero-based indices.
 * @details SIZE_MAX means no individual point/joint caused the refusal. The
 * optional report must be live, writable and disjoint from inputs. Its contents
 * are local diagnostics only; no native result, allocation or grant is stored.
 * @see uwvm_kuka_validate_trajectory
 */
typedef struct uwvm_kuka_preflight_report
{
    enum uwvm_kuka_preflight_reason reason;
    size_t point;
    size_t joint;
} uwvm_kuka_preflight_report;

/**
 * @brief Store one local diagnostic and return its independent numeric status.
 * @details Pure helper with no import/allocation/grant. Caller retains report
 * storage; concurrent calls require distinct writable reports. A null report
 * suppresses diagnostic writes without changing the returned status.
 * @param[out] report Optional live disjoint diagnostic object.
 * @param[in] reason Local category; not a native controller error.
 * @param[in] point Zero-based point index or SIZE_MAX.
 * @param[in] joint Zero-based joint index or SIZE_MAX.
 * @param[in] error Exact unsigned status returned unchanged.
 * @return error, including0 when explicitly supplied.
 * @see uwvm_kuka_preflight_report
 */
static inline uint32_t
    uwvm_kuka_preflight_fail(uwvm_kuka_preflight_report* report, enum uwvm_kuka_preflight_reason reason, size_t point, size_t joint, uint32_t error)
{
    if(report)
    {
        report->reason = reason;
        report->point = point;
        report->joint = joint;
    }
    return error;
}

/**
 * @brief Check a nonnegative, normalized trajectory duration.
 * @details Requires a live immutable duration; no clock is read, no deadline
 * is established and no permission is required. Concurrent immutable reads
 * are supported. A null/dangling pointer violates the caller storage contract.
 * @param[in] duration Seconds plus nanoseconds; nanosec must be below1e9.
 * @return Nonzero when sec is nonnegative and nanosec normalized, otherwise0.
 * @see uwvm_kuka_validate_trajectory
 */
static inline int uwvm_kuka_duration_valid(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* duration)
{
    return duration->sec >= 0 && duration->nanosec < UINT32_C(1000000000);
}

/**
 * @brief Check an original FollowJointTrajectory tolerance scalar.
 * @details -1 removes a tolerance,0 selects server defaults, and finite positive
 * values request a bound in the original component's units. This pure helper
 * performs no native check, allocation or permission change and has no shared
 * mutable state. It does not reinterpret one component's units as another's.
 * @param[in] value Original scalar; NaN/infinity and other negatives fail.
 * @return Nonzero for finite values at least0 or exactly-1, otherwise0.
 * @see uwvm_kuka_validate_trajectory
 */
static inline int uwvm_kuka_tolerance_valid(double value)
{
    return isfinite(value) && (value >= 0 || value == -1);
}

/**
 * @brief Validate the whole selected trajectory against an explicit installation.
 * @details Validates canonical source values before counted-array traversal,
 * then route constraints, exact joint order, point quota, increasing normalized
 * durations, complete array shapes, caller limits and route-specific endpoint
 * conditions. Original tolerance meanings remain -1/remove,0/server default,
 * positive/requested bound. Duplicate/unknown joints are refused. Unsupported
 * MultiDOF/component fields remain present and are explicitly rejected rather
 * than dropped. Revolute positions use radians; velocity/acceleration retain
 * radians/s and radians/s^2. This conservative application contract is not a
 * general native Action admission rule or a physical safety certification.
 *
 * C11 source and the selected generated family are required; a small C++98
 * facade does not qualify the entire generated SDK in that mode. No import,
 * allocation, clock, alias opening, authority mutation or command occurs.
 * Inputs are borrowed through return and unchanged; concurrent validations
 * require immutable inputs and independent, disjoint optional reports.
 * @param[in] goal Complete original FJT Goal from the exact selected family.
 * @param[in] contract Caller-owned route/order/bounds/freshness/quota assertions.
 * @param[out] report Optional live disjoint first-failure diagnostics. Ordinary
 * C pointer validity remains caller responsibility; arbitrary pointers cannot
 * be authenticated by this local validator.
 * @return 0 for local acceptance,22 for invalid values/shapes/contracts or
 * endpoint constraints,34 for position limits,90 for point quota,95 for an unsupported route or
 * component, or110 for stale state. Inspect report for the first category and
 * indices. Success neither grants permission nor establishes native acceptance.
 * @see uwvm_kuka_trajectory_contract
 * @see uwvm_kuka_preflight_report
 */
static inline uint32_t uwvm_kuka_validate_trajectory(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* goal,
                                                     uwvm_kuka_trajectory_contract const* contract,
                                                     uwvm_kuka_preflight_report* report)
{
    size_t i, j, p, expected_joints = 0;
    int zero_velocity = 0, zero_acceleration = 0, match_first = 0;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* trajectory;
    if(report && ((goal && uwvm_bounded_overlap(report, sizeof *report, goal, sizeof *goal)) ||
                  (contract && uwvm_bounded_overlap(report, sizeof *report, contract, sizeof *contract))))
        return 22;
    if(!goal || !contract)
        return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_contract, SIZE_MAX, SIZE_MAX, 22);
    switch(contract->route)
    {
        case uwvm_kuka_kss_rsi_six_axis:
            expected_joints = 6;
            zero_velocity = 0;
            zero_acceleration = 0;
            match_first = 0;
            break;
        case uwvm_kuka_iiqka_os2_rsi_six_axis:
            expected_joints = 6;
            zero_velocity = 0;
            zero_acceleration = 0;
            match_first = 0;
            break;
        case uwvm_kuka_iiqka_eac_six_axis:
            expected_joints = 6;
            zero_velocity = 0;
            zero_acceleration = 0;
            match_first = 0;
            break;
        case uwvm_kuka_sunrise_fri_seven_axis:
            expected_joints = 7;
            zero_velocity = 0;
            zero_acceleration = 0;
            match_first = 0;
            break;
        default: return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_contract, SIZE_MAX, SIZE_MAX, 95);
    }
    if(!contract->joint_count || !contract->joint_names || !contract->lower_position || !contract->upper_position || !contract->current_position ||
       !contract->maximum_points || !contract->maximum_state_age_ns || !isfinite(contract->first_position_tolerance) ||
       contract->first_position_tolerance < 0 || (expected_joints && contract->joint_count != expected_joints))
        return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_contract, SIZE_MAX, SIZE_MAX, 22);
    if(!roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_valid(goal))
        return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_source_value, SIZE_MAX, SIZE_MAX, 22);
    trajectory = &goal->trajectory;
    if(contract->joint_count > sizeof trajectory->joint_names.data / sizeof trajectory->joint_names.data[0] ||
       contract->joint_count != trajectory->joint_names.size)
        return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_joint_order, SIZE_MAX, SIZE_MAX, 22);
    if(contract->state_age_ns > contract->maximum_state_age_ns)
        return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_stale_state, SIZE_MAX, SIZE_MAX, 110);
    for(i = 0; i < contract->joint_count; ++i)
    {
        uwvm_kuka_joint_name const* name = &contract->joint_names[i];
        if(!name->data || !name->size || name->size > sizeof trajectory->joint_names.data[i].data || !isfinite(contract->lower_position[i]) ||
           !isfinite(contract->upper_position[i]) || contract->lower_position[i] > contract->upper_position[i] || !isfinite(contract->current_position[i]) ||
           contract->current_position[i] < contract->lower_position[i] || contract->current_position[i] > contract->upper_position[i])
            return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_contract, SIZE_MAX, i, 22);
        if(name->size != trajectory->joint_names.data[i].size || memcmp(name->data, trajectory->joint_names.data[i].data, name->size))
            return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_joint_order, SIZE_MAX, i, 22);
        for(j = 0; j < i; ++j)
            if(name->size == contract->joint_names[j].size && !memcmp(name->data, contract->joint_names[j].data, name->size))
                return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_joint_order, SIZE_MAX, i, 22);
    }
    if(!trajectory->points.size || trajectory->points.size > contract->maximum_points)
        return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_point_quota, SIZE_MAX, SIZE_MAX, 90);
    if(goal->multi_dof_trajectory.joint_names.size || goal->multi_dof_trajectory.points.size || goal->component_path_tolerance.size ||
       goal->component_goal_tolerance.size)
        return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_unsupported_component, SIZE_MAX, SIZE_MAX, 95);
    if(!uwvm_kuka_duration_valid(&goal->goal_time_tolerance) || trajectory->header.stamp.sec < 0 || trajectory->header.stamp.nanosec >= UINT32_C(1000000000))
        return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_duration, SIZE_MAX, SIZE_MAX, 22);
    for(p = 0; p < trajectory->points.size; ++p)
    {
        roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* point = &trajectory->points.data[p];
        if(!uwvm_kuka_duration_valid(&point->time_from_start) ||
           (p && (point->time_from_start.sec < trajectory->points.data[p - 1].time_from_start.sec ||
                  (point->time_from_start.sec == trajectory->points.data[p - 1].time_from_start.sec &&
                   point->time_from_start.nanosec <= trajectory->points.data[p - 1].time_from_start.nanosec))))
            return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_duration, p, SIZE_MAX, 22);
        if(point->positions.size != contract->joint_count || (point->velocities.size && point->velocities.size != contract->joint_count) ||
           (point->accelerations.size && point->accelerations.size != contract->joint_count) ||
           (point->effort.size && point->effort.size != contract->joint_count) || (point->accelerations.size && !point->velocities.size))
            return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_array_shape, p, SIZE_MAX, 22);
        for(i = 0; i < contract->joint_count; ++i)
        {
            if(point->positions.data[i] < contract->lower_position[i] || point->positions.data[i] > contract->upper_position[i])
                return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_position_limit, p, i, 34);
            if(match_first && !p && fabs(point->positions.data[i] - contract->current_position[i]) > contract->first_position_tolerance)
                return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_first_position, p, i, 22);
            if(p + 1 == trajectory->points.size && zero_velocity && point->velocities.size && point->velocities.data[i] != 0)
                return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_final_velocity, p, i, 22);
            if(p + 1 == trajectory->points.size && zero_acceleration && point->accelerations.size && point->accelerations.data[i] != 0)
                return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_final_acceleration, p, i, 22);
        }
    }
    for(p = 0; p < 2; ++p)
    {
        size_t count = p ? goal->goal_tolerance.size : goal->path_tolerance.size;
        for(i = 0; i < count; ++i)
        {
            roswasmc_bounded_2_control_msgs_msg_JointTolerance const* tolerance = p ? &goal->goal_tolerance.data[i] : &goal->path_tolerance.data[i];
            size_t found = SIZE_MAX, previous;
            for(j = 0; j < contract->joint_count; ++j)
                if(tolerance->name.size == contract->joint_names[j].size && !memcmp(tolerance->name.data, contract->joint_names[j].data, tolerance->name.size))
                    found = j;
            if(found == SIZE_MAX || !uwvm_kuka_tolerance_valid(tolerance->position) || !uwvm_kuka_tolerance_valid(tolerance->velocity) ||
               !uwvm_kuka_tolerance_valid(tolerance->acceleration))
                return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_tolerance, SIZE_MAX, found, 22);
            for(previous = 0; previous < i; ++previous)
            {
                roswasmc_bounded_2_control_msgs_msg_JointTolerance const* earlier =
                    p ? &goal->goal_tolerance.data[previous] : &goal->path_tolerance.data[previous];
                if(earlier->name.size == tolerance->name.size && !memcmp(earlier->name.data, tolerance->name.data, tolerance->name.size))
                    return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_tolerance, SIZE_MAX, found, 22);
            }
        }
    }
    return uwvm_kuka_preflight_fail(report, uwvm_kuka_preflight_ok, SIZE_MAX, SIZE_MAX, 0);
}
#endif
