/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_ROS_TRAJECTORY_H
#define UWVM_ROS_TRAJECTORY_H
#include <stddef.h>
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif
/* Pointers belong to the same private Wasm instance. These are not cross-module
   handles. Input arrays contain count elements; null optional fields are absent.
   Acceleration requires velocity, matching the upstream spline precondition. */
typedef struct uwvm_ros_trajectory_point {
  const double *positions, *velocities, *accelerations, *effort;
} uwvm_ros_trajectory_point;
typedef struct uwvm_ros_segment uwvm_ros_segment;
/* Copies both endpoints. Zero duration retains the upstream endpoint behavior.
   Null reports invalid input or an allocation failure; no fixed size quota. */
uwvm_ros_segment *uwvm_ros_segment_create(size_t count, const uwvm_ros_trajectory_point *start,
                                         const uwvm_ros_trajectory_point *finish, int64_t duration_ns);
void uwvm_ros_segment_destroy(uwvm_ros_segment *segment);
/* Returns 0 on success, 1 for invalid arguments, 2 for a C++ failure, 3 for
   a nonfinite computed value. All output buffers remain unchanged on failure.
   Non-null output arrays have at least capacity elements. Positions required.
   Elapsed time is supplied by the caller; this component never reads a clock. */
int uwvm_ros_segment_sample(uwvm_ros_segment *segment, int64_t elapsed_ns,
                           double *positions, double *velocities, double *accelerations,
                           double *effort, size_t capacity);
#ifdef __cplusplus
}
#endif
#endif
