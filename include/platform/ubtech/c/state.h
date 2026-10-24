/**
 * @file state.h
 * @brief Provide the complete ubtech state.h source contract.
 * @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
 * encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Complete original UBTECH values. No native controller SDK, address, policy or ownership
 * is inferred. Exactly one source domain must match the generated include path.
 */
#ifndef UWVM_UBTECH_STATE_H
#define UWVM_UBTECH_STATE_H
#include <platform/ros/c/roswasm/codec.h>
#include "bounded_records.h"
#if UWVM_UBTECH_PROFILE == 1
# define UWVM_UBTECH_ROS_VERSION 2
# define UWVM_UBTECH_STATUS roswasmc_bounded_2_grab_demo_msgs_msg_GraspCandidate
# define UWVM_UBTECH_COMMAND roswasmc_bounded_2_grab_demo_msgs_msg_IKRequest
# define UWVM_UBTECH_STATUS_CAPACITY ROSWASMC_BOUNDED_2_GRAB_DEMO_MSGS_MSG_GRASPCANDIDATE_MAX_WIRE_BYTES
# define UWVM_UBTECH_COMMAND_CAPACITY ROSWASMC_BOUNDED_2_GRAB_DEMO_MSGS_MSG_IKREQUEST_MAX_WIRE_BYTES
#else
# error "Select exactly one original UBTECH source profile, numbered 1 through 1"
#endif
#if UWVM_UBTECH_ROS_VERSION == 1
# include <platform/ros1/c/roswasm/ros1.h>
# define UWVM_UBTECH_BACKEND roswasmc_ros1_backend
#else
# include <platform/ros2/c/roswasm/ros2.h>
# define UWVM_UBTECH_BACKEND roswasmc_ros2_backend
#endif
#define UWVM_UBTECH_JOIN_(a, b) a##b
#define UWVM_UBTECH_JOIN(a, b) UWVM_UBTECH_JOIN_(a, b)
#define UWVM_UBTECH_STATUS_DECODE UWVM_UBTECH_JOIN(UWVM_UBTECH_STATUS, _decode)
#define UWVM_UBTECH_STATUS_ENCODE UWVM_UBTECH_JOIN(UWVM_UBTECH_STATUS, _encode)
#define UWVM_UBTECH_COMMAND_DECODE UWVM_UBTECH_JOIN(UWVM_UBTECH_COMMAND, _decode)
#define UWVM_UBTECH_COMMAND_ENCODE UWVM_UBTECH_JOIN(UWVM_UBTECH_COMMAND, _encode)
typedef UWVM_UBTECH_STATUS uwvm_ubtech_status;

typedef struct uwvm_ubtech_status_storage
{
    unsigned char bytes[UWVM_UBTECH_STATUS_CAPACITY];
} uwvm_ubtech_status_storage;

/** Poll once into disjoint caller storage; never expose a partial/trailing value.
 * Idle11/denial13/capacity90 remain explicit. No allocation, retry or conversion.
 */
static inline uint32_t uwvm_ubtech_poll_status(roswasmc_capability const* cap, uwvm_ubtech_status* out, uwvm_ubtech_status_storage* scratch)
{
    uwvm_ubtech_status next = {0};
    roswasmc_result r;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_UBTECH_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch))
        return 22;
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->bytes)
        return 22;
    code = UWVM_UBTECH_STATUS_DECODE(scratch->bytes, (size_t)r.length, &next);
    if(code)
        return code;
    *out = next;
    return 0;
}

/** Preserve the entire original selected complete command. Caller owns physical limits,
 * controller/mode selection and authorization. This operation never retries.
 * Closing its capability releases a resource; it is not a physical stop.
 */
static inline uint32_t uwvm_ubtech_publish_command(roswasmc_capability const* cap, UWVM_UBTECH_COMMAND const* value, unsigned char* bytes, size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_UBTECH_ROS_VERSION || !value || !bytes ||
       uwvm_bounded_overlap(value, sizeof *value, bytes, capacity))
        return 22;
    code = UWVM_UBTECH_COMMAND_ENCODE(value, bytes, capacity, &used);
    if(code)
        return code;
    return roswasmc_publish(cap, bytes, used);
}
#endif
