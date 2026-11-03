/* SPDX-License-Identifier: Apache-2.0 */
#ifndef SDK03_PLANNER_KERNEL_H
#define SDK03_PLANNER_KERNEL_H
#include <stdint.h>
#define SDK03_MAX_JOINTS 16u
typedef struct { int64_t lower, upper; uint64_t step, tolerance; } sdk03_joint_limit;
/* Ordinary pointers within the planner's own heap/trust domain only. */
uint32_t sdk03_bounded_plan(uint32_t count, sdk03_joint_limit const* limits,
                           int64_t const* position, int64_t* target);
#endif
