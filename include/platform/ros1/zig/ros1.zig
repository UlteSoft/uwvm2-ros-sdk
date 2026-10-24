// @file ros1.zig
// @brief Provide the selected typed SDK binding and ownership boundary for ros1.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

//! Exact numeric ROS ABI v1. Generated; declarations grant no rights.
//! Offsets, lengths and handles retain all 64 bits on wasm32.

/// Return ABI version 1. This does not open a capability or authorize a resource.
pub extern "uwvm_ros1_v1" fn abi_version() u32;

/// Open one explicitly granted alias in the caller Instance and selected backend. Write an opaque eight-byte little-endian handle on success.
pub extern "uwvm_ros1_v1" fn capability_open(@"memory": u32, @"alias_offset": u64, @"alias_length": u64, @"handle_out_offset": u64) u32;

/// Retire this handle generation. The handle may already be retired if later Gateway cleanup returns an error.
pub extern "uwvm_ros1_v1" fn capability_close(@"handle": u64) u32;

/// Revoke the alias for this Instance/backend, invalidating all its open sibling handles. Reopening cannot restore the revoked grant.
pub extern "uwvm_ros1_v1" fn capability_revoke(@"handle": u64) u32;

/// Publish one canonical generated message through a separately granted publisher alias.
pub extern "uwvm_ros1_v1" fn topic_publish(@"handle": u64, @"memory": u32, @"payload_offset": u64, @"payload_length": u64) u32;

/// Activate a separately granted subscription queue. Receive messages through event_poll on the guest execution thread.
pub extern "uwvm_ros1_v1" fn topic_subscribe(@"handle": u64) u32;

/// Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means no event; no native callback enters Wasm.
pub extern "uwvm_ros1_v1" fn event_poll(@"handle": u64, @"memory": u32, @"output_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Bind separately granted event.observe and source owners. Correlation is nonzero only when an owned outgoing Action data kind is selected; metadata-only
/// watches use zero and activate/consume no native payload. No aliases or rights are created.
pub extern "uwvm_ros1_v1" fn event_watch(@"observer_handle": u64, @"source_handle": u64, @"correlation": u64) u32;

/// Read one complete versioned64-byte-header event. Error90 writes required size and retains the event; error11 is idle. No automatic replay.
pub extern "uwvm_ros1_v1" fn event_poll_v1(@"handle": u64, @"memory": u32, @"output_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes. A readiness snapshot is not a reservation.
pub extern "uwvm_ros1_v1" fn event_ready(@"observer_handle": u64, @"memory": u32, @"output_offset": u64) u32;

/// Admit one bounded asynchronous service request. A successful acknowledgement writes requestID; completion requires explicit service-response and
/// resource-error observation. Never replay a timeout.
pub extern "uwvm_ros1_v1" fn service_submit(@"source_handle": u64, @"observer_handle": u64, @"memory": u32, @"request_offset": u64,
     @"request_length": u64, @"request_id_out_offset": u64) u32;

/// Call the explicitly selected service using its canonical request/response type and configured deadline. Do not automatically replay a timed-out call.
pub extern "uwvm_ros1_v1" fn service_call(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Activate the explicitly granted service server. Poll owned request IDs through event_poll.
pub extern "uwvm_ros1_v1" fn service_advertise(@"handle": u64) u32;

/// Respond to an owned live request using a separate response grant and u64 request-ID-prefixed canonical response.
pub extern "uwvm_ros1_v1" fn service_respond(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin Fibonacci uses one canonical i32 order. Generated bounded Actions
/// require their registered goal codec; all bounds remain explicit.
pub extern "uwvm_ros1_v1" fn action_send_goal(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Request cancellation of one owned Goal using its u64 ID and a separately authorized cancel capability.
pub extern "uwvm_ros1_v1" fn action_cancel_own_goal(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Use the separately granted any-cancel operation. Goal ID zero is valid only for this independently authorized operation.
pub extern "uwvm_ros1_v1" fn action_cancel_any_goal(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin Fibonacci appends count32/int32 values; an empty queue returns 11.
pub extern "uwvm_ros1_v1" fn action_receive_feedback(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci appends count32/int32 values. Successful terminal consumption
/// retires ownership.
pub extern "uwvm_ros1_v1" fn action_receive_result(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Activate the explicitly granted Action server with an empty command. Poll ID8 plus the selected trusted goal codec; builtin Fibonacci uses i32 order.
/// Responses require another grant.
pub extern "uwvm_ros1_v1" fn action_advertise(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci appends count32/int32 values. Advertiser and responder require the
/// same explicit ROS2 QoS contract.
pub extern "uwvm_ros1_v1" fn action_respond(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Request the separately configured source/target frame pair at u64 nanoseconds; zero selects the latest admitted transform.
pub extern "uwvm_ros1_v1" fn tf_lookup(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Broadcast one canonical TransformStamped for the separately configured frame pair. Do not normalize its quaternion implicitly.
pub extern "uwvm_ros1_v1" fn tf_broadcast(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Read the value fixed by the capability type. An empty request does not select a different node, name or value kind.
pub extern "uwvm_ros1_v1" fn parameter_get(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Set a canonical value of the explicitly granted parameter type. Numeric and element bounds remain enforced by the host.
pub extern "uwvm_ros1_v1" fn parameter_set(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Delete the explicitly granted ROS1 parameter using an empty request; no implicit parent-name authority is added.
pub extern "uwvm_ros1_v1" fn parameter_delete(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool response.
pub extern "uwvm_ros1_v1" fn parameter_exists(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// List the separately authorized parameter scope; decode the bounded canonical String result.
pub extern "uwvm_ros1_v1" fn parameter_list(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Search the explicitly granted ROS1 resource with an empty request. Parent namespaces are included only with search-parent-namespaces=true, for the same
/// final key and within allowed-name-prefix before every native query.
pub extern "uwvm_ros1_v1" fn parameter_search(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Inspect the configured topic filter with an empty request and decode sorted canonical String rows.
pub extern "uwvm_ros1_v1" fn graph_inspect_topic(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Inspect the configured node filter with an empty request and decode sorted canonical String rows.
pub extern "uwvm_ros1_v1" fn graph_inspect_node(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Inspect the configured service filter with an empty request and decode sorted canonical String rows.
pub extern "uwvm_ros1_v1" fn graph_inspect_service(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// List topics within the explicit exact/prefix graph filter; decode sorted canonical String rows.
pub extern "uwvm_ros1_v1" fn graph_list_topics(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// List nodes within the explicit graph filter; this is not unrestricted discovery authority.
pub extern "uwvm_ros1_v1" fn graph_list_nodes(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// List services within the explicit graph filter; decode sorted canonical String rows.
pub extern "uwvm_ros1_v1" fn graph_list_services(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
pub extern "uwvm_ros1_v1" fn time_read_ros(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Read the independently authorized ROS1 wall clock; another time grant does not imply this one.
pub extern "uwvm_ros1_v1" fn time_read_wall(@"handle": u64, @"memory": u32, @"request_offset": u64, @"request_length": u64,
     @"response_offset": u64, @"capacity": u64, @"length_out_offset": u64) u32;

/// Write one canonical String to the separately granted ROS logger. This does not open a file or socket.
pub extern "uwvm_ros1_v1" fn log_write(@"handle": u64, @"memory": u32, @"payload_offset": u64, @"payload_length": u64) u32;
