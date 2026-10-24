/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_TROSSEN_APPLICATION_H
#define UWVM_TROSSEN_APPLICATION_H
#include <math.h>
#include <string.h>
#include <platform/trossen/c/state.h>

#if UWVM_TROSSEN_PROFILE <= 7
# if UWVM_TROSSEN_ROS_VERSION == 1
typedef roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse uwvm_trossen_robot_info;
#  define UWVM_TROSSEN_INFO_VALID roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_valid
# else
typedef roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response uwvm_trossen_robot_info;
#  define UWVM_TROSSEN_INFO_VALID roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_valid
# endif

/** @brief Validate a complete Interbotix XS group command against original RobotInfo.
 * @details Profiles1..7 only. RobotInfo must come from the same independently
 * authorized robot/group and current operating-mode epoch. Checks all1..64
 * joints, exact vector lengths, group identity, nonempty distinct names, unique
 * nonnegative IDs/state indices and complete finite limits/commands. Position
 * uses radians; velocity uses radians/second. PWM/current/linear-position modes
 * need distinct unit-aware adapters and return95. No model is inferred, value
 * clamped, field projected, capability opened or native command sent.
 * @param[in] info Borrowed complete original RobotInfo response from the selected epoch.
 * @param[in] command Borrowed complete selected JointGroupCommand for that group.
 * @param[in] group Explicit nonempty NUL-free group bytes, stable through return.
 * @param[in] group_size Group length1..128 bytes; must match both original names.
 * @return 0 on validity,95 for unsupported mode,22 for malformed identity,
 * dimensions, nonfinite values, duplicates or limits. No external effect occurs.
 * @thread Reentrant with immutable independent arguments; retains no references.
 * @see uwvm_trossen_robot_info uwvm_trossen_publish_command
 */
static inline uint32_t
    uwvm_trossen_validate_group(uwvm_trossen_robot_info const* info, UWVM_TROSSEN_COMMAND const* command, unsigned char const* group, size_t group_size)
{
    uint32_t i, j, n;
    int position, velocity;
    if(!info || !command || !group || !group_size || group_size > 128 || memchr(group, 0, group_size) || !UWVM_TROSSEN_INFO_VALID(info) ||
       !UWVM_TROSSEN_JOIN(UWVM_TROSSEN_COMMAND, _valid)(command) || command->name.size != group_size || memcmp(command->name.data, group, group_size))
        return 22;
    if(info->num_joints <= 0 || info->num_joints > 64)
        return 22;
    n = (uint32_t)info->num_joints;
    if(info->name.size != 1 || info->name.data[0].size != group_size || memcmp(info->name.data[0].data, group, group_size))
        return 22;
    if(command->cmd.size != n || info->joint_names.size != n || info->joint_ids.size != n || info->joint_lower_limits.size != n ||
       info->joint_upper_limits.size != n || info->joint_velocity_limits.size != n || info->joint_state_indices.size != n)
        return 22;
    position = info->mode.size == 8 && !memcmp(info->mode.data, "position", 8);
    velocity = info->mode.size == 8 && !memcmp(info->mode.data, "velocity", 8);
    if(!position && !velocity)
        return 95;
    for(i = 0; i < n; ++i)
    {
        double value = command->cmd.data[i];
        double lower = info->joint_lower_limits.data[i], upper = info->joint_upper_limits.data[i];
        double speed = info->joint_velocity_limits.data[i];
        if(!info->joint_names.data[i].size || info->joint_ids.data[i] < 0 || info->joint_state_indices.data[i] < 0 || !isfinite(value) || !isfinite(lower) ||
           !isfinite(upper) || lower > upper || !isfinite(speed) || speed <= 0 || (position && (value < lower || value > upper)) ||
           (velocity && fabs(value) > speed))
            return 22;
        for(j = 0; j < i; ++j)
        {
            if(info->joint_ids.data[i] == info->joint_ids.data[j] || info->joint_state_indices.data[i] == info->joint_state_indices.data[j] ||
               (info->joint_names.data[i].size == info->joint_names.data[j].size &&
                !memcmp(info->joint_names.data[i].data, info->joint_names.data[j].data, info->joint_names.data[i].size)))
                return 22;
        }
    }
    return 0;
}
#endif
#endif
