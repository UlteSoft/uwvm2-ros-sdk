/* SPDX-License-Identifier: Apache-2.0
 * Complete selected original ROS operations. Empty authority by default.
 * No endpoint, mode, unit conversion, retry or controller success is inferred.
 * Caller owns each live capability/context/backend and serializes its use.
 * All writable destinations must remain disjoint from these live objects.
 */
#ifndef UWVM_FLEXIV_ROS2_HUMBLE_V1_COMPLETE_OPERATIONS_H
#define UWVM_FLEXIV_ROS2_HUMBLE_V1_COMPLETE_OPERATIONS_H
#include "bounded_interfaces.h"
#include <platform/ros2/c/roswasm/ros2.h>

/**
 * @brief Check the borrowed capability backend shape for this source family.
 * @details This is a local dialect precondition, not an authority, live-handle,
 * native-type, endpoint or controller-state check. It opens no resource.
 * @param[in] cap Null or a valid readable caller-owned capability/context/backend
 * graph; all referenced storage must remain alive for the complete call.
 * @return Nonzero for a nonnull graph with ROS version 2; zero otherwise.
 * @note Pure, synchronous, no retained pointer or allocation. The caller excludes
 * concurrent mutation/retirement of this graph; no lock or ROS grant is created.
 * @see roswasmc_ros2_backend
 */
inline static int uwvm_flexiv_operation_cap(roswasmc_capability const* cap)
{
    return cap && cap->context && cap->context->backend && cap->context->backend->version == 2;
}

/** @brief Send one complete original flexiv_msgs/action/ErrorRecovery goal through its owned bundle.
 * @details This alias preserves the exact generated signature, native units,
 * complete goal fields and single-send behavior. It creates no role or grant.
 * An admitted goal with an unknown/malformed reply must never be auto-replayed.
 * @param[in,out] bundle Caller-owned activated send/cancel-own/feedback/result
 * roles, exact native identity and local goal storage; stable through return.
 * @param[in] goal Borrowed whole original goal, including unprinted fields.
 * @param[out] id Disjoint caller-owned u64 slot; commit a nonzero unique local
 * goal ID only after successful complete reply validation. Preserve all bits.
 * @return Structured codec/Host status; success is admission, not terminal
 * completion or physical arrival. Original capacity/handle/errors propagate.
 * @note Synchronous; serialize bundle and buffers against callbacks/cleanup.
 * Exact independent role/quota/deadline grants remain trusted Host policy.
 * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_send
 * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_result
 */
#define uwvm_flexiv_flexiv_msgs_action_ErrorRecovery_send roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_send
/** @brief Read complete original flexiv_msgs/action/ErrorRecovery feedback for one owned goal.
 * @details Preserve every feedback field and original unit/frame. Idle or
 * failure leaves feedback unchanged; a consumed malformed reply is not replayed.
 * @param[in] bundle Borrowed valid owned roles; no concurrent use/retirement.
 * @param[in] id Exact nonzero u64 ID still owned by this bundle, without narrowing.
 * @param[out] feedback Disjoint complete caller-owned feedback, committed only
 * after exact ID, complete-length and all-field predicate validation.
 * @return Structured original Host/codec result; idle is not terminal success.
 * A nonowned ID fails with the generated bad-handle status before the read.
 * @note Synchronous borrow only; no thread, clock, retry, open or authority.
 * Exact receive-feedback permission, identity and quota/deadline are required.
 * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_feedback
 * @see uwvm_flexiv_flexiv_msgs_action_ErrorRecovery_send
 */
#define uwvm_flexiv_flexiv_msgs_action_ErrorRecovery_feedback roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_feedback
/** @brief Consume one complete original flexiv_msgs/action/ErrorRecovery terminal result.
 * @details Retire exactly this local goal only after matching ID, terminal
 * kind and whole result validation. A cancellation acknowledgement alone
 * does not retire the goal or certify that a physical controller stopped.
 * @param[in,out] bundle Stable caller-owned roles and goal ledger; serialize
 * all access/cleanup for the complete call. No alias is implicitly opened.
 * @param[in] id Exact nonzero u64 goal still owned by this bundle.
 * @param[out] kind Disjoint u8 terminal slot; only original values 2..4 commit.
 * @param[out] result Disjoint whole caller-owned result with original units
 * and native status fields. Neither output is usable from a failed call.
 * @return Structured original Host/codec status. Terminal receipt is distinct
 * from successful native result fields; inspect both. A timeout or malformed
 * consumed reply never authorizes automatic resend or terminal replay.
 * @note Synchronous, no retained pointer/thread/clock. Exact result-consumption
 * permission, native identity, byte quota and deadline remain Host policy.
 * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_result
 * @see uwvm_flexiv_flexiv_msgs_action_ErrorRecovery_feedback
 */
