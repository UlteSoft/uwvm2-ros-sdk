/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_ROS_PID_H
#define UWVM_ROS_PID_H
#ifdef __cplusplus
extern "C" {
#endif
typedef struct uwvm_ros_pid uwvm_ros_pid;
/* Instance-owned state. No native computation or cross-module pointer identity.
   Returns null on invalid gains/allocation failure. */
uwvm_ros_pid *uwvm_ros_pid_create(double p, double i, double d);
void uwvm_ros_pid_destroy(uwvm_ros_pid *pid);
/* Explicit actuator-relative output bounds. Infinite bounds retain the unlimited
   default. Finite bounds use the upstream conditional-integration strategy.
   0: accepted; 1: invalid bounds; 2: other exception. No state change on rejection. */
int uwvm_ros_pid_set_limits(uwvm_ros_pid *pid, double lower, double upper);
/* 0: result stored; 1: invalid argument; 2: other upstream exception.
   On failure *output is unchanged. No exception crosses the C boundary. */
int uwvm_ros_pid_compute(uwvm_ros_pid *pid, double error, double seconds, double *output);
#ifdef __cplusplus
}
#endif
#endif
