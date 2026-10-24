/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_PAL_APPLICATION_H
#define UWVM_PAL_APPLICATION_H
#include <math.h>
#include <string.h>
#include <platform/pal/c/state.h>

#if UWVM_PAL_ROS_VERSION == 1
typedef roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit uwvm_pal_current_limits;

/** @brief Validate complete original PAL actuator current-limit fractions.
 * @details Available in selected ROS1 profile1. Original current_limits values
 * are dimensionless fractions0..1, not amperes. Requires matching nonempty
 * name/fraction counts, valid generated bounds, NUL-free nonempty names and no
 * duplicate name. Pure validation neither publishes nor changes a controller.
 * A matching native model endpoint and independent change-limit grant remain
 * required; this value is not a stop operation or readiness proof.
 * @param[in] value Borrowed immutable complete ActuatorCurrentLimit value.
 * @return 0 on validity or22 for malformed, duplicate, nonfinite or out-of-range data.
 * @thread Reentrant for independent immutable input; retains no references.
 * @see uwvm_pal_current_limits uwvm_pal_publish_command
 */
static inline uint32_t uwvm_pal_validate_current_limits(uwvm_pal_current_limits const* value)
{
    uint32_t i, j;
    if(!value || !roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit_valid(value) || !value->actuator_names.size ||
       value->actuator_names.size != value->current_limits.size)
        return 22;
    for(i = 0; i < value->actuator_names.size; ++i)
    {
        double fraction = value->current_limits.data[i];
        if(!value->actuator_names.data[i].size || memchr(value->actuator_names.data[i].data, 0, value->actuator_names.data[i].size) || !isfinite(fraction) ||
           fraction < 0 || fraction > 1)
            return 22;
        for(j = 0; j < i; ++j)
            if(value->actuator_names.data[i].size == value->actuator_names.data[j].size &&
               !memcmp(value->actuator_names.data[i].data, value->actuator_names.data[j].data, value->actuator_names.data[i].size))
                return 22;
    }
    return 0;
}
#endif
#endif