#define uwvm_flexiv_flexiv_msgs_action_ErrorRecovery_result roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_result
/** @brief Send one complete original flexiv_msgs/action/Grasp goal through its owned bundle.
 * @details This alias preserves the exact generated signature, native units,
 * complete goal fields and single-send behavior. It creates no role or grant.
 * An admitted goal with an unknown/malformed reply must never be auto-replayed.
 * @param[in,out] bundle Caller-owned activated send/cancel-own/feedback/result
 * roles, exact native identity and local goal storage; stable through return.
 * @param[in] goal Borrowed whole original goal, including unprinted fields.
 * @param[out] id Disjoint caller-owned u64 slot; commit a nonzero unique local
 * goal ID only after successful complete reply validation. Preserve all bits.
 * @return Structured codec/Host status; success is admission, not terminal
 * completion or physical arrival. Original capacity/handle/errors propagate.
 * @note Synchronous; serialize bundle and buffers against callbacks/cleanup.
 * Exact independent role/quota/deadline grants remain trusted Host policy.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_send
 * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_result
 */
#define uwvm_flexiv_flexiv_msgs_action_Grasp_send roswasmc_bounded_2_flexiv_msgs_action_Grasp_send
/** @brief Read complete original flexiv_msgs/action/Grasp feedback for one owned goal.
 * @details Preserve every feedback field and original unit/frame. Idle or
 * failure leaves feedback unchanged; a consumed malformed reply is not replayed.
 * @param[in] bundle Borrowed valid owned roles; no concurrent use/retirement.
 * @param[in] id Exact nonzero u64 ID still owned by this bundle, without narrowing.
 * @param[out] feedback Disjoint complete caller-owned feedback, committed only
 * after exact ID, complete-length and all-field predicate validation.
 * @return Structured original Host/codec result; idle is not terminal success.
 * A nonowned ID fails with the generated bad-handle status before the read.
 * @note Synchronous borrow only; no thread, clock, retry, open or authority.
 * Exact receive-feedback permission, identity and quota/deadline are required.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_feedback
 * @see uwvm_flexiv_flexiv_msgs_action_Grasp_send
 */
#define uwvm_flexiv_flexiv_msgs_action_Grasp_feedback roswasmc_bounded_2_flexiv_msgs_action_Grasp_feedback
/** @brief Consume one complete original flexiv_msgs/action/Grasp terminal result.
 * @details Retire exactly this local goal only after matching ID, terminal
 * kind and whole result validation. A cancellation acknowledgement alone
 * does not retire the goal or certify that a physical controller stopped.
 * @param[in,out] bundle Stable caller-owned roles and goal ledger; serialize
 * all access/cleanup for the complete call. No alias is implicitly opened.
 * @param[in] id Exact nonzero u64 goal still owned by this bundle.
 * @param[out] kind Disjoint u8 terminal slot; only original values 2..4 commit.
 * @param[out] result Disjoint whole caller-owned result with original units
 * and native status fields. Neither output is usable from a failed call.
 * @return Structured original Host/codec status. Terminal receipt is distinct
 * from successful native result fields; inspect both. A timeout or malformed
 * consumed reply never authorizes automatic resend or terminal replay.
 * @note Synchronous, no retained pointer/thread/clock. Exact result-consumption
 * permission, native identity, byte quota and deadline remain Host policy.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_result
 * @see uwvm_flexiv_flexiv_msgs_action_Grasp_feedback
 */
