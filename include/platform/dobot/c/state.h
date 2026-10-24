/**
 * @file state.h
 * @brief Retain original dobot value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Complete original DOBOT observations and one explicitly authorized query.
 * Select exactly one driver source domain. Construction grants no authority.
 */
#ifndef UWVM_DOBOT_STATE_H
#define UWVM_DOBOT_STATE_H
#include "bounded_records.h"
#include <ros/c/roswasm/codec.h>
#if !defined(UWVM_DOBOT_PROFILE) || UWVM_DOBOT_PROFILE < 1 || UWVM_DOBOT_PROFILE > 3
# error "Select one exact DOBOT driver profile: ROS1 V3=1, ROS1 V4=2, ROS2 V4=3"
#endif
#if UWVM_DOBOT_PROFILE == 1
# define UWVM_DOBOT_ROS_VERSION 1
# define UWVM_DOBOT_STATUS roswasmc_bounded_1_dobot_bringup_RobotStatus
# define UWVM_DOBOT_REQUEST roswasmc_bounded_1_dobot_bringup_GetAngleRequest
# define UWVM_DOBOT_RESPONSE roswasmc_bounded_1_dobot_bringup_GetAngleResponse
# define UWVM_DOBOT_RESPONSE_CAPACITY ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLERESPONSE_MAX_WIRE_BYTES
#elif UWVM_DOBOT_PROFILE == 2
# define UWVM_DOBOT_ROS_VERSION 1
# define UWVM_DOBOT_STATUS roswasmc_bounded_1_dobot_v4_bringup_RobotStatus
# define UWVM_DOBOT_REQUEST roswasmc_bounded_1_dobot_v4_bringup_GetAngleRequest
# define UWVM_DOBOT_RESPONSE roswasmc_bounded_1_dobot_v4_bringup_GetAngleResponse
# define UWVM_DOBOT_RESPONSE_CAPACITY ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLERESPONSE_MAX_WIRE_BYTES
#else
# define UWVM_DOBOT_ROS_VERSION 2
# define UWVM_DOBOT_STATUS roswasmc_bounded_2_dobot_msgs_v4_msg_RobotStatus
# define UWVM_DOBOT_REQUEST roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_Request
# define UWVM_DOBOT_RESPONSE roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_Response
# define UWVM_DOBOT_RESPONSE_CAPACITY ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETANGLE_RESPONSE_MAX_WIRE_BYTES
#endif
#if UWVM_DOBOT_ROS_VERSION == 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_DOBOT_BACKEND roswasmc_ros1_backend
#else
# include <ros2/c/roswasm/ros2.h>
# define UWVM_DOBOT_BACKEND roswasmc_ros2_backend
#endif
#define UWVM_DOBOT_JOIN_(a, b) a##b
#define UWVM_DOBOT_JOIN(a, b) UWVM_DOBOT_JOIN_(a, b)
#define UWVM_DOBOT_STATUS_DECODE UWVM_DOBOT_JOIN(UWVM_DOBOT_STATUS, _decode)
#define UWVM_DOBOT_STATUS_ENCODE UWVM_DOBOT_JOIN(UWVM_DOBOT_STATUS, _encode)
#define UWVM_DOBOT_REQUEST_ENCODE UWVM_DOBOT_JOIN(UWVM_DOBOT_REQUEST, _encode)
#define UWVM_DOBOT_RESPONSE_DECODE UWVM_DOBOT_JOIN(UWVM_DOBOT_RESPONSE, _decode)
#define UWVM_DOBOT_RESPONSE_ENCODE UWVM_DOBOT_JOIN(UWVM_DOBOT_RESPONSE, _encode)
typedef UWVM_DOBOT_STATUS uwvm_dobot_status;
typedef UWVM_DOBOT_RESPONSE uwvm_dobot_query_response;

/** Caller-owned bounded storage; use disjoint value and scratch objects. */
typedef struct uwvm_dobot_status_storage
{
    unsigned char bytes[2];
} uwvm_dobot_status_storage;

typedef struct uwvm_dobot_query_storage
{
    unsigned char input[1], output[UWVM_DOBOT_RESPONSE_CAPACITY];
} uwvm_dobot_query_storage;

