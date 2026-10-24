/**
 * @file sine_trajectory.h
 * @brief Construct all 1001 original FANUC trajectory samples in caller-owned storage.
 * @details The source-pinned program retains three seconds of motion and a 20-degree amplitude
 * converted to radians. Header, acceleration and effort remain empty as upstream. The separate
 * complete capacity family is required; no point is truncated. This pure operation performs no ROS
 * call or controller admission and preserves output on refusal.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Full 1001-point arithmetic from FANUC send_trajectory.py at da5db3f6.
 * This requires the separate ros2_sine_trajectory source selection. The old
 * eight-point generated family intentionally fails the capacity assertion.
 * No ROS call, timer, controller admission or physical-limit claim occurs.
 */
#ifndef UWVM_FANUC_SINE_TRAJECTORY_H
#define UWVM_FANUC_SINE_TRAJECTORY_H
#ifndef ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_MAX_WIRE_BYTES
# include <fanuc/c/ros2/fanuc-ros2-sine-trajectory/bounded_records.h>
#endif
#include <math.h>
#include <stdint.h>
#include <string.h>

#if defined(__cplusplus)
static_assert(sizeof(((roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory*)0)->points.data) /
                      sizeof(((roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory*)0)->points.data[0]) >=
                  1001,
              "Select the original 1001-point source family; truncation is forbidden");
#else
_Static_assert(sizeof(((roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory*)0)->points.data) /
                       sizeof(((roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory*)0)->points.data[0]) >=
                   1001,
               "Select the original 1001-point source family; truncation is forbidden");
#endif

/**
 * @brief Construct every point of the selected original FANUC sine trajectory.
 * @details Reproduces send_trajectory.py at commit da5db3f6: 1001 samples over
 * three seconds, amplitude 20 degrees converted to radians, and the original
 * cosine displacement and sine velocity expressions. Integer seconds and
 * nanoseconds use the original truncation. Header, acceleration and effort
 * remain empty; the final floating sine residual is retained. Names and order
 * come from the supplied whole JointState. This application additionally
 * rejects empty/duplicate names, mismatched dimensions and non-finite values.
 * Every refusal precedes output mutation; no array is truncated to capacity.
 *
 * This pure C11-or-newer operation performs no import, allocation, clock read,
 * authorization or controller call. Concurrent calls require distinct outputs
 * and immutable, disjoint inputs. The caller retains all storage ownership;
 * pointers are borrowed only for this call. Use caller/static output storage:
 * the complete generated 1001-point object is unsuitable for a small stack.
 * Compile with the separate full family; the old eight-point family is refused
 * by the capacity assertion. This kernel alone does not implement the ROS
 * subscription, one-second timer, native publication or physical execution.
 * @param[in] state Valid complete canonical JointState. Positions are radians;
 * its active name/position counts must agree and fit the selected full family.
 * @param[out] output Disjoint writable complete trajectory object. Positions
 * are radians, velocities radians/second, and time_from_start seconds plus ns.
 * The object is unchanged on failure and fully initialized on success.
 * @return 0 for local construction, 22 for invalid storage/shape/source values,
 * or 34 for non-finite derived arithmetic. Success grants no native admission.
 * @see roswasmc_bounded_2_sensor_msgs_msg_JointState_valid
 * @see roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode
 */
static inline uint32_t uwvm_fanuc_make_original_sine(roswasmc_bounded_2_sensor_msgs_msg_JointState const* state,
                                                     roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* output)
{
    double displacement[1001], velocity[1001];
    double const amplitude = 20.0 * (3.141592653589793238462643383279502884 / 180.0);
    double const omega = (2.0 * 3.141592653589793238462643383279502884) / 3.0;
    size_t i, j, count;
    if(!state || !output || uwvm_bounded_overlap(state, sizeof *state, output, sizeof *output))
        return 22;
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(state))
        return 22;
    count = state->name.size;
    if(!count || count != state->position.size || count > sizeof output->joint_names.data / sizeof output->joint_names.data[0] ||
       count > sizeof output->points.data[0].positions.data / sizeof output->points.data[0].positions.data[0] ||
       count > sizeof output->points.data[0].velocities.data / sizeof output->points.data[0].velocities.data[0])
        return 22;
    for(j = 0; j < count; ++j)
    {
        if(!state->name.data[j].size || state->name.data[j].size > sizeof output->joint_names.data[j].data)
            return 22;
        for(i = 0; i < j; ++i)
            if(state->name.data[i].size == state->name.data[j].size && !memcmp(state->name.data[i].data, state->name.data[j].data, state->name.data[j].size))
                return 22;
    }
    for(i = 0; i <= 1000; ++i)
    {
        double const time = ((double)i * 3.0) / 1000.0, phase = omega * time;
        displacement[i] = amplitude * (1.0 - cos(phase));
        velocity[i] = amplitude * omega * sin(phase);
        if(!isfinite(displacement[i]) || !isfinite(velocity[i]))
            return 34;
        for(j = 0; j < count; ++j)
            if(!isfinite(state->position.data[j] + displacement[i]))
                return 34;
    }
    memset(output, 0, sizeof *output);
    output->joint_names.size = (uint32_t)count;
    output->points.size = 1001;
    for(j = 0; j < count; ++j)
    {
        output->joint_names.data[j].size = state->name.data[j].size;
        memcpy(output->joint_names.data[j].data, state->name.data[j].data, state->name.data[j].size);
    }
    for(i = 0; i <= 1000; ++i)
    {
        roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* point = &output->points.data[i];
        double const time = ((double)i * 3.0) / 1000.0;
        point->positions.size = point->velocities.size = (uint32_t)count;
        point->time_from_start.sec = (int32_t)time;
        point->time_from_start.nanosec = (uint32_t)((time - (double)point->time_from_start.sec) * 1e9);
        for(j = 0; j < count; ++j)
        {
            point->positions.data[j] = state->position.data[j] + displacement[i];
            point->velocities.data[j] = velocity[i];
        }
    }
    return 0;
}
#endif
