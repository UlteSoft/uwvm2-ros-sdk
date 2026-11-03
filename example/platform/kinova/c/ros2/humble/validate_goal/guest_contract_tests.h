/* SPDX-License-Identifier: Apache-2.0 */
/** @file guest_contract_tests.h
 * @brief Executable Wasm assertions for the actual Gen3 validator and codec.
 * @details These deterministic guest component tests make no ROS call and grant
 * no authority. They are not official-simulation or legacy-client acceptance.
 */
#ifndef UWVM_KINOVA_GUEST_CONTRACT_TESTS_H
#define UWVM_KINOVA_GUEST_CONTRACT_TESTS_H
#include <kinova/c/gen3_goal.h>
#include <stdio.h>
#include <string.h>

typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal kinova_test_goal;
static kinova_test_goal kinova_test_value, kinova_test_decoded, kinova_test_before;
static uwvm_gen3_joint_limits kinova_test_limits;
static unsigned kinova_test_checks, kinova_test_failures;
static unsigned char kinova_test_bytes[8581], kinova_test_reencoded[8581];

static void kinova_test_check(int condition, char const* label)
{
    ++kinova_test_checks;
    if(!condition)
    {
        ++kinova_test_failures;
        fprintf(stderr, "kinova_guest_assertion_failed=%s\n", label);
    }
}