#define uwvm_flexiv_flexiv_msgs_action_Grasp_result roswasmc_bounded_2_flexiv_msgs_action_Grasp_result
/** @brief Send one complete original flexiv_msgs/action/Move goal through its owned bundle.
 * @details This alias preserves the exact generated signature, native units,
 * complete goal fields and single-send behavior. It creates no role or grant.
 * An admitted goal with an unknown/malformed reply must never be auto-replayed.
 * @param[in,out] bundle Caller-owned activated send/cancel-own/feedback/result
 * roles, exact native identity and local goal storage; stable through return.
 * @param[in] goal Borrowed whole original goal, including unprinted fields.
 * @param[out] id Disjoint caller-owned u64 slot; commit a nonzero unique local
 * goal ID only after successful complete reply validation. Preserve all bits.
 * @return Structured codec/Host status; success is admission, not terminal
 * completion or physical arrival. Original capacity/handle/errors propagate.
 * @note Synchronous; serialize bundle and buffers against callbacks/cleanup.
 * Exact independent role/quota/deadline grants remain trusted Host policy.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Move_send
 * @see roswasmc_bounded_2_flexiv_msgs_action_Move_result
 */
#define uwvm_flexiv_flexiv_msgs_action_Move_send roswasmc_bounded_2_flexiv_msgs_action_Move_send
/** @brief Read complete original flexiv_msgs/action/Move feedback for one owned goal.
 * @details Preserve every feedback field and original unit/frame. Idle or
 * failure leaves feedback unchanged; a consumed malformed reply is not replayed.
 * @param[in] bundle Borrowed valid owned roles; no concurrent use/retirement.
 * @param[in] id Exact nonzero u64 ID still owned by this bundle, without narrowing.
 * @param[out] feedback Disjoint complete caller-owned feedback, committed only
 * after exact ID, complete-length and all-field predicate validation.
 * @return Structured original Host/codec result; idle is not terminal success.
 * A nonowned ID fails with the generated bad-handle status before the read.
 * @note Synchronous borrow only; no thread, clock, retry, open or authority.
 * Exact receive-feedback permission, identity and quota/deadline are required.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Move_feedback
 * @see uwvm_flexiv_flexiv_msgs_action_Move_send
 */
#define uwvm_flexiv_flexiv_msgs_action_Move_feedback roswasmc_bounded_2_flexiv_msgs_action_Move_feedback
/** @brief Consume one complete original flexiv_msgs/action/Move terminal result.
 * @details Retire exactly this local goal only after matching ID, terminal
 * kind and whole result validation. A cancellation acknowledgement alone
 * does not retire the goal or certify that a physical controller stopped.
 * @param[in,out] bundle Stable caller-owned roles and goal ledger; serialize
 * all access/cleanup for the complete call. No alias is implicitly opened.
 * @param[in] id Exact nonzero u64 goal still owned by this bundle.
 * @param[out] kind Disjoint u8 terminal slot; only original values 2..4 commit.
 * @param[out] result Disjoint whole caller-owned result with original units
 * and native status fields. Neither output is usable from a failed call.
 * @return Structured original Host/codec status. Terminal receipt is distinct
 * from successful native result fields; inspect both. A timeout or malformed
 * consumed reply never authorizes automatic resend or terminal replay.
 * @note Synchronous, no retained pointer/thread/clock. Exact result-consumption
 * permission, native identity, byte quota and deadline remain Host policy.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Move_result
 * @see uwvm_flexiv_flexiv_msgs_action_Move_feedback
 */
#define uwvm_flexiv_flexiv_msgs_action_Move_result roswasmc_bounded_2_flexiv_msgs_action_Move_result

