/* SPDX-License-Identifier: Apache-2.0 */
#include "planner.h"

enum sdk02_business_status sdk02_plan_step(int64_t const* measured, uint32_t count,
                                           struct sdk02_joint_limits const* limits, int64_t delta_urad, int64_t* targets)
{
    uint32_t index;
    int64_t proposed[SDK02_JOINT_MAX];
    if(!measured || !targets || !sdk02_limits_valid(limits, count) || !delta_urad
       || delta_urad < -SDK02_MAX_STEP_URAD || delta_urad > SDK02_MAX_STEP_URAD)
    { return SDK02_INVALID; }
    for(index = 0; index < count; ++index)
    {
        int64_t candidate;
        int64_t step = delta_urad;
        if(!sdk02_within_model(limits, index, measured[index])) { return SDK02_INVALID; }
        if(step > limits->max_step_urad[index]) { step = limits->max_step_urad[index]; }
        if(step < -limits->max_step_urad[index]) { step = -limits->max_step_urad[index]; }
        /* Validated small operands cannot overflow signed i64. */
        candidate = measured[index] + step;
        if(candidate > limits->upper_urad[index]) { candidate = limits->upper_urad[index]; }
        if(candidate < limits->lower_urad[index]) { candidate = limits->lower_urad[index]; }
        proposed[index] = candidate;
    }
    for(index = 0; index < count; ++index) { targets[index] = proposed[index]; }
    return SDK02_OK;
}
