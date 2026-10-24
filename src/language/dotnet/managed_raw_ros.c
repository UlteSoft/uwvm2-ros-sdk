/** @file
 * @brief Preserve every actual core ROS ABI scalar in same-Wasm CLR FFI.
 * @details Generated from the maintained ABI descriptor. This file performs
 * no guest application computation, ROS emulation, codec or policy expansion.
 */
#include <stdint.h>
#ifndef UWVM_ROS_BACKEND
#define UWVM_ROS_BACKEND 2
#endif
#if UWVM_ROS_BACKEND == 1

/**
 * @brief Return ABI version 1. This does not open a capability or authorize a resource.
 * @return Actual namespace version, not an errno.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("abi_version"))) extern uint32_t uwvm_ros1_abi_version(void);

/**
 * @brief Return ABI version 1. This does not open a capability or authorize a resource.
 * @return Actual namespace version, not an errno.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_abi_version(void)
{
    return uwvm_ros1_abi_version();
}

/**
 * @brief Open one explicitly granted alias in the caller Instance and selected backend. Write an
 * opaque eight-byte little-endian handle on success.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param alias_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param alias_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param handle_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("capability_open"))) extern uint32_t
uwvm_ros1_capability_open(uint32_t memory, uint64_t alias_offset, uint64_t alias_length, uint64_t handle_out_offset);

/**
 * @brief Open one explicitly granted alias in the caller Instance and selected backend. Write an
 * opaque eight-byte little-endian handle on success.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param alias_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param alias_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param handle_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t
managed_raw_capability_open(uint32_t memory, uint64_t alias_offset, uint64_t alias_length, uint64_t handle_out_offset)
{
    return uwvm_ros1_capability_open(memory, alias_offset, alias_length, handle_out_offset);
}

/**
 * @brief Retire this handle generation. The handle may already be retired if later Gateway
 * cleanup returns an error.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("capability_close"))) extern uint32_t
uwvm_ros1_capability_close(uint64_t handle);

/**
 * @brief Retire this handle generation. The handle may already be retired if later Gateway
 * cleanup returns an error.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_capability_close(uint64_t handle)
{
    return uwvm_ros1_capability_close(handle);
}

/**
 * @brief Revoke the alias for this Instance/backend, invalidating all its open sibling handles.
 * Reopening cannot restore the revoked grant.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("capability_revoke"))) extern uint32_t
uwvm_ros1_capability_revoke(uint64_t handle);

/**
 * @brief Revoke the alias for this Instance/backend, invalidating all its open sibling handles.
 * Reopening cannot restore the revoked grant.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_capability_revoke(uint64_t handle)
{
    return uwvm_ros1_capability_revoke(handle);
}

/**
 * @brief Publish one canonical generated message through a separately granted publisher alias.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param payload_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param payload_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("topic_publish"))) extern uint32_t
uwvm_ros1_topic_publish(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length);

/**
 * @brief Publish one canonical generated message through a separately granted publisher alias.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param payload_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param payload_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_topic_publish(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length)
{
    return uwvm_ros1_topic_publish(handle, memory, payload_offset, payload_length);
}

/**
 * @brief Activate a separately granted subscription queue. Receive messages through event_poll
 * on the guest execution thread.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("topic_subscribe"))) extern uint32_t
uwvm_ros1_topic_subscribe(uint64_t handle);

/**
 * @brief Activate a separately granted subscription queue. Receive messages through event_poll
 * on the guest execution thread.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_topic_subscribe(uint64_t handle)
{
    return uwvm_ros1_topic_subscribe(handle);
}

/**
 * @brief Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11
 * means no event; no native callback enters Wasm.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("event_poll"))) extern uint32_t uwvm_ros1_event_poll(
    uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);

/**
 * @brief Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11
 * means no event; no native callback enters Wasm.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_event_poll(
    uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_ros1_event_poll(handle, memory, output_offset, capacity, length_out_offset);
}

/**
 * @brief Bind separately granted event.observe and source owners. Correlation is nonzero only
 * when an owned outgoing Action data kind is selected; metadata-only watches use zero and
 * activate/consume no native payload. No aliases or rights are created.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param source_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param correlation Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("event_watch"))) extern uint32_t
uwvm_ros1_event_watch(uint64_t observer_handle, uint64_t source_handle, uint64_t correlation);

/**
 * @brief Bind separately granted event.observe and source owners. Correlation is nonzero only
 * when an owned outgoing Action data kind is selected; metadata-only watches use zero and
 * activate/consume no native payload. No aliases or rights are created.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param source_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param correlation Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_event_watch(uint64_t observer_handle, uint64_t source_handle, uint64_t correlation)
{
    return uwvm_ros1_event_watch(observer_handle, source_handle, correlation);
}

/**
 * @brief Read one complete versioned64-byte-header event. Error90 writes required size and
 * retains the event; error11 is idle. No automatic replay.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("event_poll_v1"))) extern uint32_t uwvm_ros1_event_poll_v1(
    uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);

/**
 * @brief Read one complete versioned64-byte-header event. Error90 writes required size and
 * retains the event; error11 is idle. No automatic replay.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_event_poll_v1(
    uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_ros1_event_poll_v1(handle, memory, output_offset, capacity, length_out_offset);
}

/**
 * @brief Write32 little-endian bytes: ready count,next record bytes,admission slots,admission
 * bytes. A readiness snapshot is not a reservation.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("event_ready"))) extern uint32_t
uwvm_ros1_event_ready(uint64_t observer_handle, uint32_t memory, uint64_t output_offset);

/**
 * @brief Write32 little-endian bytes: ready count,next record bytes,admission slots,admission
 * bytes. A readiness snapshot is not a reservation.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_event_ready(uint64_t observer_handle, uint32_t memory, uint64_t output_offset)
{
    return uwvm_ros1_event_ready(observer_handle, memory, output_offset);
}

/**
 * @brief Admit one bounded asynchronous service request. A successful acknowledgement writes
 * requestID; completion requires explicit service-response and resource-error observation. Never
 * replay a timeout.
 * @param source_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_id_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("service_submit"))) extern uint32_t
uwvm_ros1_service_submit(uint64_t source_handle,
                         uint64_t observer_handle,
                         uint32_t memory,
                         uint64_t request_offset,
                         uint64_t request_length,
                         uint64_t request_id_out_offset);

/**
 * @brief Admit one bounded asynchronous service request. A successful acknowledgement writes
 * requestID; completion requires explicit service-response and resource-error observation. Never
 * replay a timeout.
 * @param source_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_id_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_service_submit(uint64_t source_handle,
                                    uint64_t observer_handle,
                                    uint32_t memory,
                                    uint64_t request_offset,
                                    uint64_t request_length,
                                    uint64_t request_id_out_offset)
{
    return uwvm_ros1_service_submit(
        source_handle, observer_handle, memory, request_offset, request_length, request_id_out_offset);
}

/**
 * @brief Call the explicitly selected service using its canonical request/response type and
 * configured deadline. Do not automatically replay a timed-out call.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("service_call"))) extern uint32_t
uwvm_ros1_service_call(uint64_t handle,
                       uint32_t memory,
                       uint64_t request_offset,
                       uint64_t request_length,
                       uint64_t response_offset,
                       uint64_t capacity,
                       uint64_t length_out_offset);

/**
 * @brief Call the explicitly selected service using its canonical request/response type and
 * configured deadline. Do not automatically replay a timed-out call.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_service_call(uint64_t handle,
                                  uint32_t memory,
                                  uint64_t request_offset,
                                  uint64_t request_length,
                                  uint64_t response_offset,
                                  uint64_t capacity,
                                  uint64_t length_out_offset)
{
    return uwvm_ros1_service_call(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Activate the explicitly granted service server. Poll owned request IDs through
 * event_poll.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("service_advertise"))) extern uint32_t
uwvm_ros1_service_advertise(uint64_t handle);

/**
 * @brief Activate the explicitly granted service server. Poll owned request IDs through
 * event_poll.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_service_advertise(uint64_t handle)
{
    return uwvm_ros1_service_advertise(handle);
}

/**
 * @brief Respond to an owned live request using a separate response grant and u64 request-ID-
 * prefixed canonical response.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("service_respond"))) extern uint32_t
uwvm_ros1_service_respond(uint64_t handle,
                          uint32_t memory,
                          uint64_t request_offset,
                          uint64_t request_length,
                          uint64_t response_offset,
                          uint64_t capacity,
                          uint64_t length_out_offset);

/**
 * @brief Respond to an owned live request using a separate response grant and u64 request-ID-
 * prefixed canonical response.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_service_respond(uint64_t handle,
                                     uint32_t memory,
                                     uint64_t request_offset,
                                     uint64_t request_length,
                                     uint64_t response_offset,
                                     uint64_t capacity,
                                     uint64_t length_out_offset)
{
    return uwvm_ros1_service_respond(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin
 * Fibonacci uses one canonical i32 order. Generated bounded Actions require their registered
 * goal codec; all bounds remain explicit.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_send_goal"))) extern uint32_t
uwvm_ros1_action_send_goal(uint64_t handle,
                           uint32_t memory,
                           uint64_t request_offset,
                           uint64_t request_length,
                           uint64_t response_offset,
                           uint64_t capacity,
                           uint64_t length_out_offset);

/**
 * @brief Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin
 * Fibonacci uses one canonical i32 order. Generated bounded Actions require their registered
 * goal codec; all bounds remain explicit.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_send_goal(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset)
{
    return uwvm_ros1_action_send_goal(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Request cancellation of one owned Goal using its u64 ID and a separately authorized
 * cancel capability.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_cancel_own_goal"))) extern uint32_t
uwvm_ros1_action_cancel_own_goal(uint64_t handle,
                                 uint32_t memory,
                                 uint64_t request_offset,
                                 uint64_t request_length,
                                 uint64_t response_offset,
                                 uint64_t capacity,
                                 uint64_t length_out_offset);

/**
 * @brief Request cancellation of one owned Goal using its u64 ID and a separately authorized
 * cancel capability.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_cancel_own_goal(uint64_t handle,
                                            uint32_t memory,
                                            uint64_t request_offset,
                                            uint64_t request_length,
                                            uint64_t response_offset,
                                            uint64_t capacity,
                                            uint64_t length_out_offset)
{
    return uwvm_ros1_action_cancel_own_goal(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Use the separately granted any-cancel operation. Goal ID zero is valid only for this
 * independently authorized operation.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_cancel_any_goal"))) extern uint32_t
uwvm_ros1_action_cancel_any_goal(uint64_t handle,
                                 uint32_t memory,
                                 uint64_t request_offset,
                                 uint64_t request_length,
                                 uint64_t response_offset,
                                 uint64_t capacity,
                                 uint64_t length_out_offset);

/**
 * @brief Use the separately granted any-cancel operation. Goal ID zero is valid only for this
 * independently authorized operation.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_cancel_any_goal(uint64_t handle,
                                            uint32_t memory,
                                            uint64_t request_offset,
                                            uint64_t request_length,
                                            uint64_t response_offset,
                                            uint64_t capacity,
                                            uint64_t length_out_offset)
{
    return uwvm_ros1_action_cancel_any_goal(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin
 * Fibonacci appends count32/int32 values; an empty queue returns 11.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_receive_feedback"))) extern uint32_t
uwvm_ros1_action_receive_feedback(uint64_t handle,
                                  uint32_t memory,
                                  uint64_t request_offset,
                                  uint64_t request_length,
                                  uint64_t response_offset,
                                  uint64_t capacity,
                                  uint64_t length_out_offset);

/**
 * @brief Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin
 * Fibonacci appends count32/int32 values; an empty queue returns 11.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_receive_feedback(uint64_t handle,
                                             uint32_t memory,
                                             uint64_t request_offset,
                                             uint64_t request_length,
                                             uint64_t response_offset,
                                             uint64_t capacity,
                                             uint64_t length_out_offset)
{
    return uwvm_ros1_action_receive_feedback(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci
 * appends count32/int32 values. Successful terminal consumption retires ownership.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_receive_result"))) extern uint32_t
uwvm_ros1_action_receive_result(uint64_t handle,
                                uint32_t memory,
                                uint64_t request_offset,
                                uint64_t request_length,
                                uint64_t response_offset,
                                uint64_t capacity,
                                uint64_t length_out_offset);

/**
 * @brief Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci
 * appends count32/int32 values. Successful terminal consumption retires ownership.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_receive_result(uint64_t handle,
                                           uint32_t memory,
                                           uint64_t request_offset,
                                           uint64_t request_length,
                                           uint64_t response_offset,
                                           uint64_t capacity,
                                           uint64_t length_out_offset)
{
    return uwvm_ros1_action_receive_result(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Activate the explicitly granted Action server with an empty command. Poll ID8 plus the
 * selected trusted goal codec; builtin Fibonacci uses i32 order. Responses require another
 * grant.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_advertise"))) extern uint32_t
uwvm_ros1_action_advertise(uint64_t handle,
                           uint32_t memory,
                           uint64_t request_offset,
                           uint64_t request_length,
                           uint64_t response_offset,
                           uint64_t capacity,
                           uint64_t length_out_offset);

/**
 * @brief Activate the explicitly granted Action server with an empty command. Poll ID8 plus the
 * selected trusted goal codec; builtin Fibonacci uses i32 order. Responses require another
 * grant.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_advertise(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset)
{
    return uwvm_ros1_action_advertise(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci
 * appends count32/int32 values. Advertiser and responder require the same explicit ROS2 QoS
 * contract.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_respond"))) extern uint32_t
uwvm_ros1_action_respond(uint64_t handle,
                         uint32_t memory,
                         uint64_t request_offset,
                         uint64_t request_length,
                         uint64_t response_offset,
                         uint64_t capacity,
                         uint64_t length_out_offset);

/**
 * @brief Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci
 * appends count32/int32 values. Advertiser and responder require the same explicit ROS2 QoS
 * contract.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_respond(uint64_t handle,
                                    uint32_t memory,
                                    uint64_t request_offset,
                                    uint64_t request_length,
                                    uint64_t response_offset,
                                    uint64_t capacity,
                                    uint64_t length_out_offset)
{
    return uwvm_ros1_action_respond(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Request the separately configured source/target frame pair at u64 nanoseconds; zero
 * selects the latest admitted transform.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("tf_lookup"))) extern uint32_t
uwvm_ros1_tf_lookup(uint64_t handle,
                    uint32_t memory,
                    uint64_t request_offset,
                    uint64_t request_length,
                    uint64_t response_offset,
                    uint64_t capacity,
                    uint64_t length_out_offset);

/**
 * @brief Request the separately configured source/target frame pair at u64 nanoseconds; zero
 * selects the latest admitted transform.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_tf_lookup(uint64_t handle,
                               uint32_t memory,
                               uint64_t request_offset,
                               uint64_t request_length,
                               uint64_t response_offset,
                               uint64_t capacity,
                               uint64_t length_out_offset)
{
    return uwvm_ros1_tf_lookup(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Broadcast one canonical TransformStamped for the separately configured frame pair. Do
 * not normalize its quaternion implicitly.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("tf_broadcast"))) extern uint32_t
uwvm_ros1_tf_broadcast(uint64_t handle,
                       uint32_t memory,
                       uint64_t request_offset,
                       uint64_t request_length,
                       uint64_t response_offset,
                       uint64_t capacity,
                       uint64_t length_out_offset);

/**
 * @brief Broadcast one canonical TransformStamped for the separately configured frame pair. Do
 * not normalize its quaternion implicitly.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_tf_broadcast(uint64_t handle,
                                  uint32_t memory,
                                  uint64_t request_offset,
                                  uint64_t request_length,
                                  uint64_t response_offset,
                                  uint64_t capacity,
                                  uint64_t length_out_offset)
{
    return uwvm_ros1_tf_broadcast(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Read the value fixed by the capability type. An empty request does not select a
 * different node, name or value kind.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_get"))) extern uint32_t
uwvm_ros1_parameter_get(uint64_t handle,
                        uint32_t memory,
                        uint64_t request_offset,
                        uint64_t request_length,
                        uint64_t response_offset,
                        uint64_t capacity,
                        uint64_t length_out_offset);

/**
 * @brief Read the value fixed by the capability type. An empty request does not select a
 * different node, name or value kind.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_get(uint64_t handle,
                                   uint32_t memory,
                                   uint64_t request_offset,
                                   uint64_t request_length,
                                   uint64_t response_offset,
                                   uint64_t capacity,
                                   uint64_t length_out_offset)
{
    return uwvm_ros1_parameter_get(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Set a canonical value of the explicitly granted parameter type. Numeric and element
 * bounds remain enforced by the host.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_set"))) extern uint32_t
uwvm_ros1_parameter_set(uint64_t handle,
                        uint32_t memory,
                        uint64_t request_offset,
                        uint64_t request_length,
                        uint64_t response_offset,
                        uint64_t capacity,
                        uint64_t length_out_offset);

/**
 * @brief Set a canonical value of the explicitly granted parameter type. Numeric and element
 * bounds remain enforced by the host.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_set(uint64_t handle,
                                   uint32_t memory,
                                   uint64_t request_offset,
                                   uint64_t request_length,
                                   uint64_t response_offset,
                                   uint64_t capacity,
                                   uint64_t length_out_offset)
{
    return uwvm_ros1_parameter_set(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Delete the explicitly granted ROS1 parameter using an empty request; no implicit
 * parent-name authority is added.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_delete"))) extern uint32_t
uwvm_ros1_parameter_delete(uint64_t handle,
                           uint32_t memory,
                           uint64_t request_offset,
                           uint64_t request_length,
                           uint64_t response_offset,
                           uint64_t capacity,
                           uint64_t length_out_offset);

/**
 * @brief Delete the explicitly granted ROS1 parameter using an empty request; no implicit
 * parent-name authority is added.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_delete(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset)
{
    return uwvm_ros1_parameter_delete(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool
 * response.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_exists"))) extern uint32_t
uwvm_ros1_parameter_exists(uint64_t handle,
                           uint32_t memory,
                           uint64_t request_offset,
                           uint64_t request_length,
                           uint64_t response_offset,
                           uint64_t capacity,
                           uint64_t length_out_offset);

/**
 * @brief Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool
 * response.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_exists(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset)
{
    return uwvm_ros1_parameter_exists(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief List the separately authorized parameter scope; decode the bounded canonical String
 * result.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_list"))) extern uint32_t
uwvm_ros1_parameter_list(uint64_t handle,
                         uint32_t memory,
                         uint64_t request_offset,
                         uint64_t request_length,
                         uint64_t response_offset,
                         uint64_t capacity,
                         uint64_t length_out_offset);

/**
 * @brief List the separately authorized parameter scope; decode the bounded canonical String
 * result.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_list(uint64_t handle,
                                    uint32_t memory,
                                    uint64_t request_offset,
                                    uint64_t request_length,
                                    uint64_t response_offset,
                                    uint64_t capacity,
                                    uint64_t length_out_offset)
{
    return uwvm_ros1_parameter_list(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Search the explicitly granted ROS1 resource with an empty request. Parent namespaces
 * are included only with search-parent-namespaces=true, for the same final key and within
 * allowed-name-prefix before every native query.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_search"))) extern uint32_t
uwvm_ros1_parameter_search(uint64_t handle,
                           uint32_t memory,
                           uint64_t request_offset,
                           uint64_t request_length,
                           uint64_t response_offset,
                           uint64_t capacity,
                           uint64_t length_out_offset);

/**
 * @brief Search the explicitly granted ROS1 resource with an empty request. Parent namespaces
 * are included only with search-parent-namespaces=true, for the same final key and within
 * allowed-name-prefix before every native query.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_search(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset)
{
    return uwvm_ros1_parameter_search(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Inspect the configured topic filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_inspect_topic"))) extern uint32_t
uwvm_ros1_graph_inspect_topic(uint64_t handle,
                              uint32_t memory,
                              uint64_t request_offset,
                              uint64_t request_length,
                              uint64_t response_offset,
                              uint64_t capacity,
                              uint64_t length_out_offset);

/**
 * @brief Inspect the configured topic filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_inspect_topic(uint64_t handle,
                                         uint32_t memory,
                                         uint64_t request_offset,
                                         uint64_t request_length,
                                         uint64_t response_offset,
                                         uint64_t capacity,
                                         uint64_t length_out_offset)
{
    return uwvm_ros1_graph_inspect_topic(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Inspect the configured node filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_inspect_node"))) extern uint32_t
uwvm_ros1_graph_inspect_node(uint64_t handle,
                             uint32_t memory,
                             uint64_t request_offset,
                             uint64_t request_length,
                             uint64_t response_offset,
                             uint64_t capacity,
                             uint64_t length_out_offset);

/**
 * @brief Inspect the configured node filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_inspect_node(uint64_t handle,
                                        uint32_t memory,
                                        uint64_t request_offset,
                                        uint64_t request_length,
                                        uint64_t response_offset,
                                        uint64_t capacity,
                                        uint64_t length_out_offset)
{
    return uwvm_ros1_graph_inspect_node(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Inspect the configured service filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_inspect_service"))) extern uint32_t
uwvm_ros1_graph_inspect_service(uint64_t handle,
                                uint32_t memory,
                                uint64_t request_offset,
                                uint64_t request_length,
                                uint64_t response_offset,
                                uint64_t capacity,
                                uint64_t length_out_offset);

/**
 * @brief Inspect the configured service filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_inspect_service(uint64_t handle,
                                           uint32_t memory,
                                           uint64_t request_offset,
                                           uint64_t request_length,
                                           uint64_t response_offset,
                                           uint64_t capacity,
                                           uint64_t length_out_offset)
{
    return uwvm_ros1_graph_inspect_service(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief List topics within the explicit exact/prefix graph filter; decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_list_topics"))) extern uint32_t
uwvm_ros1_graph_list_topics(uint64_t handle,
                            uint32_t memory,
                            uint64_t request_offset,
                            uint64_t request_length,
                            uint64_t response_offset,
                            uint64_t capacity,
                            uint64_t length_out_offset);

/**
 * @brief List topics within the explicit exact/prefix graph filter; decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_list_topics(uint64_t handle,
                                       uint32_t memory,
                                       uint64_t request_offset,
                                       uint64_t request_length,
                                       uint64_t response_offset,
                                       uint64_t capacity,
                                       uint64_t length_out_offset)
{
    return uwvm_ros1_graph_list_topics(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief List nodes within the explicit graph filter; this is not unrestricted discovery
 * authority.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_list_nodes"))) extern uint32_t
uwvm_ros1_graph_list_nodes(uint64_t handle,
                           uint32_t memory,
                           uint64_t request_offset,
                           uint64_t request_length,
                           uint64_t response_offset,
                           uint64_t capacity,
                           uint64_t length_out_offset);

/**
 * @brief List nodes within the explicit graph filter; this is not unrestricted discovery
 * authority.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_list_nodes(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset)
{
    return uwvm_ros1_graph_list_nodes(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief List services within the explicit graph filter; decode sorted canonical String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_list_services"))) extern uint32_t
uwvm_ros1_graph_list_services(uint64_t handle,
                              uint32_t memory,
                              uint64_t request_offset,
                              uint64_t request_length,
                              uint64_t response_offset,
                              uint64_t capacity,
                              uint64_t length_out_offset);

/**
 * @brief List services within the explicit graph filter; decode sorted canonical String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_list_services(uint64_t handle,
                                         uint32_t memory,
                                         uint64_t request_offset,
                                         uint64_t request_length,
                                         uint64_t response_offset,
                                         uint64_t capacity,
                                         uint64_t length_out_offset)
{
    return uwvm_ros1_graph_list_services(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("time_read_ros"))) extern uint32_t
uwvm_ros1_time_read_ros(uint64_t handle,
                        uint32_t memory,
                        uint64_t request_offset,
                        uint64_t request_length,
                        uint64_t response_offset,
                        uint64_t capacity,
                        uint64_t length_out_offset);

/**
 * @brief Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_time_read_ros(uint64_t handle,
                                   uint32_t memory,
                                   uint64_t request_offset,
                                   uint64_t request_length,
                                   uint64_t response_offset,
                                   uint64_t capacity,
                                   uint64_t length_out_offset)
{
    return uwvm_ros1_time_read_ros(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Read the independently authorized ROS1 wall clock; another time grant does not imply
 * this one.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("time_read_wall"))) extern uint32_t
uwvm_ros1_time_read_wall(uint64_t handle,
                         uint32_t memory,
                         uint64_t request_offset,
                         uint64_t request_length,
                         uint64_t response_offset,
                         uint64_t capacity,
                         uint64_t length_out_offset);

/**
 * @brief Read the independently authorized ROS1 wall clock; another time grant does not imply
 * this one.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_time_read_wall(uint64_t handle,
                                    uint32_t memory,
                                    uint64_t request_offset,
                                    uint64_t request_length,
                                    uint64_t response_offset,
                                    uint64_t capacity,
                                    uint64_t length_out_offset)
{
    return uwvm_ros1_time_read_wall(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Write one canonical String to the separately granted ROS logger. This does not open a
 * file or socket.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param payload_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param payload_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros1_v1"), import_name("log_write"))) extern uint32_t
uwvm_ros1_log_write(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length);

/**
 * @brief Write one canonical String to the separately granted ROS logger. This does not open a
 * file or socket.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param payload_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param payload_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_log_write(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length)
{
    return uwvm_ros1_log_write(handle, memory, payload_offset, payload_length);
}
#endif
#if UWVM_ROS_BACKEND == 2

/**
 * @brief Return ABI version 1. This does not open a capability or authorize a resource.
 * @return Actual namespace version, not an errno.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("abi_version"))) extern uint32_t uwvm_ros2_abi_version(void);

/**
 * @brief Return ABI version 1. This does not open a capability or authorize a resource.
 * @return Actual namespace version, not an errno.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_abi_version(void)
{
    return uwvm_ros2_abi_version();
}

/**
 * @brief Open one explicitly granted alias in the caller Instance and selected backend. Write an
 * opaque eight-byte little-endian handle on success.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param alias_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param alias_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param handle_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_open"))) extern uint32_t
uwvm_ros2_capability_open(uint32_t memory, uint64_t alias_offset, uint64_t alias_length, uint64_t handle_out_offset);

/**
 * @brief Open one explicitly granted alias in the caller Instance and selected backend. Write an
 * opaque eight-byte little-endian handle on success.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param alias_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param alias_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param handle_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t
managed_raw_capability_open(uint32_t memory, uint64_t alias_offset, uint64_t alias_length, uint64_t handle_out_offset)
{
    return uwvm_ros2_capability_open(memory, alias_offset, alias_length, handle_out_offset);
}

/**
 * @brief Retire this handle generation. The handle may already be retired if later Gateway
 * cleanup returns an error.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_close"))) extern uint32_t
uwvm_ros2_capability_close(uint64_t handle);

/**
 * @brief Retire this handle generation. The handle may already be retired if later Gateway
 * cleanup returns an error.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_capability_close(uint64_t handle)
{
    return uwvm_ros2_capability_close(handle);
}

/**
 * @brief Revoke the alias for this Instance/backend, invalidating all its open sibling handles.
 * Reopening cannot restore the revoked grant.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_revoke"))) extern uint32_t
uwvm_ros2_capability_revoke(uint64_t handle);

/**
 * @brief Revoke the alias for this Instance/backend, invalidating all its open sibling handles.
 * Reopening cannot restore the revoked grant.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_capability_revoke(uint64_t handle)
{
    return uwvm_ros2_capability_revoke(handle);
}

/**
 * @brief Publish one canonical generated message through a separately granted publisher alias.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param payload_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param payload_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("topic_publish"))) extern uint32_t
uwvm_ros2_topic_publish(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length);

/**
 * @brief Publish one canonical generated message through a separately granted publisher alias.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param payload_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param payload_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_topic_publish(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length)
{
    return uwvm_ros2_topic_publish(handle, memory, payload_offset, payload_length);
}

/**
 * @brief Activate a separately granted subscription queue. Receive messages through event_poll
 * on the guest execution thread.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("topic_subscribe"))) extern uint32_t
uwvm_ros2_topic_subscribe(uint64_t handle);

/**
 * @brief Activate a separately granted subscription queue. Receive messages through event_poll
 * on the guest execution thread.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_topic_subscribe(uint64_t handle)
{
    return uwvm_ros2_topic_subscribe(handle);
}

/**
 * @brief Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11
 * means no event; no native callback enters Wasm.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_poll"))) extern uint32_t uwvm_ros2_event_poll(
    uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);

/**
 * @brief Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11
 * means no event; no native callback enters Wasm.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_event_poll(
    uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_ros2_event_poll(handle, memory, output_offset, capacity, length_out_offset);
}

/**
 * @brief Bind separately granted event.observe and source owners. Correlation is nonzero only
 * when an owned outgoing Action data kind is selected; metadata-only watches use zero and
 * activate/consume no native payload. No aliases or rights are created.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param source_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param correlation Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_watch"))) extern uint32_t
uwvm_ros2_event_watch(uint64_t observer_handle, uint64_t source_handle, uint64_t correlation);

/**
 * @brief Bind separately granted event.observe and source owners. Correlation is nonzero only
 * when an owned outgoing Action data kind is selected; metadata-only watches use zero and
 * activate/consume no native payload. No aliases or rights are created.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param source_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param correlation Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_event_watch(uint64_t observer_handle, uint64_t source_handle, uint64_t correlation)
{
    return uwvm_ros2_event_watch(observer_handle, source_handle, correlation);
}

/**
 * @brief Read one complete versioned64-byte-header event. Error90 writes required size and
 * retains the event; error11 is idle. No automatic replay.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_poll_v1"))) extern uint32_t uwvm_ros2_event_poll_v1(
    uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);

/**
 * @brief Read one complete versioned64-byte-header event. Error90 writes required size and
 * retains the event; error11 is idle. No automatic replay.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_event_poll_v1(
    uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_ros2_event_poll_v1(handle, memory, output_offset, capacity, length_out_offset);
}

/**
 * @brief Write32 little-endian bytes: ready count,next record bytes,admission slots,admission
 * bytes. A readiness snapshot is not a reservation.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_ready"))) extern uint32_t
uwvm_ros2_event_ready(uint64_t observer_handle, uint32_t memory, uint64_t output_offset);

/**
 * @brief Write32 little-endian bytes: ready count,next record bytes,admission slots,admission
 * bytes. A readiness snapshot is not a reservation.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_event_ready(uint64_t observer_handle, uint32_t memory, uint64_t output_offset)
{
    return uwvm_ros2_event_ready(observer_handle, memory, output_offset);
}

/**
 * @brief Admit one bounded asynchronous service request. A successful acknowledgement writes
 * requestID; completion requires explicit service-response and resource-error observation. Never
 * replay a timeout.
 * @param source_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_id_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_submit"))) extern uint32_t
uwvm_ros2_service_submit(uint64_t source_handle,
                         uint64_t observer_handle,
                         uint32_t memory,
                         uint64_t request_offset,
                         uint64_t request_length,
                         uint64_t request_id_out_offset);

/**
 * @brief Admit one bounded asynchronous service request. A successful acknowledgement writes
 * requestID; completion requires explicit service-response and resource-error observation. Never
 * replay a timeout.
 * @param source_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_id_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_service_submit(uint64_t source_handle,
                                    uint64_t observer_handle,
                                    uint32_t memory,
                                    uint64_t request_offset,
                                    uint64_t request_length,
                                    uint64_t request_id_out_offset)
{
    return uwvm_ros2_service_submit(
        source_handle, observer_handle, memory, request_offset, request_length, request_id_out_offset);
}

/**
 * @brief Call the explicitly selected service using its canonical request/response type and
 * configured deadline. Do not automatically replay a timed-out call.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_call"))) extern uint32_t
uwvm_ros2_service_call(uint64_t handle,
                       uint32_t memory,
                       uint64_t request_offset,
                       uint64_t request_length,
                       uint64_t response_offset,
                       uint64_t capacity,
                       uint64_t length_out_offset);

/**
 * @brief Call the explicitly selected service using its canonical request/response type and
 * configured deadline. Do not automatically replay a timed-out call.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_service_call(uint64_t handle,
                                  uint32_t memory,
                                  uint64_t request_offset,
                                  uint64_t request_length,
                                  uint64_t response_offset,
                                  uint64_t capacity,
                                  uint64_t length_out_offset)
{
    return uwvm_ros2_service_call(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Activate the explicitly granted service server. Poll owned request IDs through
 * event_poll.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_advertise"))) extern uint32_t
uwvm_ros2_service_advertise(uint64_t handle);

/**
 * @brief Activate the explicitly granted service server. Poll owned request IDs through
 * event_poll.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_service_advertise(uint64_t handle)
{
    return uwvm_ros2_service_advertise(handle);
}

/**
 * @brief Respond to an owned live request using a separate response grant and u64 request-ID-
 * prefixed canonical response.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_respond"))) extern uint32_t
uwvm_ros2_service_respond(uint64_t handle,
                          uint32_t memory,
                          uint64_t request_offset,
                          uint64_t request_length,
                          uint64_t response_offset,
                          uint64_t capacity,
                          uint64_t length_out_offset);

/**
 * @brief Respond to an owned live request using a separate response grant and u64 request-ID-
 * prefixed canonical response.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_service_respond(uint64_t handle,
                                     uint32_t memory,
                                     uint64_t request_offset,
                                     uint64_t request_length,
                                     uint64_t response_offset,
                                     uint64_t capacity,
                                     uint64_t length_out_offset)
{
    return uwvm_ros2_service_respond(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin
 * Fibonacci uses one canonical i32 order. Generated bounded Actions require their registered
 * goal codec; all bounds remain explicit.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_send_goal"))) extern uint32_t
uwvm_ros2_action_send_goal(uint64_t handle,
                           uint32_t memory,
                           uint64_t request_offset,
                           uint64_t request_length,
                           uint64_t response_offset,
                           uint64_t capacity,
                           uint64_t length_out_offset);

/**
 * @brief Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin
 * Fibonacci uses one canonical i32 order. Generated bounded Actions require their registered
 * goal codec; all bounds remain explicit.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_send_goal(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset)
{
    return uwvm_ros2_action_send_goal(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Request cancellation of one owned Goal using its u64 ID and a separately authorized
 * cancel capability.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_cancel_own_goal"))) extern uint32_t
uwvm_ros2_action_cancel_own_goal(uint64_t handle,
                                 uint32_t memory,
                                 uint64_t request_offset,
                                 uint64_t request_length,
                                 uint64_t response_offset,
                                 uint64_t capacity,
                                 uint64_t length_out_offset);

/**
 * @brief Request cancellation of one owned Goal using its u64 ID and a separately authorized
 * cancel capability.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_cancel_own_goal(uint64_t handle,
                                            uint32_t memory,
                                            uint64_t request_offset,
                                            uint64_t request_length,
                                            uint64_t response_offset,
                                            uint64_t capacity,
                                            uint64_t length_out_offset)
{
    return uwvm_ros2_action_cancel_own_goal(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Use the separately granted any-cancel operation. Goal ID zero is valid only for this
 * independently authorized operation.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_cancel_any_goal"))) extern uint32_t
uwvm_ros2_action_cancel_any_goal(uint64_t handle,
                                 uint32_t memory,
                                 uint64_t request_offset,
                                 uint64_t request_length,
                                 uint64_t response_offset,
                                 uint64_t capacity,
                                 uint64_t length_out_offset);

/**
 * @brief Use the separately granted any-cancel operation. Goal ID zero is valid only for this
 * independently authorized operation.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_cancel_any_goal(uint64_t handle,
                                            uint32_t memory,
                                            uint64_t request_offset,
                                            uint64_t request_length,
                                            uint64_t response_offset,
                                            uint64_t capacity,
                                            uint64_t length_out_offset)
{
    return uwvm_ros2_action_cancel_any_goal(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin
 * Fibonacci appends count32/int32 values; an empty queue returns 11.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_receive_feedback"))) extern uint32_t
uwvm_ros2_action_receive_feedback(uint64_t handle,
                                  uint32_t memory,
                                  uint64_t request_offset,
                                  uint64_t request_length,
                                  uint64_t response_offset,
                                  uint64_t capacity,
                                  uint64_t length_out_offset);

/**
 * @brief Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin
 * Fibonacci appends count32/int32 values; an empty queue returns 11.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_receive_feedback(uint64_t handle,
                                             uint32_t memory,
                                             uint64_t request_offset,
                                             uint64_t request_length,
                                             uint64_t response_offset,
                                             uint64_t capacity,
                                             uint64_t length_out_offset)
{
    return uwvm_ros2_action_receive_feedback(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci
 * appends count32/int32 values. Successful terminal consumption retires ownership.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_receive_result"))) extern uint32_t
uwvm_ros2_action_receive_result(uint64_t handle,
                                uint32_t memory,
                                uint64_t request_offset,
                                uint64_t request_length,
                                uint64_t response_offset,
                                uint64_t capacity,
                                uint64_t length_out_offset);

/**
 * @brief Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci
 * appends count32/int32 values. Successful terminal consumption retires ownership.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_receive_result(uint64_t handle,
                                           uint32_t memory,
                                           uint64_t request_offset,
                                           uint64_t request_length,
                                           uint64_t response_offset,
                                           uint64_t capacity,
                                           uint64_t length_out_offset)
{
    return uwvm_ros2_action_receive_result(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Activate the explicitly granted Action server with an empty command. Poll ID8 plus the
 * selected trusted goal codec; builtin Fibonacci uses i32 order. Responses require another
 * grant.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_advertise"))) extern uint32_t
uwvm_ros2_action_advertise(uint64_t handle,
                           uint32_t memory,
                           uint64_t request_offset,
                           uint64_t request_length,
                           uint64_t response_offset,
                           uint64_t capacity,
                           uint64_t length_out_offset);

/**
 * @brief Activate the explicitly granted Action server with an empty command. Poll ID8 plus the
 * selected trusted goal codec; builtin Fibonacci uses i32 order. Responses require another
 * grant.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_advertise(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset)
{
    return uwvm_ros2_action_advertise(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci
 * appends count32/int32 values. Advertiser and responder require the same explicit ROS2 QoS
 * contract.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_respond"))) extern uint32_t
uwvm_ros2_action_respond(uint64_t handle,
                         uint32_t memory,
                         uint64_t request_offset,
                         uint64_t request_length,
                         uint64_t response_offset,
                         uint64_t capacity,
                         uint64_t length_out_offset);

/**
 * @brief Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci
 * appends count32/int32 values. Advertiser and responder require the same explicit ROS2 QoS
 * contract.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_action_respond(uint64_t handle,
                                    uint32_t memory,
                                    uint64_t request_offset,
                                    uint64_t request_length,
                                    uint64_t response_offset,
                                    uint64_t capacity,
                                    uint64_t length_out_offset)
{
    return uwvm_ros2_action_respond(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Request the separately configured source/target frame pair at u64 nanoseconds; zero
 * selects the latest admitted transform.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("tf_lookup"))) extern uint32_t
uwvm_ros2_tf_lookup(uint64_t handle,
                    uint32_t memory,
                    uint64_t request_offset,
                    uint64_t request_length,
                    uint64_t response_offset,
                    uint64_t capacity,
                    uint64_t length_out_offset);

/**
 * @brief Request the separately configured source/target frame pair at u64 nanoseconds; zero
 * selects the latest admitted transform.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_tf_lookup(uint64_t handle,
                               uint32_t memory,
                               uint64_t request_offset,
                               uint64_t request_length,
                               uint64_t response_offset,
                               uint64_t capacity,
                               uint64_t length_out_offset)
{
    return uwvm_ros2_tf_lookup(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Broadcast one canonical TransformStamped for the separately configured frame pair. Do
 * not normalize its quaternion implicitly.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("tf_broadcast"))) extern uint32_t
uwvm_ros2_tf_broadcast(uint64_t handle,
                       uint32_t memory,
                       uint64_t request_offset,
                       uint64_t request_length,
                       uint64_t response_offset,
                       uint64_t capacity,
                       uint64_t length_out_offset);

/**
 * @brief Broadcast one canonical TransformStamped for the separately configured frame pair. Do
 * not normalize its quaternion implicitly.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_tf_broadcast(uint64_t handle,
                                  uint32_t memory,
                                  uint64_t request_offset,
                                  uint64_t request_length,
                                  uint64_t response_offset,
                                  uint64_t capacity,
                                  uint64_t length_out_offset)
{
    return uwvm_ros2_tf_broadcast(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Read the value fixed by the capability type. An empty request does not select a
 * different node, name or value kind.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_get"))) extern uint32_t
uwvm_ros2_parameter_get(uint64_t handle,
                        uint32_t memory,
                        uint64_t request_offset,
                        uint64_t request_length,
                        uint64_t response_offset,
                        uint64_t capacity,
                        uint64_t length_out_offset);

/**
 * @brief Read the value fixed by the capability type. An empty request does not select a
 * different node, name or value kind.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_get(uint64_t handle,
                                   uint32_t memory,
                                   uint64_t request_offset,
                                   uint64_t request_length,
                                   uint64_t response_offset,
                                   uint64_t capacity,
                                   uint64_t length_out_offset)
{
    return uwvm_ros2_parameter_get(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Set a canonical value of the explicitly granted parameter type. Numeric and element
 * bounds remain enforced by the host.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_set"))) extern uint32_t
uwvm_ros2_parameter_set(uint64_t handle,
                        uint32_t memory,
                        uint64_t request_offset,
                        uint64_t request_length,
                        uint64_t response_offset,
                        uint64_t capacity,
                        uint64_t length_out_offset);

/**
 * @brief Set a canonical value of the explicitly granted parameter type. Numeric and element
 * bounds remain enforced by the host.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_set(uint64_t handle,
                                   uint32_t memory,
                                   uint64_t request_offset,
                                   uint64_t request_length,
                                   uint64_t response_offset,
                                   uint64_t capacity,
                                   uint64_t length_out_offset)
{
    return uwvm_ros2_parameter_set(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief List the separately authorized parameter scope; decode the bounded canonical String
 * result.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_list"))) extern uint32_t
uwvm_ros2_parameter_list(uint64_t handle,
                         uint32_t memory,
                         uint64_t request_offset,
                         uint64_t request_length,
                         uint64_t response_offset,
                         uint64_t capacity,
                         uint64_t length_out_offset);

/**
 * @brief List the separately authorized parameter scope; decode the bounded canonical String
 * result.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_list(uint64_t handle,
                                    uint32_t memory,
                                    uint64_t request_offset,
                                    uint64_t request_length,
                                    uint64_t response_offset,
                                    uint64_t capacity,
                                    uint64_t length_out_offset)
{
    return uwvm_ros2_parameter_list(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Read the separately authorized ROS2 parameter metadata as a canonical String.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_describe"))) extern uint32_t
uwvm_ros2_parameter_describe(uint64_t handle,
                             uint32_t memory,
                             uint64_t request_offset,
                             uint64_t request_length,
                             uint64_t response_offset,
                             uint64_t capacity,
                             uint64_t length_out_offset);

/**
 * @brief Read the separately authorized ROS2 parameter metadata as a canonical String.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_describe(uint64_t handle,
                                        uint32_t memory,
                                        uint64_t request_offset,
                                        uint64_t request_length,
                                        uint64_t response_offset,
                                        uint64_t capacity,
                                        uint64_t length_out_offset)
{
    return uwvm_ros2_parameter_describe(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Declare a typed parameter on the explicitly selected local ROS2 Gateway node. Remote
 * declaration is unsupported.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_declare"))) extern uint32_t
uwvm_ros2_parameter_declare(uint64_t handle,
                            uint32_t memory,
                            uint64_t request_offset,
                            uint64_t request_length,
                            uint64_t response_offset,
                            uint64_t capacity,
                            uint64_t length_out_offset);

/**
 * @brief Declare a typed parameter on the explicitly selected local ROS2 Gateway node. Remote
 * declaration is unsupported.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_declare(uint64_t handle,
                                       uint32_t memory,
                                       uint64_t request_offset,
                                       uint64_t request_length,
                                       uint64_t response_offset,
                                       uint64_t capacity,
                                       uint64_t length_out_offset)
{
    return uwvm_ros2_parameter_declare(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Undeclare a typed parameter on the explicitly selected local ROS2 Gateway node. A
 * missing remote operation is not emulated.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_undeclare"))) extern uint32_t
uwvm_ros2_parameter_undeclare(uint64_t handle,
                              uint32_t memory,
                              uint64_t request_offset,
                              uint64_t request_length,
                              uint64_t response_offset,
                              uint64_t capacity,
                              uint64_t length_out_offset);

/**
 * @brief Undeclare a typed parameter on the explicitly selected local ROS2 Gateway node. A
 * missing remote operation is not emulated.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_undeclare(uint64_t handle,
                                         uint32_t memory,
                                         uint64_t request_offset,
                                         uint64_t request_length,
                                         uint64_t response_offset,
                                         uint64_t capacity,
                                         uint64_t length_out_offset)
{
    return uwvm_ros2_parameter_undeclare(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Inspect the configured topic filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_topic"))) extern uint32_t
uwvm_ros2_graph_inspect_topic(uint64_t handle,
                              uint32_t memory,
                              uint64_t request_offset,
                              uint64_t request_length,
                              uint64_t response_offset,
                              uint64_t capacity,
                              uint64_t length_out_offset);

/**
 * @brief Inspect the configured topic filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_inspect_topic(uint64_t handle,
                                         uint32_t memory,
                                         uint64_t request_offset,
                                         uint64_t request_length,
                                         uint64_t response_offset,
                                         uint64_t capacity,
                                         uint64_t length_out_offset)
{
    return uwvm_ros2_graph_inspect_topic(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Inspect the configured node filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_node"))) extern uint32_t
uwvm_ros2_graph_inspect_node(uint64_t handle,
                             uint32_t memory,
                             uint64_t request_offset,
                             uint64_t request_length,
                             uint64_t response_offset,
                             uint64_t capacity,
                             uint64_t length_out_offset);

/**
 * @brief Inspect the configured node filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_inspect_node(uint64_t handle,
                                        uint32_t memory,
                                        uint64_t request_offset,
                                        uint64_t request_length,
                                        uint64_t response_offset,
                                        uint64_t capacity,
                                        uint64_t length_out_offset)
{
    return uwvm_ros2_graph_inspect_node(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Inspect the configured service filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_service"))) extern uint32_t
uwvm_ros2_graph_inspect_service(uint64_t handle,
                                uint32_t memory,
                                uint64_t request_offset,
                                uint64_t request_length,
                                uint64_t response_offset,
                                uint64_t capacity,
                                uint64_t length_out_offset);

/**
 * @brief Inspect the configured service filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_inspect_service(uint64_t handle,
                                           uint32_t memory,
                                           uint64_t request_offset,
                                           uint64_t request_length,
                                           uint64_t response_offset,
                                           uint64_t capacity,
                                           uint64_t length_out_offset)
{
    return uwvm_ros2_graph_inspect_service(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Inspect the separately configured ROS2 Action filter; ROS1 does not export this
 * function.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_action"))) extern uint32_t
uwvm_ros2_graph_inspect_action(uint64_t handle,
                               uint32_t memory,
                               uint64_t request_offset,
                               uint64_t request_length,
                               uint64_t response_offset,
                               uint64_t capacity,
                               uint64_t length_out_offset);

/**
 * @brief Inspect the separately configured ROS2 Action filter; ROS1 does not export this
 * function.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_inspect_action(uint64_t handle,
                                          uint32_t memory,
                                          uint64_t request_offset,
                                          uint64_t request_length,
                                          uint64_t response_offset,
                                          uint64_t capacity,
                                          uint64_t length_out_offset)
{
    return uwvm_ros2_graph_inspect_action(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Activate a separate ROS2 parameter-event projection grant. This takes only one handle,
 * not the seven RPC arguments.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_subscribe_events"))) extern uint32_t
uwvm_ros2_parameter_subscribe_events(uint64_t handle);

/**
 * @brief Activate a separate ROS2 parameter-event projection grant. This takes only one handle,
 * not the seven RPC arguments.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_parameter_subscribe_events(uint64_t handle)
{
    return uwvm_ros2_parameter_subscribe_events(handle);
}

/**
 * @brief List topics within the explicit exact/prefix graph filter; decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_topics"))) extern uint32_t
uwvm_ros2_graph_list_topics(uint64_t handle,
                            uint32_t memory,
                            uint64_t request_offset,
                            uint64_t request_length,
                            uint64_t response_offset,
                            uint64_t capacity,
                            uint64_t length_out_offset);

/**
 * @brief List topics within the explicit exact/prefix graph filter; decode sorted canonical
 * String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_list_topics(uint64_t handle,
                                       uint32_t memory,
                                       uint64_t request_offset,
                                       uint64_t request_length,
                                       uint64_t response_offset,
                                       uint64_t capacity,
                                       uint64_t length_out_offset)
{
    return uwvm_ros2_graph_list_topics(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief List nodes within the explicit graph filter; this is not unrestricted discovery
 * authority.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_nodes"))) extern uint32_t
uwvm_ros2_graph_list_nodes(uint64_t handle,
                           uint32_t memory,
                           uint64_t request_offset,
                           uint64_t request_length,
                           uint64_t response_offset,
                           uint64_t capacity,
                           uint64_t length_out_offset);

/**
 * @brief List nodes within the explicit graph filter; this is not unrestricted discovery
 * authority.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_list_nodes(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset)
{
    return uwvm_ros2_graph_list_nodes(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief List services within the explicit graph filter; decode sorted canonical String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_services"))) extern uint32_t
uwvm_ros2_graph_list_services(uint64_t handle,
                              uint32_t memory,
                              uint64_t request_offset,
                              uint64_t request_length,
                              uint64_t response_offset,
                              uint64_t capacity,
                              uint64_t length_out_offset);

/**
 * @brief List services within the explicit graph filter; decode sorted canonical String rows.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_graph_list_services(uint64_t handle,
                                         uint32_t memory,
                                         uint64_t request_offset,
                                         uint64_t request_length,
                                         uint64_t response_offset,
                                         uint64_t capacity,
                                         uint64_t length_out_offset)
{
    return uwvm_ros2_graph_list_services(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Read the separately selected ROS2 lifecycle node state as u8 state ID followed by
 * canonical String label.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("lifecycle_get_state"))) extern uint32_t
uwvm_ros2_lifecycle_get_state(uint64_t handle,
                              uint32_t memory,
                              uint64_t request_offset,
                              uint64_t request_length,
                              uint64_t response_offset,
                              uint64_t capacity,
                              uint64_t length_out_offset);

/**
 * @brief Read the separately selected ROS2 lifecycle node state as u8 state ID followed by
 * canonical String label.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_lifecycle_get_state(uint64_t handle,
                                         uint32_t memory,
                                         uint64_t request_offset,
                                         uint64_t request_length,
                                         uint64_t response_offset,
                                         uint64_t capacity,
                                         uint64_t length_out_offset)
{
    return uwvm_ros2_lifecycle_get_state(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Apply the single ROS2 transition fixed by policy using an empty request; the guest
 * cannot override that transition.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("lifecycle_change_state"))) extern uint32_t
uwvm_ros2_lifecycle_change_state(uint64_t handle,
                                 uint32_t memory,
                                 uint64_t request_offset,
                                 uint64_t request_length,
                                 uint64_t response_offset,
                                 uint64_t capacity,
                                 uint64_t length_out_offset);

/**
 * @brief Apply the single ROS2 transition fixed by policy using an empty request; the guest
 * cannot override that transition.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_lifecycle_change_state(uint64_t handle,
                                            uint32_t memory,
                                            uint64_t request_offset,
                                            uint64_t request_length,
                                            uint64_t response_offset,
                                            uint64_t capacity,
                                            uint64_t length_out_offset)
{
    return uwvm_ros2_lifecycle_change_state(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_ros"))) extern uint32_t
uwvm_ros2_time_read_ros(uint64_t handle,
                        uint32_t memory,
                        uint64_t request_offset,
                        uint64_t request_length,
                        uint64_t response_offset,
                        uint64_t capacity,
                        uint64_t length_out_offset);

/**
 * @brief Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_time_read_ros(uint64_t handle,
                                   uint32_t memory,
                                   uint64_t request_offset,
                                   uint64_t request_length,
                                   uint64_t response_offset,
                                   uint64_t capacity,
                                   uint64_t length_out_offset)
{
    return uwvm_ros2_time_read_ros(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Read the independently authorized ROS2 system clock as u64 nanoseconds.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_system"))) extern uint32_t
uwvm_ros2_time_read_system(uint64_t handle,
                           uint32_t memory,
                           uint64_t request_offset,
                           uint64_t request_length,
                           uint64_t response_offset,
                           uint64_t capacity,
                           uint64_t length_out_offset);

/**
 * @brief Read the independently authorized ROS2 system clock as u64 nanoseconds.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_time_read_system(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset)
{
    return uwvm_ros2_time_read_system(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Read the independently authorized ROS2 steady clock as u64 nanoseconds.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_steady"))) extern uint32_t
uwvm_ros2_time_read_steady(uint64_t handle,
                           uint32_t memory,
                           uint64_t request_offset,
                           uint64_t request_length,
                           uint64_t response_offset,
                           uint64_t capacity,
                           uint64_t length_out_offset);

/**
 * @brief Read the independently authorized ROS2 steady clock as u64 nanoseconds.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_time_read_steady(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset)
{
    return uwvm_ros2_time_read_steady(
        handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/**
 * @brief Write one canonical String to the separately granted ROS logger. This does not open a
 * file or socket.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param payload_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param payload_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("log_write"))) extern uint32_t
uwvm_ros2_log_write(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length);

/**
 * @brief Write one canonical String to the separately granted ROS logger. This does not open a
 * file or socket.
 * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
 * @param payload_offset Exact i64 scalar; caller-owned memory/resource contract applies.
 * @param payload_length Exact i64 scalar; caller-owned memory/resource contract applies.
 * @return Original numeric ABI errno; output slots are inspected only when actually written.
 * @details No pointer ownership is transferred and failed effects are never replayed automatically.
 */
uint32_t managed_raw_log_write(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length)
{
    return uwvm_ros2_log_write(handle, memory, payload_offset, payload_length);
}
#endif