/**
 * @brief Publish one complete original flexiv_msgs/msg/CartesianMotionForce value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 420 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_CartesianMotionForce_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_CartesianMotionForce_publish(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce const* value,
                                                                                unsigned char* scratch,
                                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/CartesianMotionForce.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 420 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_CartesianMotionForce_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_CartesianMotionForce_poll(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce* value,
                                                                             unsigned char* scratch,
                                                                             size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 420)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish one complete original flexiv_msgs/msg/Digital value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 2 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_Digital_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_Digital_publish(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_flexiv_msgs_msg_Digital const* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_Digital_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/Digital.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 2 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_Digital_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_Digital_poll(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_flexiv_msgs_msg_Digital* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_Digital next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 2)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_Digital_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish one complete original flexiv_msgs/msg/GPIOStates value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 68 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_GPIOStates_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_GPIOStates_publish(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates const* value,
                                                                      unsigned char* scratch,
                                                                      size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/GPIOStates.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 68 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_GPIOStates_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_GPIOStates_poll(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 68)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish one complete original flexiv_msgs/msg/JointImpedance value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 9373 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_JointImpedance_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointImpedance_publish(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance const* value,
                                                                          unsigned char* scratch,
                                                                          size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/JointImpedance.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 9373 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_JointImpedance_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointImpedance_poll(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance* value,
                                                                       unsigned char* scratch,
                                                                       size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 9373)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish one complete original flexiv_msgs/msg/JointInertiaScale value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 8853 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_JointInertiaScale_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointInertiaScale_publish(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale const* value,
                                                                             unsigned char* scratch,
                                                                             size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/JointInertiaScale.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 8853 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_JointInertiaScale_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointInertiaScale_poll(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale* value,
                                                                          unsigned char* scratch,
                                                                          size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 8853)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish one complete original flexiv_msgs/msg/JointPosVel value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 520 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_JointPosVel_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointPosVel_publish(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel const* value,
                                                                       unsigned char* scratch,
                                                                       size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/JointPosVel.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 520 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_JointPosVel_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_JointPosVel_poll(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel* value,
                                                                    unsigned char* scratch,
                                                                    size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 520)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish one complete original flexiv_msgs/msg/MaxContactTorque value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 9113 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_MaxContactTorque_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_MaxContactTorque_publish(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque const* value,
                                                                            unsigned char* scratch,
                                                                            size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/MaxContactTorque.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 9113 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_MaxContactTorque_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_MaxContactTorque_poll(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque* value,
                                                                         unsigned char* scratch,
                                                                         size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 9113)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish one complete original flexiv_msgs/msg/Mode value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 1 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_Mode_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_Mode_publish(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_flexiv_msgs_msg_Mode const* value,
                                                                unsigned char* scratch,
                                                                size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/Mode.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 1 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_Mode_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_Mode_poll(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_flexiv_msgs_msg_Mode* value,
                                                             unsigned char* scratch,
                                                             size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_Mode next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 1)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_Mode_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish one complete original flexiv_msgs/msg/OperationalStatus value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 17650 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_OperationalStatus_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_OperationalStatus_publish(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus const* value,
                                                                             unsigned char* scratch,
                                                                             size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/OperationalStatus.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 17650 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_OperationalStatus_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_OperationalStatus_poll(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus* value,
                                                                          unsigned char* scratch,
                                                                          size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 17650)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish one complete original flexiv_msgs/msg/RecoveryPolicy value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 1 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_RecoveryPolicy_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RecoveryPolicy_publish(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy const* value,
                                                                          unsigned char* scratch,
                                                                          size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/RecoveryPolicy.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 1 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_RecoveryPolicy_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RecoveryPolicy_poll(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy* value,
                                                                       unsigned char* scratch,
                                                                       size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 1)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish one complete original flexiv_msgs/msg/RobotEvent value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 1053 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_RobotEvent_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RobotEvent_publish(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent const* value,
                                                                      unsigned char* scratch,
                                                                      size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/RobotEvent.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 1053 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_RobotEvent_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RobotEvent_poll(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent* value,
                                                                   unsigned char* scratch,
                                                                   size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 1053)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish one complete original flexiv_msgs/msg/RobotStates value.
 * @details Validate and encode every declared field before the one Host
 * publication. Preserve original units, frame and array order; no conversion
 * or controller-success interpretation is performed. A transport success is
 * not evidence of actuator arrival, mode change or physical execution.
 * @param[in] cap Borrowed already-open ROS2 owner with an exact
 * independently granted topic.publish alias/native identity/quota/deadline.
 * @param[in] value Borrowed whole generated record, including nested/unprinted
 * fields. Its declared bounds/predicates must hold; keep it unchanged in call.
 * @param[out] scratch Caller-owned temporary byte buffer, disjoint from value
 * and all live owner/context/backend storage. Never interpret it after failure.
 * @param[in] capacity Buffer bytes; 5160 admits the selected maximum.
 * @return Zero for successful encoding/transport, otherwise the original
 * codec or Host status. Invalid/null/overlapping destinations fail22; an
 * insufficient encoding buffer fails90 before publication.
 * @note Synchronous, no pointer retained and no open, clock, retry or thread.
 * Caller serializes this owner against use/cleanup; delivery after a Host
 * timeout/disconnection may be unknown, so a failure does not authorize replay.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode
 * @see uwvm_flexiv_flexiv_msgs_msg_RobotStates_poll
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RobotStates_publish(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_2_flexiv_msgs_msg_RobotStates const* value,
                                                                       unsigned char* scratch,
                                                                       size_t capacity)
{
    size_t used = 0;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, scratch, capacity) ||
       uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode(value, scratch, capacity, &used);
    return code ? code : roswasmc_publish(cap, scratch, used);
}

/**
 * @brief Poll and transactionally decode one complete original flexiv_msgs/msg/RobotStates.
 * @details Issue at most one poll on an already activated subscription.
 * Decode every original field into temporary storage and commit value only
 * after complete length/predicate validation. Idle or error leaves value
 * unchanged. This call starts no subscription, wait loop or implicit retry.
 * @param[in] cap Borrowed ROS2 owner; exact topic.subscribe/
 * event.poll identity, activation, QoS, quotas and deadline are caller policy.
 * @param[out] value Complete caller-owned record, disjoint from scratch and
 * the live owner/context/backend. Its old contents survive unsuccessful polls.
 * @param[out] scratch Private temporary poll buffer; contents on error are
 * not a validated record and may not be treated as live telemetry.
 * @param[in] capacity At least 5160 bytes for the selected maximum.
 * @return Zero after a full commit; otherwise the original Host/codec error.
 * Invalid pointers/overlap/length shape fail22; short maximum buffer fails90.
 * @note Synchronous, no retained pointer, thread, clock or authority creation.
 * The caller excludes concurrent use or retirement of this owner and buffers.
 * Units, frame and sequence order remain those of the pinned original schema.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_decode
 * @see uwvm_flexiv_flexiv_msgs_msg_RobotStates_publish
 */
