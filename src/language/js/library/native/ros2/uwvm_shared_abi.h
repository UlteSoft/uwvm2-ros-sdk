/**
 * @file uwvm_shared_abi.h
 * @brief Declare and dispatch the complete ROS2 ABI v1 for a QuickJS module.
 * @details The maintained ABI descriptor defines scalar signatures and bounded
 * frame storage. Every host call uses this module's explicitly granted handles;
 * dispatch does not create permissions or transfer memory ownership.
 */
#pragma once
/**
 * @brief abi_version: Return ABI version 1. This does not open a capability or authorize a resource.
 * @return ABI version; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("abi_version"))) uint32_t uwvm_raw_abi_version(void);
/**
 * @brief capability_open: Open one explicitly granted alias in the caller Instance and selected backend. Write an
 * opaque eight-byte little-endian handle on success.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param alias_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param alias_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param handle_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_open"))) uint32_t uwvm_raw_capability_open(uint32_t memory,
                                                                                                                 uint64_t alias_offset,
                                                                                                                 uint64_t alias_length,
                                                                                                                 uint64_t handle_out_offset);
/**
 * @brief capability_close: Retire this handle generation. The handle may already be retired if later Gateway
 * cleanup returns an error.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_close"))) uint32_t uwvm_raw_capability_close(uint64_t handle);
/**
 * @brief capability_revoke: Revoke the alias for this Instance/backend, invalidating all its open sibling handles.
 * Reopening cannot restore the revoked grant.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_revoke"))) uint32_t uwvm_raw_capability_revoke(uint64_t handle);
/**
 * @brief topic_publish: Publish one canonical generated message through a separately granted publisher alias.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param payload_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param payload_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("topic_publish"))) uint32_t uwvm_raw_topic_publish(uint64_t handle,
                                                                                                             uint32_t memory,
                                                                                                             uint64_t payload_offset,
                                                                                                             uint64_t payload_length);
/**
 * @brief topic_subscribe: Activate a separately granted subscription queue. Receive messages through event_poll on
 * the guest execution thread.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("topic_subscribe"))) uint32_t uwvm_raw_topic_subscribe(uint64_t handle);
/**
 * @brief event_poll: Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means no
 * event; no native callback enters Wasm.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param output_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_poll"))) uint32_t
    uwvm_raw_event_poll(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);
/**
 * @brief event_watch: Bind separately granted event.observe and source owners. Correlation is nonzero only when an
 * owned outgoing Action data kind is selected; metadata-only watches use zero and activate/consume no native
 * payload. No aliases or rights are created.
 * @param observer_handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param source_handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param correlation Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_watch"))) uint32_t uwvm_raw_event_watch(uint64_t observer_handle,
                                                                                                         uint64_t source_handle,
                                                                                                         uint64_t correlation);
/**
 * @brief event_poll_v1: Read one complete versioned64-byte-header event. Error90 writes required size and retains
 * the event; error11 is idle. No automatic replay.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param output_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_poll_v1"))) uint32_t
    uwvm_raw_event_poll_v1(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);
/**
 * @brief event_ready: Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes.
 * A readiness snapshot is not a reservation.
 * @param observer_handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param output_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_ready"))) uint32_t uwvm_raw_event_ready(uint64_t observer_handle,
                                                                                                         uint32_t memory,
                                                                                                         uint64_t output_offset);
/**
 * @brief service_submit: Admit one bounded asynchronous service request. A successful acknowledgement writes
 * requestID; completion requires explicit service-response and resource-error observation. Never replay a timeout.
 * @param source_handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param observer_handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_id_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_submit"))) uint32_t uwvm_raw_service_submit(uint64_t source_handle,
                                                                                                               uint64_t observer_handle,
                                                                                                               uint32_t memory,
                                                                                                               uint64_t request_offset,
                                                                                                               uint64_t request_length,
                                                                                                               uint64_t request_id_out_offset);
/**
 * @brief service_call: Call the explicitly selected service using its canonical request/response type and
 * configured deadline. Do not automatically replay a timed-out call.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_call"))) uint32_t uwvm_raw_service_call(uint64_t handle,
                                                                                                           uint32_t memory,
                                                                                                           uint64_t request_offset,
                                                                                                           uint64_t request_length,
                                                                                                           uint64_t response_offset,
                                                                                                           uint64_t capacity,
                                                                                                           uint64_t length_out_offset);
/**
 * @brief service_advertise: Activate the explicitly granted service server. Poll owned request IDs through
 * event_poll.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_advertise"))) uint32_t uwvm_raw_service_advertise(uint64_t handle);
/**
 * @brief service_respond: Respond to an owned live request using a separate response grant and u64 request-ID-
 * prefixed canonical response.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_respond"))) uint32_t uwvm_raw_service_respond(uint64_t handle,
                                                                                                                 uint32_t memory,
                                                                                                                 uint64_t request_offset,
                                                                                                                 uint64_t request_length,
                                                                                                                 uint64_t response_offset,
                                                                                                                 uint64_t capacity,
                                                                                                                 uint64_t length_out_offset);
/**
 * @brief action_send_goal: Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin
 * Fibonacci uses one canonical i32 order. Generated bounded Actions require their registered goal codec; all
 * bounds remain explicit.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_send_goal"))) uint32_t uwvm_raw_action_send_goal(uint64_t handle,
                                                                                                                   uint32_t memory,
                                                                                                                   uint64_t request_offset,
                                                                                                                   uint64_t request_length,
                                                                                                                   uint64_t response_offset,
                                                                                                                   uint64_t capacity,
                                                                                                                   uint64_t length_out_offset);
/**
 * @brief action_cancel_own_goal: Request cancellation of one owned Goal using its u64 ID and a separately
 * authorized cancel capability.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_cancel_own_goal"))) uint32_t uwvm_raw_action_cancel_own_goal(uint64_t handle,
                                                                                                                               uint32_t memory,
                                                                                                                               uint64_t request_offset,
                                                                                                                               uint64_t request_length,
                                                                                                                               uint64_t response_offset,
                                                                                                                               uint64_t capacity,
                                                                                                                               uint64_t length_out_offset);
/**
 * @brief action_cancel_any_goal: Use the separately granted any-cancel operation. Goal ID zero is valid only for
 * this independently authorized operation.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_cancel_any_goal"))) uint32_t uwvm_raw_action_cancel_any_goal(uint64_t handle,
                                                                                                                               uint32_t memory,
                                                                                                                               uint64_t request_offset,
                                                                                                                               uint64_t request_length,
                                                                                                                               uint64_t response_offset,
                                                                                                                               uint64_t capacity,
                                                                                                                               uint64_t length_out_offset);
/**
 * @brief action_receive_feedback: Receive ID8 plus the selected trusted Action feedback codec for an owned Goal.
 * Builtin Fibonacci appends count32/int32 values; an empty queue returns 11.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_receive_feedback"))) uint32_t uwvm_raw_action_receive_feedback(uint64_t handle,
                                                                                                                                 uint32_t memory,
                                                                                                                                 uint64_t request_offset,
                                                                                                                                 uint64_t request_length,
                                                                                                                                 uint64_t response_offset,
                                                                                                                                 uint64_t capacity,
                                                                                                                                 uint64_t length_out_offset);
/**
 * @brief action_receive_result: Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin
 * Fibonacci appends count32/int32 values. Successful terminal consumption retires ownership.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_receive_result"))) uint32_t uwvm_raw_action_receive_result(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/**
 * @brief action_advertise: Activate the explicitly granted Action server with an empty command. Poll ID8 plus the
 * selected trusted goal codec; builtin Fibonacci uses i32 order. Responses require another grant.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_advertise"))) uint32_t uwvm_raw_action_advertise(uint64_t handle,
                                                                                                                   uint32_t memory,
                                                                                                                   uint64_t request_offset,
                                                                                                                   uint64_t request_length,
                                                                                                                   uint64_t response_offset,
                                                                                                                   uint64_t capacity,
                                                                                                                   uint64_t length_out_offset);
/**
 * @brief action_respond: Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci appends
 * count32/int32 values. Advertiser and responder require the same explicit ROS2 QoS contract.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_respond"))) uint32_t uwvm_raw_action_respond(uint64_t handle,
                                                                                                               uint32_t memory,
                                                                                                               uint64_t request_offset,
                                                                                                               uint64_t request_length,
                                                                                                               uint64_t response_offset,
                                                                                                               uint64_t capacity,
                                                                                                               uint64_t length_out_offset);
/**
 * @brief tf_lookup: Request the separately configured source/target frame pair at u64 nanoseconds; zero selects
 * the latest admitted transform.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("tf_lookup"))) uint32_t uwvm_raw_tf_lookup(uint64_t handle,
                                                                                                     uint32_t memory,
                                                                                                     uint64_t request_offset,
                                                                                                     uint64_t request_length,
                                                                                                     uint64_t response_offset,
                                                                                                     uint64_t capacity,
                                                                                                     uint64_t length_out_offset);
/**
 * @brief tf_broadcast: Broadcast one canonical TransformStamped for the separately configured frame pair. Do not
 * normalize its quaternion implicitly.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("tf_broadcast"))) uint32_t uwvm_raw_tf_broadcast(uint64_t handle,
                                                                                                           uint32_t memory,
                                                                                                           uint64_t request_offset,
                                                                                                           uint64_t request_length,
                                                                                                           uint64_t response_offset,
                                                                                                           uint64_t capacity,
                                                                                                           uint64_t length_out_offset);
/**
 * @brief parameter_get: Read the value fixed by the capability type. An empty request does not select a different
 * node, name or value kind.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_get"))) uint32_t uwvm_raw_parameter_get(uint64_t handle,
                                                                                                             uint32_t memory,
                                                                                                             uint64_t request_offset,
                                                                                                             uint64_t request_length,
                                                                                                             uint64_t response_offset,
                                                                                                             uint64_t capacity,
                                                                                                             uint64_t length_out_offset);
/**
 * @brief parameter_set: Set a canonical value of the explicitly granted parameter type. Numeric and element bounds
 * remain enforced by the host.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_set"))) uint32_t uwvm_raw_parameter_set(uint64_t handle,
                                                                                                             uint32_t memory,
                                                                                                             uint64_t request_offset,
                                                                                                             uint64_t request_length,
                                                                                                             uint64_t response_offset,
                                                                                                             uint64_t capacity,
                                                                                                             uint64_t length_out_offset);
/**
 * @brief parameter_list: List the separately authorized parameter scope; decode the bounded canonical String
 * result.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_list"))) uint32_t uwvm_raw_parameter_list(uint64_t handle,
                                                                                                               uint32_t memory,
                                                                                                               uint64_t request_offset,
                                                                                                               uint64_t request_length,
                                                                                                               uint64_t response_offset,
                                                                                                               uint64_t capacity,
                                                                                                               uint64_t length_out_offset);
/**
 * @brief parameter_describe: Read the separately authorized ROS2 parameter metadata as a canonical String.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_describe"))) uint32_t uwvm_raw_parameter_describe(uint64_t handle,
                                                                                                                       uint32_t memory,
                                                                                                                       uint64_t request_offset,
                                                                                                                       uint64_t request_length,
                                                                                                                       uint64_t response_offset,
                                                                                                                       uint64_t capacity,
                                                                                                                       uint64_t length_out_offset);
/**
 * @brief parameter_declare: Declare a typed parameter on the explicitly selected local ROS2 Gateway node. Remote
 * declaration is unsupported.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_declare"))) uint32_t uwvm_raw_parameter_declare(uint64_t handle,
                                                                                                                     uint32_t memory,
                                                                                                                     uint64_t request_offset,
                                                                                                                     uint64_t request_length,
                                                                                                                     uint64_t response_offset,
                                                                                                                     uint64_t capacity,
                                                                                                                     uint64_t length_out_offset);
/**
 * @brief parameter_undeclare: Undeclare a typed parameter on the explicitly selected local ROS2 Gateway node. A
 * missing remote operation is not emulated.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_undeclare"))) uint32_t uwvm_raw_parameter_undeclare(uint64_t handle,
                                                                                                                         uint32_t memory,
                                                                                                                         uint64_t request_offset,
                                                                                                                         uint64_t request_length,
                                                                                                                         uint64_t response_offset,
                                                                                                                         uint64_t capacity,
                                                                                                                         uint64_t length_out_offset);
/**
 * @brief graph_inspect_topic: Inspect the configured topic filter with an empty request and decode sorted
 * canonical String rows.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_topic"))) uint32_t uwvm_raw_graph_inspect_topic(uint64_t handle,
                                                                                                                         uint32_t memory,
                                                                                                                         uint64_t request_offset,
                                                                                                                         uint64_t request_length,
                                                                                                                         uint64_t response_offset,
                                                                                                                         uint64_t capacity,
                                                                                                                         uint64_t length_out_offset);
/**
 * @brief graph_inspect_node: Inspect the configured node filter with an empty request and decode sorted canonical
 * String rows.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_node"))) uint32_t uwvm_raw_graph_inspect_node(uint64_t handle,
                                                                                                                       uint32_t memory,
                                                                                                                       uint64_t request_offset,
                                                                                                                       uint64_t request_length,
                                                                                                                       uint64_t response_offset,
                                                                                                                       uint64_t capacity,
                                                                                                                       uint64_t length_out_offset);
/**
 * @brief graph_inspect_service: Inspect the configured service filter with an empty request and decode sorted
 * canonical String rows.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_service"))) uint32_t uwvm_raw_graph_inspect_service(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/**
 * @brief graph_inspect_action: Inspect the separately configured ROS2 Action filter; ROS1 does not export this
 * function.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_action"))) uint32_t uwvm_raw_graph_inspect_action(uint64_t handle,
                                                                                                                           uint32_t memory,
                                                                                                                           uint64_t request_offset,
                                                                                                                           uint64_t request_length,
                                                                                                                           uint64_t response_offset,
                                                                                                                           uint64_t capacity,
                                                                                                                           uint64_t length_out_offset);
/**
 * @brief parameter_subscribe_events: Activate a separate ROS2 parameter-event projection grant. This takes only
 * one handle, not the seven RPC arguments.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_subscribe_events"))) uint32_t uwvm_raw_parameter_subscribe_events(uint64_t handle);
/**
 * @brief graph_list_topics: List topics within the explicit exact/prefix graph filter; decode sorted canonical
 * String rows.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_topics"))) uint32_t uwvm_raw_graph_list_topics(uint64_t handle,
                                                                                                                     uint32_t memory,
                                                                                                                     uint64_t request_offset,
                                                                                                                     uint64_t request_length,
                                                                                                                     uint64_t response_offset,
                                                                                                                     uint64_t capacity,
                                                                                                                     uint64_t length_out_offset);
/**
 * @brief graph_list_nodes: List nodes within the explicit graph filter; this is not unrestricted discovery
 * authority.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_nodes"))) uint32_t uwvm_raw_graph_list_nodes(uint64_t handle,
                                                                                                                   uint32_t memory,
                                                                                                                   uint64_t request_offset,
                                                                                                                   uint64_t request_length,
                                                                                                                   uint64_t response_offset,
                                                                                                                   uint64_t capacity,
                                                                                                                   uint64_t length_out_offset);
/**
 * @brief graph_list_services: List services within the explicit graph filter; decode sorted canonical String rows.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_services"))) uint32_t uwvm_raw_graph_list_services(uint64_t handle,
                                                                                                                         uint32_t memory,
                                                                                                                         uint64_t request_offset,
                                                                                                                         uint64_t request_length,
                                                                                                                         uint64_t response_offset,
                                                                                                                         uint64_t capacity,
                                                                                                                         uint64_t length_out_offset);
/**
 * @brief lifecycle_get_state: Read the separately selected ROS2 lifecycle node state as u8 state ID followed by
 * canonical String label.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("lifecycle_get_state"))) uint32_t uwvm_raw_lifecycle_get_state(uint64_t handle,
                                                                                                                         uint32_t memory,
                                                                                                                         uint64_t request_offset,
                                                                                                                         uint64_t request_length,
                                                                                                                         uint64_t response_offset,
                                                                                                                         uint64_t capacity,
                                                                                                                         uint64_t length_out_offset);
/**
 * @brief lifecycle_change_state: Apply the single ROS2 transition fixed by policy using an empty request; the
 * guest cannot override that transition.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("lifecycle_change_state"))) uint32_t uwvm_raw_lifecycle_change_state(uint64_t handle,
                                                                                                                               uint32_t memory,
                                                                                                                               uint64_t request_offset,
                                                                                                                               uint64_t request_length,
                                                                                                                               uint64_t response_offset,
                                                                                                                               uint64_t capacity,
                                                                                                                               uint64_t length_out_offset);
/**
 * @brief time_read_ros: Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_ros"))) uint32_t uwvm_raw_time_read_ros(uint64_t handle,
                                                                                                             uint32_t memory,
                                                                                                             uint64_t request_offset,
                                                                                                             uint64_t request_length,
                                                                                                             uint64_t response_offset,
                                                                                                             uint64_t capacity,
                                                                                                             uint64_t length_out_offset);
/**
 * @brief time_read_system: Read the independently authorized ROS2 system clock as u64 nanoseconds.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_system"))) uint32_t uwvm_raw_time_read_system(uint64_t handle,
                                                                                                                   uint32_t memory,
                                                                                                                   uint64_t request_offset,
                                                                                                                   uint64_t request_length,
                                                                                                                   uint64_t response_offset,
                                                                                                                   uint64_t capacity,
                                                                                                                   uint64_t length_out_offset);
/**
 * @brief time_read_steady: Read the independently authorized ROS2 steady clock as u64 nanoseconds.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param request_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param response_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param capacity Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param length_out_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_steady"))) uint32_t uwvm_raw_time_read_steady(uint64_t handle,
                                                                                                                   uint32_t memory,
                                                                                                                   uint64_t request_offset,
                                                                                                                   uint64_t request_length,
                                                                                                                   uint64_t response_offset,
                                                                                                                   uint64_t capacity,
                                                                                                                   uint64_t length_out_offset);
/**
 * @brief log_write: Write one canonical String to the separately granted ROS logger. This does not open a file or
 * socket.
 * @param handle Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param memory Exact original i32 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param payload_offset Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @param payload_length Exact original i64 scalar; guest offsets and lengths refer to pinned frame storage.
 * @return error code; host status is retained without retry.
 * @details Borrowed frame storage; original ABI errors and explicit permissions apply.
 */