/**
 * @brief Check that writable storage cannot overwrite the borrowed capability owners.
 * @details Reject null context/backend/storage and overlapping or wrapped byte ranges before I/O.
 * Pointers must designate live C objects; this range check cannot prove object allocation or lifetime.
 * @return Nonzero only for disjoint live storage; zero means the enclosing operation must refuse.
 * @param cap Borrowed live capability/context/backend; serialize access and retain all owners through
 * return.
 * @param data Caller-owned writable range checked against every borrowed owner.
 * @param size Exact live writable range size in bytes; wrapped/overlapping ranges are refused.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline int uwvm_dobot_destination(roswasmc_capability const* cap, void const* data, size_t size)
{
    if(!cap || !cap->context || !cap->context->backend || !data)
        return 0;
    return !uwvm_bounded_overlap(data, size, cap, sizeof *cap) && !uwvm_bounded_overlap(data, size, cap->context, sizeof *cap->context) &&
           !uwvm_bounded_overlap(data, size, cap->context->backend, sizeof *cap->context->backend);
}

/**
 * @brief Poll once and commit one complete original observation after whole-value validation.
 * @details Borrow an already opened, subscribed exact ROS capability. Preserve every original field and
 * selected model count. Output and scratch must be disjoint from each other and all capability owners.
 * Idle 11, denial 13 and capacity 90 do not publish a value, grow storage or trigger a retry.
 * @return Original poll errno or codec/model refusal; zero commits the whole value. The caller retains
 * the close obligation independently from this result.
 * @param cap Borrowed live capability/context/backend; serialize access and retain all owners through
 * return.
 * @param out Exclusive live whole-value output; the enclosing commit occurs only after complete
 * acceptance.
 * @param scratch Exclusive bounded caller scratch; its bytes become unusable as a value on refusal.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_dobot_poll_status(roswasmc_capability const* cap, uwvm_dobot_status* out, uwvm_dobot_status_storage* scratch)
{
    uwvm_dobot_status next = {0};
    roswasmc_result r;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_DOBOT_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch) || !uwvm_dobot_destination(cap, out, sizeof *out) ||
       !uwvm_dobot_destination(cap, scratch, sizeof *scratch))
        return 22;
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->bytes)
        return 22;
    code = UWVM_DOBOT_STATUS_DECODE(scratch->bytes, (size_t)r.length, &next);
    if(code)
        return code;
    *out = next;
    return 0;
}

/**
 * @brief Call the selected original read-only service exactly once through its own alias.
 * @details Borrow an independently granted exact service.call capability. Encode the complete request
 * and validate the complete response before committing output. Preserve original response/application
 * codes for the caller; transport success does not interpret them. A timeout may follow admission and
 * does not authorize replay. All value, scratch and capability owners must remain disjoint.
 * @return Original transport/codec errno, or zero after whole-response commit; cleanup remains separate.
 * @param cap Borrowed live capability/context/backend; serialize access and retain all owners through
 * return.
 * @param out Exclusive live whole-value output; the enclosing commit occurs only after complete
 * acceptance.
 * @param scratch Exclusive bounded caller scratch; its bytes become unusable as a value on refusal.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_dobot_query_once(roswasmc_capability const* cap, uwvm_dobot_query_response* out, uwvm_dobot_query_storage* scratch)
{
    UWVM_DOBOT_REQUEST request = {0};
    uwvm_dobot_query_response next = {0};
    roswasmc_result r;
    size_t used = 0;
    uint32_t code;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_DOBOT_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch) || !uwvm_dobot_destination(cap, out, sizeof *out) ||
       !uwvm_dobot_destination(cap, scratch, sizeof *scratch))
        return 22;
    code = UWVM_DOBOT_REQUEST_ENCODE(&request, scratch->input, sizeof scratch->input, &used);
    if(code)
        return code;
    r = roswasmc_service_call(cap, scratch->input, used, scratch->output, sizeof scratch->output);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->output)
        return 22;
    code = UWVM_DOBOT_RESPONSE_DECODE(scratch->output, (size_t)r.length, &next);
    if(code)
        return code;
    *out = next;
    return 0;
}
#endif