inline static uint32_t uwvm_flexiv_flexiv_msgs_msg_RobotStates_poll(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates* value,
                                                                    unsigned char* scratch,
                                                                    size_t capacity)
{
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates next = {0};
    roswasmc_result result;
    uint32_t code;
    if(!uwvm_flexiv_operation_cap(cap) || !value || !scratch || !uwvm_bounded_cap_destination(cap, value, sizeof *value) ||
       !uwvm_bounded_cap_destination(cap, scratch, capacity) || uwvm_bounded_overlap(value, sizeof *value, scratch, capacity))
    {
        return 22;
    }
    if(capacity < 5160)
    {
        return 90;
    }
    result = roswasmc_poll(cap, scratch, capacity);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > capacity)
    {
        return 22;
    }
    code = roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_decode(scratch, (size_t)result.length, &next);
    if(code)
    {
        return code;
    }
    *value = next;
    return 0;
}

/**
 * @brief Call the exact original flexiv_msgs/srv/GetOperationalStatus service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/GetOperationalStatus_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/GetOperationalStatus_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_decode
 */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_GetOperationalStatus_call(roswasmc_capability const* cap,
                                                          roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request const* request,
                                                          roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_call(cap, request, response);
}

/**
 * @brief Call the exact original flexiv_msgs/srv/SetCartesianImpedance service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/SetCartesianImpedance_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/SetCartesianImpedance_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_decode
 */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetCartesianImpedance_call(roswasmc_capability const* cap,
                                                           roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request const* request,
                                                           roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_call(cap, request, response);
}

/**
 * @brief Call the exact original flexiv_msgs/srv/SetCartesianMotionLimits service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/SetCartesianMotionLimits_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/SetCartesianMotionLimits_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_decode
 */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetCartesianMotionLimits_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request const* request,
                                                              roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_call(cap, request, response);
}