/** @brief Synthetic local test limits, never an official robot/provider grant. */
static void kinova_test_reset(unsigned count)
{
    unsigned i;
    memset(&kinova_test_value, 0, sizeof kinova_test_value);
    memset(&kinova_test_limits, 0, sizeof kinova_test_limits);
    kinova_test_limits.model = count;
    kinova_test_limits.maximum_trajectory_ns = UINT64_C(3000000000);
    kinova_test_value.trajectory.joint_names.size = count;
    kinova_test_value.trajectory.points.size = 1;
    kinova_test_value.trajectory.points.data[0].positions.size = count;
    kinova_test_value.trajectory.points.data[0].time_from_start.sec = 1;
    for(i = 0; i < count; ++i)
    {
        unsigned char name[7] = {'j','o','i','n','t','_', (unsigned char)('1' + i)};
        kinova_test_value.trajectory.joint_names.data[i].size = 7;
        memcpy(kinova_test_value.trajectory.joint_names.data[i].data, name, 7);
        kinova_test_limits.lower_rad[i] = -3.0;
        kinova_test_limits.upper_rad[i] = 3.0;
        kinova_test_limits.velocity_rps[i] = 2.0;
        kinova_test_limits.acceleration_rps2[i] = 4.0;
    }
}
static uint32_t kinova_test_validate(void)
{
    return uwvm_gen3_validate_goal(&kinova_test_limits, &kinova_test_value);
}
static void kinova_test_bounds(void)
{
    unsigned n, i;
    for(n = 6; n <= 7; ++n)
    {
        kinova_test_reset(n);
        kinova_test_check(kinova_test_validate() == 0, "valid_model");
        for(i = 0; i < n; ++i)
        {
            kinova_test_value.trajectory.points.data[0].positions.data[i] = -3.0;
            kinova_test_check(kinova_test_validate() == 0, "lower_boundary");
            kinova_test_value.trajectory.points.data[0].positions.data[i] = -3.000001;
            kinova_test_check(kinova_test_validate() == 22, "below_lower");
            kinova_test_value.trajectory.points.data[0].positions.data[i] = 3.0;
            kinova_test_check(kinova_test_validate() == 0, "upper_boundary");
            kinova_test_value.trajectory.points.data[0].positions.data[i] = 3.000001;
            kinova_test_check(kinova_test_validate() == 22, "above_upper");
            kinova_test_value.trajectory.points.data[0].positions.data[i] = 0;
        }
        kinova_test_value.trajectory.points.data[0].positions.data[0] = NAN;
        kinova_test_check(kinova_test_validate() == 22, "nonfinite_position");
        kinova_test_value.trajectory.points.data[0].positions.data[0] = INFINITY;
        kinova_test_check(kinova_test_validate() == 22, "infinite_position");
        kinova_test_reset(n);
        kinova_test_limits.upper_rad[0] = kinova_test_limits.lower_rad[0];
        kinova_test_check(kinova_test_validate() == 22, "invalid_limits");
        kinova_test_reset(n);
        kinova_test_value.trajectory.joint_names.data[0].data[6] = '0';
        kinova_test_check(kinova_test_validate() == 22, "foreign_joint");
        kinova_test_reset(n);
        kinova_test_value.trajectory.points.data[0].positions.size = n - 1;
        kinova_test_check(kinova_test_validate() == 22, "position_dimension");
        kinova_test_reset(n);
        kinova_test_value.trajectory.points.data[0].velocities.size = n;
        kinova_test_value.trajectory.points.data[0].velocities.data[0] = 2.0;
        kinova_test_check(kinova_test_validate() == 0, "velocity_boundary");
        kinova_test_value.trajectory.points.data[0].velocities.data[0] = 2.000001;
        kinova_test_check(kinova_test_validate() == 22, "excess_velocity");
        kinova_test_reset(n);
        kinova_test_value.trajectory.points.data[0].accelerations.size = n;
        kinova_test_value.trajectory.points.data[0].accelerations.data[0] = -4.000001;
        kinova_test_check(kinova_test_validate() == 22, "excess_acceleration");
        kinova_test_reset(n);
        kinova_test_value.trajectory.points.data[0].effort.size = n;
        kinova_test_check(kinova_test_validate() == 95, "effort_unsupported");
        kinova_test_reset(n);
        kinova_test_value.multi_dof_trajectory.joint_names.size = 1;
        kinova_test_check(kinova_test_validate() == 95, "multidof_unsupported");
    }
    kinova_test_reset(7);
    kinova_test_limits.model = 5;
    kinova_test_check(kinova_test_validate() == 22, "invalid_model");
    kinova_test_check(uwvm_gen3_validate_goal(NULL, &kinova_test_value) == 22, "null_limits");
    kinova_test_check(uwvm_gen3_validate_goal(&kinova_test_limits, NULL) == 22, "null_goal");
}
/** Exercise the production duration validator using real independent Duration values. */
static uint32_t kinova_test_duration_sequence(
    roswasmc_bounded_2_builtin_interfaces_msg_Duration const* values, size_t count)
{
    size_t i; uint64_t previous = 0, duration = 0; uint32_t code;
    if(!values || !count) return 22;
    for(i = 0; i < count; ++i)
    {
        code = uwvm_gen3_validate_time_from_start(kinova_test_limits.maximum_trajectory_ns,
            &values[i], previous, i != 0, &duration);
        if(code) return code;
        previous = duration;
    }
    return 0;
}
static void kinova_test_sequence(void)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Duration times[2] = {{1, 0}, {1, 0}};
    kinova_test_reset(7);
    kinova_test_check(kinova_test_duration_sequence(times, 2) == 22, "duplicate_time");
    times[1].sec = 0;
    kinova_test_check(kinova_test_duration_sequence(times, 2) == 22, "decreasing_time");
    times[1].sec = 2;
    kinova_test_check(kinova_test_duration_sequence(times, 2) == 0, "increasing_time");
    times[1].sec = 3;
    kinova_test_check(kinova_test_duration_sequence(times, 2) == 0, "duration_boundary");
    times[1].nanosec = 1;
    kinova_test_check(kinova_test_duration_sequence(times, 2) == 22, "duration_exceeded");
    times[0].sec = -1;
    kinova_test_check(kinova_test_duration_sequence(times, 1) == 22, "negative_time");
    times[0].sec = 0; times[0].nanosec = 1000000000u;
    kinova_test_check(kinova_test_duration_sequence(times, 1) == 22, "noncanonical_nanoseconds");
    kinova_test_value.trajectory.points.size = 0;
    kinova_test_check(kinova_test_validate() == 22, "empty_trajectory");
    kinova_test_reset(7);
    /* Change the declared count only; never index beyond the real capacity1. */
    kinova_test_value.trajectory.points.size = 2;
    kinova_test_check(kinova_test_validate() == 22, "bounded_profile_capacity_refused");
    kinova_test_reset(7);
    kinova_test_value.trajectory.points.data[0].time_from_start.sec = 3;
    kinova_test_check(kinova_test_validate() == 0, "single_point_duration_boundary");
    kinova_test_value.trajectory.points.data[0].time_from_start.nanosec = 1;
    kinova_test_check(kinova_test_validate() == 22, "single_point_duration_exceeded");
}
static void kinova_test_codec(void)
{
    size_t length = 0, reencoded = 0, cut, sentinel;
    uint32_t code;
    kinova_test_reset(7);
    kinova_test_value.trajectory.points.data[0].positions.data[0] = 0.125;
    code = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(
        &kinova_test_value, kinova_test_bytes, sizeof kinova_test_bytes, &length);
    kinova_test_check(code == 0 && length > 64 && length < sizeof kinova_test_bytes, "encode_valid");
    if(code != 0 || length <= 64 || length >= sizeof kinova_test_bytes) return;
    code = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(
        kinova_test_bytes, length, &kinova_test_decoded);
    kinova_test_check(code == 0, "decode_valid");
    kinova_test_check(uwvm_gen3_validate_goal(&kinova_test_limits, &kinova_test_decoded) == 0, "decoded_goal_semantics");
    code = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(
        &kinova_test_decoded, kinova_test_reencoded, sizeof kinova_test_reencoded, &reencoded);
    kinova_test_check(code == 0 && length == reencoded &&
                      memcmp(kinova_test_bytes, kinova_test_reencoded, length) == 0, "exact_roundtrip");
    sentinel = (size_t)-1;
    memset(kinova_test_reencoded, 0xa5, sizeof kinova_test_reencoded);
    code = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(
        &kinova_test_value, kinova_test_reencoded, length - 1, &sentinel);
    kinova_test_check(code == 90 && sentinel == (size_t)-1 &&
                      kinova_test_reencoded[0] == 0xa5, "encode_capacity_transaction");
    memset(&kinova_test_before, 0xa5, sizeof kinova_test_before);
    for(cut = 0; cut < length; ++cut)
    {
        kinova_test_decoded = kinova_test_before;
        code = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(
            kinova_test_bytes, cut, &kinova_test_decoded);
        kinova_test_check(code == 22 &&
                          memcmp(&kinova_test_decoded, &kinova_test_before, sizeof kinova_test_before) == 0,
                          "truncation_preserves_destination");
    }
    kinova_test_bytes[length] = 0;
    kinova_test_decoded = kinova_test_before;
    code = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(
        kinova_test_bytes, length + 1, &kinova_test_decoded);
    kinova_test_check(code == 22 &&
                      memcmp(&kinova_test_decoded, &kinova_test_before, sizeof kinova_test_before) == 0,
                      "trailing_byte_preserves_destination");
}
/** @brief Return nonzero on any assertion failure or an unknown/empty group. */
static int kinova_guest_contract_test(char const* group)
{
    kinova_test_checks = kinova_test_failures = 0;
    if(strcmp(group, "bounds") == 0) kinova_test_bounds();
    else if(strcmp(group, "sequence") == 0) kinova_test_sequence();
    else if(strcmp(group, "codec") == 0) kinova_test_codec();
    else return 22;
    printf("kinova_guest_contract_v1 group=%s assertions=%u failures=%u\n",
           group, kinova_test_checks, kinova_test_failures);
    return kinova_test_checks && !kinova_test_failures ? 0 : 1;
}
#endif