__attribute__((import_module("uwvm_ros2_v1"), import_name("log_write"))) uint32_t uwvm_raw_log_write(uint64_t handle,
                                                                                                     uint32_t memory,
                                                                                                     uint64_t payload_offset,
                                                                                                     uint64_t payload_length);

/** @brief Enter exactly one named original import with caller-owned frame storage.
 * @param name NUL-free exact operation name, retained through this synchronous call.
 * @param value Initialized, exclusive bounded frame; no retry or grant is introduced.
 * @details Unknown names or invalid form extents preserve local status22. */
inline static void uwvm_dispatch(char const* name, uwvm_call_frame* value)
{
    if(strcmp(name, "abi_version") == 0)
    {
        value->kind = 4;
        if(!(value->input_size == 0 && value->capacity == 0))
        {
            return;
        }
        value->slot = uwvm_raw_abi_version();
        value->code = 0;
    }
    else if(strcmp(name, "capability_open") == 0)
    {
        value->kind = 2;
        if(!(value->input_size >= 1 && value->input_size <= 255 && value->capacity == 0 && value->handle == 0))
        {
            return;
        }
        value->slot = 0;
        value->code = uwvm_raw_capability_open(0, uwvm_address(value->input), value->input_size, uwvm_address(&value->slot));
    }
    else if(strcmp(name, "capability_close") == 0)
    {
        value->kind = 0;
        if(!(value->input_size == 0 && value->capacity == 0))
        {
            return;
        }
        value->code = uwvm_raw_capability_close(value->handle);
    }
    else if(strcmp(name, "capability_revoke") == 0)
    {
        value->kind = 0;
        if(!(value->input_size == 0 && value->capacity == 0))
        {
            return;
        }
        value->code = uwvm_raw_capability_revoke(value->handle);
    }
    else if(strcmp(name, "topic_publish") == 0)
    {
        value->kind = 0;
        if(!(value->capacity == 0))
        {
            return;
        }
        value->code = uwvm_raw_topic_publish(value->handle, 0, uwvm_address(value->input), value->input_size);
    }
    else if(strcmp(name, "topic_subscribe") == 0)
    {
        value->kind = 0;
        if(!(value->input_size == 0 && value->capacity == 0))
        {
            return;
        }
        value->code = uwvm_raw_topic_subscribe(value->handle);
    }
    else if(strcmp(name, "event_poll") == 0)
    {
        value->kind = 1;
        if(!(value->input_size == 0))
        {
            return;
        }
        value->code = uwvm_raw_event_poll(value->handle, 0, uwvm_address(value->output), value->capacity, uwvm_address(&value->slot));
    }
    else if(strcmp(name, "event_watch") == 0)
    {
        value->kind = 0;
        if(!(value->input_size == 0 && value->capacity == 0))
        {
            return;
        }
        value->code = uwvm_raw_event_watch(value->handle, value->other, value->correlation);
    }
    else if(strcmp(name, "event_poll_v1") == 0)
    {
        value->kind = 1;
        if(!(value->input_size == 0))
        {
            return;
        }
        value->code = uwvm_raw_event_poll_v1(value->handle, 0, uwvm_address(value->output), value->capacity, uwvm_address(&value->slot));
    }
    else if(strcmp(name, "event_ready") == 0)
    {
        value->kind = 3;
        if(!(value->input_size == 0 && value->capacity == 32))
        {
            return;
        }
        value->code = uwvm_raw_event_ready(value->handle, 0, uwvm_address(value->output));
    }
    else if(strcmp(name, "service_submit") == 0)
    {
        value->kind = 2;
        if(!(value->capacity == 0))
        {
            return;
        }
        value->slot = 0;
        value->code = uwvm_raw_service_submit(value->handle, value->other, 0, uwvm_address(value->input), value->input_size, uwvm_address(&value->slot));
    }
    else if(strcmp(name, "service_call") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_service_call(value->handle,
                                            0,
                                            uwvm_address(value->input),
                                            value->input_size,
                                            uwvm_address(value->output),
                                            value->capacity,
                                            uwvm_address(&value->slot));
    }
    else if(strcmp(name, "service_advertise") == 0)
    {
        value->kind = 0;
        if(!(value->input_size == 0 && value->capacity == 0))
        {
            return;
        }
        value->code = uwvm_raw_service_advertise(value->handle);
    }
    else if(strcmp(name, "service_respond") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_service_respond(value->handle,
                                               0,
                                               uwvm_address(value->input),
                                               value->input_size,
                                               uwvm_address(value->output),
                                               value->capacity,
                                               uwvm_address(&value->slot));
    }
    else if(strcmp(name, "action_send_goal") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_action_send_goal(value->handle,
                                                0,
                                                uwvm_address(value->input),
                                                value->input_size,
                                                uwvm_address(value->output),
                                                value->capacity,
                                                uwvm_address(&value->slot));
    }
    else if(strcmp(name, "action_cancel_own_goal") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_action_cancel_own_goal(value->handle,
                                                      0,
                                                      uwvm_address(value->input),
                                                      value->input_size,
                                                      uwvm_address(value->output),
                                                      value->capacity,
                                                      uwvm_address(&value->slot));
    }
    else if(strcmp(name, "action_cancel_any_goal") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_action_cancel_any_goal(value->handle,
                                                      0,
                                                      uwvm_address(value->input),
                                                      value->input_size,
                                                      uwvm_address(value->output),
                                                      value->capacity,
                                                      uwvm_address(&value->slot));
    }
    else if(strcmp(name, "action_receive_feedback") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_action_receive_feedback(value->handle,
                                                       0,
                                                       uwvm_address(value->input),
                                                       value->input_size,
                                                       uwvm_address(value->output),
                                                       value->capacity,
                                                       uwvm_address(&value->slot));
    }
    else if(strcmp(name, "action_receive_result") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_action_receive_result(value->handle,
                                                     0,
                                                     uwvm_address(value->input),
                                                     value->input_size,
                                                     uwvm_address(value->output),
                                                     value->capacity,
                                                     uwvm_address(&value->slot));
    }
    else if(strcmp(name, "action_advertise") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_action_advertise(value->handle,
                                                0,
                                                uwvm_address(value->input),
                                                value->input_size,
                                                uwvm_address(value->output),
                                                value->capacity,
                                                uwvm_address(&value->slot));
    }
    else if(strcmp(name, "action_respond") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_action_respond(value->handle,
                                              0,
                                              uwvm_address(value->input),
                                              value->input_size,
                                              uwvm_address(value->output),
                                              value->capacity,
                                              uwvm_address(&value->slot));
    }
    else if(strcmp(name, "tf_lookup") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_tf_lookup(value->handle,
                                         0,
                                         uwvm_address(value->input),
                                         value->input_size,
                                         uwvm_address(value->output),
                                         value->capacity,
                                         uwvm_address(&value->slot));
    }
    else if(strcmp(name, "tf_broadcast") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_tf_broadcast(value->handle,
                                            0,
                                            uwvm_address(value->input),
                                            value->input_size,
                                            uwvm_address(value->output),
                                            value->capacity,
                                            uwvm_address(&value->slot));
    }
    else if(strcmp(name, "parameter_get") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_parameter_get(value->handle,
                                             0,
                                             uwvm_address(value->input),
                                             value->input_size,
                                             uwvm_address(value->output),
                                             value->capacity,
                                             uwvm_address(&value->slot));
    }
    else if(strcmp(name, "parameter_set") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_parameter_set(value->handle,
                                             0,
                                             uwvm_address(value->input),
                                             value->input_size,
                                             uwvm_address(value->output),
                                             value->capacity,
                                             uwvm_address(&value->slot));
    }
    else if(strcmp(name, "parameter_list") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_parameter_list(value->handle,
                                              0,
                                              uwvm_address(value->input),
                                              value->input_size,
                                              uwvm_address(value->output),
                                              value->capacity,
                                              uwvm_address(&value->slot));
    }
    else if(strcmp(name, "parameter_describe") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_parameter_describe(value->handle,
                                                  0,
                                                  uwvm_address(value->input),
                                                  value->input_size,
                                                  uwvm_address(value->output),
                                                  value->capacity,
                                                  uwvm_address(&value->slot));
    }
    else if(strcmp(name, "parameter_declare") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_parameter_declare(value->handle,
                                                 0,
                                                 uwvm_address(value->input),
                                                 value->input_size,
                                                 uwvm_address(value->output),
                                                 value->capacity,
                                                 uwvm_address(&value->slot));
    }
    else if(strcmp(name, "parameter_undeclare") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_parameter_undeclare(value->handle,
                                                   0,
                                                   uwvm_address(value->input),
                                                   value->input_size,
                                                   uwvm_address(value->output),
                                                   value->capacity,
                                                   uwvm_address(&value->slot));
    }
    else if(strcmp(name, "graph_inspect_topic") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_graph_inspect_topic(value->handle,
                                                   0,
                                                   uwvm_address(value->input),
                                                   value->input_size,
                                                   uwvm_address(value->output),
                                                   value->capacity,
                                                   uwvm_address(&value->slot));
    }
    else if(strcmp(name, "graph_inspect_node") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_graph_inspect_node(value->handle,
                                                  0,
                                                  uwvm_address(value->input),
                                                  value->input_size,
                                                  uwvm_address(value->output),
                                                  value->capacity,
                                                  uwvm_address(&value->slot));
    }
    else if(strcmp(name, "graph_inspect_service") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_graph_inspect_service(value->handle,
                                                     0,
                                                     uwvm_address(value->input),
                                                     value->input_size,
                                                     uwvm_address(value->output),
                                                     value->capacity,
                                                     uwvm_address(&value->slot));
    }
    else if(strcmp(name, "graph_inspect_action") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_graph_inspect_action(value->handle,
                                                    0,
                                                    uwvm_address(value->input),
                                                    value->input_size,
                                                    uwvm_address(value->output),
                                                    value->capacity,
                                                    uwvm_address(&value->slot));
    }
    else if(strcmp(name, "parameter_subscribe_events") == 0)
    {
        value->kind = 0;
        if(!(value->input_size == 0 && value->capacity == 0))
        {
            return;
        }
        value->code = uwvm_raw_parameter_subscribe_events(value->handle);
    }
    else if(strcmp(name, "graph_list_topics") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_graph_list_topics(value->handle,
                                                 0,
                                                 uwvm_address(value->input),
                                                 value->input_size,
                                                 uwvm_address(value->output),
                                                 value->capacity,
                                                 uwvm_address(&value->slot));
    }
    else if(strcmp(name, "graph_list_nodes") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_graph_list_nodes(value->handle,
                                                0,
                                                uwvm_address(value->input),
                                                value->input_size,
                                                uwvm_address(value->output),
                                                value->capacity,
                                                uwvm_address(&value->slot));
    }
    else if(strcmp(name, "graph_list_services") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_graph_list_services(value->handle,
                                                   0,
                                                   uwvm_address(value->input),
                                                   value->input_size,
                                                   uwvm_address(value->output),
                                                   value->capacity,
                                                   uwvm_address(&value->slot));
    }
    else if(strcmp(name, "lifecycle_get_state") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_lifecycle_get_state(value->handle,
                                                   0,
                                                   uwvm_address(value->input),
                                                   value->input_size,
                                                   uwvm_address(value->output),
                                                   value->capacity,
                                                   uwvm_address(&value->slot));
    }
    else if(strcmp(name, "lifecycle_change_state") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_lifecycle_change_state(value->handle,
                                                      0,
                                                      uwvm_address(value->input),
                                                      value->input_size,
                                                      uwvm_address(value->output),
                                                      value->capacity,
                                                      uwvm_address(&value->slot));
    }
    else if(strcmp(name, "time_read_ros") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_time_read_ros(value->handle,
                                             0,
                                             uwvm_address(value->input),
                                             value->input_size,
                                             uwvm_address(value->output),
                                             value->capacity,
                                             uwvm_address(&value->slot));
    }
    else if(strcmp(name, "time_read_system") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_time_read_system(value->handle,
                                                0,
                                                uwvm_address(value->input),
                                                value->input_size,
                                                uwvm_address(value->output),
                                                value->capacity,
                                                uwvm_address(&value->slot));
    }
    else if(strcmp(name, "time_read_steady") == 0)
    {
        value->kind = 1;
        if(!(1))
        {
            return;
        }
        value->code = uwvm_raw_time_read_steady(value->handle,
                                                0,
                                                uwvm_address(value->input),
                                                value->input_size,
                                                uwvm_address(value->output),
                                                value->capacity,
                                                uwvm_address(&value->slot));
    }
    else if(strcmp(name, "log_write") == 0)
    {
        value->kind = 0;
        if(!(value->capacity == 0))
        {
            return;
        }
        value->code = uwvm_raw_log_write(value->handle, 0, uwvm_address(value->input), value->input_size);
    }
}
