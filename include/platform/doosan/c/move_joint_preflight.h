/**
 * @file move_joint_preflight.h
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see document/platform/doosan/en_US/README.md
 */

/* SPDX-License-Identifier: Apache-2.0
 * Full original ROS2 MoveJoint preflight; no controller call or authority.
 * Select the exact generated Humble/Jazzy family through UWVM_DOOSAN_PROFILE.
 */
#ifndef UWVM_DOOSAN_MOVE_JOINT_PREFLIGHT_H
#define UWVM_DOOSAN_MOVE_JOINT_PREFLIGHT_H
#ifndef UWVM_VENDOR_RECORDS_HEADER
# error "Select the exact vendor source domain with the public SDK provider"
#endif
#include UWVM_VENDOR_RECORDS_HEADER
#include <math.h>
#include <stdint.h>

#if UWVM_DOOSAN_PROFILE != 11 && UWVM_DOOSAN_PROFILE != 12
# error "This preflight selects original ROS2 Humble(11) or Jazzy(12), not a legacy ABI"
#endif

/**
 * @brief Caller-supplied installation and timing bounds for one MoveJoint value.
 * @details These facts are assertions supplied by the caller, not authenticated
 * firmware, current robot state or limits discovered by this SDK. Select exact
 * ROS2 Humble(11) or Jazzy(12) generated records. controller_major must be2 or3
 * and agree with drcf_build_major; MoveIt with major2 requires minor12 or newer.
 * Positions/limits use degrees, velocity deg/s, acceleration deg/s^2 and blend
 * radius millimetres. Monotonic timestamps/ages use nanoseconds from one caller
 * clock domain. All six array entries participate. Storage remains caller-owned
 * and immutable during validation; no pointer escapes, allocation, permission,
 * native clock or controller operation is involved. Concurrent validations may
 * share immutable contracts and requests.
 * @see uwvm_doosan_validate_move_joint
 * @see uwvm_doosan_make_move_stop
 */
typedef struct uwvm_doosan_move_joint_contract
{
    unsigned controller_major;
    unsigned controller_minor;
    unsigned drcf_build_major;
    int uses_moveit;
    double lower_degrees[6];
    double upper_degrees[6];
    double current_degrees[6];
    double maximum_velocity_degrees_per_second;
    double maximum_acceleration_degrees_per_second_squared;
    double maximum_blend_radius_mm;
    uint64_t current_monotonic_ns;
    uint64_t deadline_monotonic_ns;
    uint64_t state_age_ns;
    uint64_t maximum_state_age_ns;
} uwvm_doosan_move_joint_contract;

/**
 * @brief Validate one whole original MoveJoint request against explicit bounds.
 * @details Checks version assertions, one live caller deadline, state age,
 * complete canonical source validity, enum ranges, six targets and installation
 * limits. Relative mode checks current+offset without modifying either input.
 * Time-driven requests may have zero velocity/acceleration; automatic timing
 * requires positive values. Units are degrees, deg/s, deg/s^2, seconds and mm.
 * This pure operation requires no grant, clock, allocation or native connection.
 * Inputs are borrowed only until return; concurrent calls require immutable
 * inputs. Native DRFL/controller validation remains independent, and a later
 * successful service reply does not establish asynchronous motion completion.
 * @param[in] request Complete matching Humble/Jazzy canonical request; every
 * original field remains present. The value is unchanged on all outcomes.
 * @param[in] contract Immutable caller-owned bounds/version/timing assertions.
 * @return 0 for this local preflight; 22 for invalid input/shape/enums; 34 for
 * an exceeded motion bound or non-finite derived target; 95 for incompatible
 * caller version/MoveIt facts; 110 for absent/stale timing or expired deadline.
 * No return value authorizes motion or authenticates installation facts.
 * @see uwvm_doosan_move_joint_contract
 * @see uwvm_doosan_make_move_stop
 */
static inline uint32_t uwvm_doosan_validate_move_joint(roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request const* request,
                                                       uwvm_doosan_move_joint_contract const* contract)
{
    unsigned i;
    if(!request || !contract)
        return 22;
    if((contract->controller_major != 2 && contract->controller_major != 3) || contract->controller_major != contract->drcf_build_major ||
       (contract->uses_moveit != 0 && contract->uses_moveit != 1) ||
       (contract->uses_moveit && contract->controller_major == 2 && contract->controller_minor < 12))
        return 95;
    if(!contract->maximum_state_age_ns || contract->deadline_monotonic_ns <= contract->current_monotonic_ns)
        return 110;
    if(contract->state_age_ns > contract->maximum_state_age_ns)
        return 110;
    if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request_valid(request) || !isfinite(contract->maximum_velocity_degrees_per_second) ||
       !isfinite(contract->maximum_acceleration_degrees_per_second_squared) || !isfinite(contract->maximum_blend_radius_mm) ||
       contract->maximum_velocity_degrees_per_second <= 0 || contract->maximum_acceleration_degrees_per_second_squared <= 0 ||
       contract->maximum_blend_radius_mm < 0 || request->vel < 0 || request->acc < 0 || request->time < 0 || request->radius < 0 || request->mode < 0 ||
       request->mode > 1 || request->blend_type < 0 || request->blend_type > 1 || request->sync_type < 0 || request->sync_type > 1)
        return 22;
    if(!request->time && (!request->vel || !request->acc))
        return 22;
    if(request->vel > contract->maximum_velocity_degrees_per_second || request->acc > contract->maximum_acceleration_degrees_per_second_squared ||
       request->radius > contract->maximum_blend_radius_mm)
        return 34;
    for(i = 0; i < 6; ++i)
    {
        double target;
        if(!isfinite(contract->lower_degrees[i]) || !isfinite(contract->upper_degrees[i]) || !isfinite(contract->current_degrees[i]) ||
           contract->lower_degrees[i] > contract->upper_degrees[i] || contract->current_degrees[i] < contract->lower_degrees[i] ||
           contract->current_degrees[i] > contract->upper_degrees[i])
            return 22;
        target = request->mode ? contract->current_degrees[i] + request->pos[i] : request->pos[i];
        if(!isfinite(target) || target < contract->lower_degrees[i] || target > contract->upper_degrees[i])
            return 34;
    }
    return 0;
}

/**
 * @brief Construct one original MoveStop value without invoking a service.
 * @details Preserves the source stop_mode enumeration0..3 rather than mapping
 * it to the legacy RobotStop topic. The output is fully assigned only after
 * validation. No allocation, clock, I/O, grant or controller change occurs.
 * Caller owns output storage and may use this function concurrently with
 * distinct outputs. Native stop semantics and authorization are independent;
 * construction does not establish physical stopping, cancellation or recovery.
 * @param[in] mode Exact source enum value0..3; no out-of-range coercion occurs.
 * @param[out] output Live writable complete matching Humble/Jazzy request.
 * It is unchanged on failure and contains stop_mode on success.
 * @return 0 for construction or 22 for null output/out-of-range mode.
 * @see roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request
 * @see uwvm_doosan_validate_move_joint
 */
static inline uint32_t uwvm_doosan_make_move_stop(int32_t mode, roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request* output)
{
    roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request next = {0};
    if(!output || mode < 0 || mode > 3)
        return 22;
    next.stop_mode = mode;
    *output = next;
    return 0;
}
#endif
