/* SPDX-License-Identifier: Apache-2.0
 * Complete original DEEP Robotics values. No native controller SDK, address, policy or ownership
 * is inferred. Exactly one source domain must match the generated include path.
 */
#ifndef UWVM_DEEP_ROBOTICS_STATE_H
#define UWVM_DEEP_ROBOTICS_STATE_H
#include <platform/ros/c/roswasm/codec.h>
#include <deep_robotics/c/ros2/deep-robotics-ros2-main-complete/bounded_records.h>
#if UWVM_DEEP_ROBOTICS_PROFILE == 1
# define UWVM_DEEP_ROBOTICS_ROS_VERSION 2
# define UWVM_DEEP_ROBOTICS_STATUS roswasmc_bounded_2_drdds_msg_RobotStatus
# define UWVM_DEEP_ROBOTICS_COMMAND roswasmc_bounded_2_drdds_msg_JointsDataCmd
# define UWVM_DEEP_ROBOTICS_STATUS_CAPACITY ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_MAX_WIRE_BYTES
# define UWVM_DEEP_ROBOTICS_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_MAX_WIRE_BYTES
#else
# error "Select exactly one original DEEP Robotics source profile, numbered 1 through 1"
#endif
#if UWVM_DEEP_ROBOTICS_ROS_VERSION == 1
# include <platform/ros1/c/roswasm/ros1.h>
# define UWVM_DEEP_ROBOTICS_BACKEND roswasmc_ros1_backend
#else
# include <platform/ros2/c/roswasm/ros2.h>
# define UWVM_DEEP_ROBOTICS_BACKEND roswasmc_ros2_backend
#endif
#define UWVM_DEEP_ROBOTICS_JOIN_(a, b) a##b
#define UWVM_DEEP_ROBOTICS_JOIN(a, b) UWVM_DEEP_ROBOTICS_JOIN_(a, b)
#define UWVM_DEEP_ROBOTICS_STATUS_DECODE UWVM_DEEP_ROBOTICS_JOIN(UWVM_DEEP_ROBOTICS_STATUS, _decode)
#define UWVM_DEEP_ROBOTICS_STATUS_ENCODE UWVM_DEEP_ROBOTICS_JOIN(UWVM_DEEP_ROBOTICS_STATUS, _encode)
#define UWVM_DEEP_ROBOTICS_COMMAND_DECODE UWVM_DEEP_ROBOTICS_JOIN(UWVM_DEEP_ROBOTICS_COMMAND, _decode)
#define UWVM_DEEP_ROBOTICS_COMMAND_ENCODE UWVM_DEEP_ROBOTICS_JOIN(UWVM_DEEP_ROBOTICS_COMMAND, _encode)
typedef UWVM_DEEP_ROBOTICS_STATUS uwvm_deep_robotics_status;

typedef struct uwvm_deep_robotics_status_storage
{
    unsigned char bytes[UWVM_DEEP_ROBOTICS_STATUS_CAPACITY];
} uwvm_deep_robotics_status_storage;

/** @brief Poll once into disjoint caller storage; never expose a partial/trailing value.
 * Idle11/denial13/capacity90 remain explicit. No allocation, retry or conversion.
 */
static inline uint32_t
    uwvm_deep_robotics_poll_status(roswasmc_capability const* cap, uwvm_deep_robotics_status* out, uwvm_deep_robotics_status_storage* scratch)
{
    uwvm_deep_robotics_status next = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_result r;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_DEEP_ROBOTICS_ROS_VERSION || !out || !scratch ||
       deep_robotics_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch))
        return 22;
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->bytes)
        return 22;
    code = UWVM_DEEP_ROBOTICS_STATUS_DECODE(scratch->bytes, (size_t)r.length, &next);
    if(code)
        return code;
    *out = next;
    return 0;
}

/** @brief Preserve the entire original selected complete command. Caller owns physical limits,
 * controller/mode selection and authorization. This operation never retries.
 * Closing its capability releases a resource; it is not a physical stop.
 */
static inline uint32_t
    uwvm_deep_robotics_publish_command(roswasmc_capability const* cap, UWVM_DEEP_ROBOTICS_COMMAND const* value, unsigned char* bytes, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_DEEP_ROBOTICS_ROS_VERSION || !value || !bytes ||
       deep_robotics_bounded_overlap(value, sizeof *value, bytes, capacity))
        return 22;
    code = UWVM_DEEP_ROBOTICS_COMMAND_ENCODE(value, bytes, capacity, &used);
    if(code)
        return code;
    return roswasmc_publish(cap, bytes, used);
}
#endif
