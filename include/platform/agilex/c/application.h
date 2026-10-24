/**
 * @file application.h
 * @brief Preserve the complete source-pinned platform interface.
 * @details Original declarations, field order, widths and protocol operations
 * are retained. Native deployment and permissions are configured separately.
 * See this platform's source inventory and language manual for exact bounds,
 * ownership and compilation/transport qualification.
 */
/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_SCOUT_APPLICATION_H
#define UWVM_SCOUT_APPLICATION_H
#include <agilex/c/scout.h>

/** @brief Explicit native Scout observation-admission requirements.
 * @details control_mode/vehicle_state retain original protocol enum values;
 * allowed_fault_bits is the reviewed native mask, not a fault acknowledgement.
 * maximum_age_ns is positive monotonic nanoseconds; minimum_battery_v is finite
 * positive volts. No model, firmware, readiness or native authority is inferred.
 * @see uwvm_scout_validate_observation uwvm_scout_publish_motion
 */
typedef struct uwvm_scout_observation_requirement
{
    uint8_t control_mode, vehicle_state;
    uint16_t allowed_fault_bits;
    uint64_t maximum_age_ns;
    double minimum_battery_v;
} uwvm_scout_observation_requirement;

/** @brief Check a complete Scout status against explicit freshness/state bounds.
 * @details Pure validation of the selected original ROS1/ROS2 status fields.
 * Both times use the same selected monotonic clock, independently of ROS Header
 * timestamps. No firmware fault-bit meaning, watchdog or permission is inferred.
 * @param[in] status Borrowed complete original status from this native robot/epoch.
 * @param[in] requirement Explicit immutable mode/state/fault/battery/age requirements.
 * @param[in] received_ns Nonzero monotonic nanosecond receive time for status.
 * @param[in] now_ns Current time in the identical clock domain, at least received_ns.
 * @return 22 for malformed/stale/time/battery inputs,125 for mode/state/fault
 * mismatch, or0. No external state or argument is changed.
 * @thread Reentrant for immutable independent arguments; retains no references.
 * @see uwvm_scout_observation_requirement uwvm_scout_publish_motion
 */
static inline uint32_t uwvm_scout_validate_observation(uwvm_scout_status const* status,
                                                       uwvm_scout_observation_requirement const* requirement,
                                                       uint64_t received_ns,
                                                       uint64_t now_ns)
{
    unsigned state, fault;
    if(!status || !requirement || !requirement->maximum_age_ns || !received_ns || now_ns < received_ns || now_ns - received_ns > requirement->maximum_age_ns ||
       !isfinite(requirement->minimum_battery_v) || requirement->minimum_battery_v <= 0 || !isfinite(status->battery_voltage) ||
       status->battery_voltage < requirement->minimum_battery_v || !UWVM_SCOUT_JOIN(UWVM_SCOUT_RECORD(ScoutStatus), _valid)(status))
        return 22;
#if UWVM_SCOUT_ROS_VERSION == 1
    state = status->base_state;
    fault = status->fault_code;
#else
    state = status->vehicle_state;
    fault = status->error_code;
#endif
    if(state != requirement->vehicle_state || status->control_mode != requirement->control_mode || (fault & ~(unsigned)requirement->allowed_fault_bits))
        return 125;
    return 0;
}

/** @brief Validate a fresh complete status and publish one bounded Scout Twist.
 * @details Runs observation and model checks before the one actual publication.
 * Retains all original status fields at the caller. No mode switch, fault clear,
 * native safety/watchdog replacement or automatic replay occurs; a successful
 * transport receipt does not establish physical motion or controller readiness.
 * @param[in] capability Live borrowed exact selected Twist publish owner with an
 * independent trusted grant; context/backend must remain valid until return.
 * @param[in] limits Explicit model/protocol-aware velocity limits.
 * @param[in] status Complete borrowed status for the same robot/control epoch.
 * @param[in] requirement Explicit immutable state/fault/battery/freshness policy.
 * @param[in] received_ns Nonzero monotonic receive nanoseconds for status.
 * @param[in] now_ns Current nanoseconds in the same monotonic clock.
 * @param[in] forward Finite forward metres/second within model bounds.
 * @param[in] lateral Finite lateral metres/second; zero unless explicitly omni.
 * @param[in] yaw Finite yaw radians/second within model bounds.
 * @return First local validation status or original publication status unchanged;
 * an uncertain failure never permits replay. Caller closes ownership separately.
 * @thread Single admitted Guest caller; serialize borrowed capability use.
 * @see uwvm_scout_validate_observation uwvm_scout_make_motion roswasmc_publish_twist
 */
static inline uint32_t uwvm_scout_publish_motion(roswasmc_capability const* capability,
                                                 uwvm_scout_motion_limits const* limits,
                                                 uwvm_scout_status const* status,
                                                 uwvm_scout_observation_requirement const* requirement,
                                                 uint64_t received_ns,
                                                 uint64_t now_ns,
                                                 double forward,
                                                 double lateral,
                                                 double yaw)
{
    roswasmc_twist value;
    uint32_t error;
    if(!uwvm_scout_matches_backend(capability))
        return 22;
    error = uwvm_scout_validate_observation(status, requirement, received_ns, now_ns);
    if(error)
        return error;
    error = uwvm_scout_make_motion(limits, forward, lateral, yaw, &value);
    return error ? error : roswasmc_publish_twist(capability, &value);
}
#endif
