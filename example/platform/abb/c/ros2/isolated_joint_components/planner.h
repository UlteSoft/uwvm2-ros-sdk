/* SPDX-License-Identifier: Apache-2.0 */
#ifndef SDK02_PRIVATE_POINTER_PLANNER_H
#define SDK02_PRIVATE_POINTER_PLANNER_H
#include "component_types.h"

/* Ordinary pointer algorithm, statically linked into reader/planner ONLY.
 * Inputs/output are private to that instance. Exact in-place output is allowed.
 * Every input is checked before the first output write; an error changes none.
 */
enum sdk02_business_status sdk02_plan_step(int64_t const* measured, uint32_t count,
                                           struct sdk02_joint_limits const*, int64_t delta_urad, int64_t* targets);
#endif