/**
 * @brief Call the exact original flexiv_msgs/srv/SetForceControlAxis service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/SetForceControlAxis_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/SetForceControlAxis_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_decode
 */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetForceControlAxis_call(roswasmc_capability const* cap,
                                                         roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request const* request,
                                                         roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_call(cap, request, response);
}

/**
 * @brief Call the exact original flexiv_msgs/srv/SetForceControlFrame service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/SetForceControlFrame_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/SetForceControlFrame_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_decode
 */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetForceControlFrame_call(roswasmc_capability const* cap,
                                                          roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request const* request,
                                                          roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_call(cap, request, response);
}

/**
 * @brief Call the exact original flexiv_msgs/srv/SetJointImpedance service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/SetJointImpedance_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/SetJointImpedance_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_decode
 */
inline static roswasmc_result uwvm_flexiv_flexiv_msgs_srv_SetJointImpedance_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request const* request,
                                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_call(cap, request, response);
}

/**
 * @brief Call the exact original flexiv_msgs/srv/SetJointInertiaScale service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/SetJointInertiaScale_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/SetJointInertiaScale_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_decode
 */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetJointInertiaScale_call(roswasmc_capability const* cap,
                                                          roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request const* request,
                                                          roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_call(cap, request, response);
}

/**
 * @brief Call the exact original flexiv_msgs/srv/SetMaxContactTorque service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/SetMaxContactTorque_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/SetMaxContactTorque_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_decode
 */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetMaxContactTorque_call(roswasmc_capability const* cap,
                                                         roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request const* request,
                                                         roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_call(cap, request, response);
}

/**
 * @brief Call the exact original flexiv_msgs/srv/SetMaxContactWrench service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/SetMaxContactWrench_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/SetMaxContactWrench_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_decode
 */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetMaxContactWrench_call(roswasmc_capability const* cap,
                                                         roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request const* request,
                                                         roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_call(cap, request, response);
}

/**
 * @brief Call the exact original flexiv_msgs/srv/SetNullSpaceObjectives service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/SetNullSpaceObjectives_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/SetNullSpaceObjectives_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_decode
 */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetNullSpaceObjectives_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request const* request,
                                                            roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_call(cap, request, response);
}

/**
 * @brief Call the exact original flexiv_msgs/srv/SetNullSpacePosture service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/SetNullSpacePosture_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/SetNullSpacePosture_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_decode
 */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetNullSpacePosture_call(roswasmc_capability const* cap,
                                                         roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request const* request,
                                                         roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_call(cap, request, response);
}

/**
 * @brief Call the exact original flexiv_msgs/srv/SetPassiveForceControl service once.
 * @details Preserve every request/response field and source-schema predicate.
 * The original response remains available for controller-specific status;
 * result.error==0 means transport/codec success, not native controller success
 * or physical completion. Original units and frame conventions are unchanged.
 * @param[in] cap Borrowed already-open ROS2 service.call owner.
 * Exact native type/endpoint, permission, byte quota and deadline require
 * independent trusted Host policy; the function grants or opens nothing.
 * @param[in] request Borrowed whole flexiv_msgs/srv/SetPassiveForceControl_Request.
 * @param[out] response Caller-owned whole flexiv_msgs/srv/SetPassiveForceControl_Response;
 * keep storage disjoint from request and live ownership/control objects.
 * @return Original structured transport result. Shape/backend rejection
 * fails22; the generated call retains complete codec and Host error behavior.
 * Inspect the original response fields only after successful completion.
 * @note Synchronous; all request/response/owner storage lives through return.
 * Caller serializes owner use and cleanup. No thread, clock, implicit enable
 * or replay is introduced. A timeout/disconnection can leave delivery unknown.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_call
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_encode
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_decode
 */
inline static roswasmc_result
    uwvm_flexiv_flexiv_msgs_srv_SetPassiveForceControl_call(roswasmc_capability const* cap,
                                                            roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request const* request,
                                                            roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response* response)
{
    if(!uwvm_flexiv_operation_cap(cap))
    {
        return roswasmc_action_bundle_failure(22);
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_call(cap, request, response);
}
#endif
