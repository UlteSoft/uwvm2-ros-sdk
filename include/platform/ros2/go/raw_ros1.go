//go:build wasip1 && wasm && ros1 && !ros2

// @file raw_ros1.go
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

// Code generated from sdk/share/platform/ros/abi-v1.json. DO NOT EDIT.
// Imports grant no authority. Every call is synchronous in Guest memory.
package roswasm

// AbiVersion: Return ABI version 1. This does not open a capability or authorize a resource.
//
//go:wasmimport uwvm_ros1_v1 abi_version
func AbiVersion() uint32

// CapabilityOpen: Open one explicitly granted alias in the caller Instance and selected backend. Write an opaque eight-byte little-endian handle
// on success.
//
//go:wasmimport uwvm_ros1_v1 capability_open
func CapabilityOpen(memory uint32, alias_offset uint64, alias_length uint64, handle_out_offset uint64) uint32

// CapabilityClose: Retire this handle generation. The handle may already be retired if later Gateway cleanup returns an error.
//
//go:wasmimport uwvm_ros1_v1 capability_close
func CapabilityClose(handle uint64) uint32

// CapabilityRevoke: Revoke the alias for this Instance/backend, invalidating all its open sibling handles. Reopening cannot restore the revoked
// grant.
//
//go:wasmimport uwvm_ros1_v1 capability_revoke
func CapabilityRevoke(handle uint64) uint32

// TopicPublish: Publish one canonical generated message through a separately granted publisher alias.
//
//go:wasmimport uwvm_ros1_v1 topic_publish
func TopicPublish(handle uint64, memory uint32, payload_offset uint64, payload_length uint64) uint32

// TopicSubscribe: Activate a separately granted subscription queue. Receive messages through event_poll on the guest execution thread.
//
//go:wasmimport uwvm_ros1_v1 topic_subscribe
func TopicSubscribe(handle uint64) uint32

// EventPoll: Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means no event; no native callback enters Wasm.
//
//go:wasmimport uwvm_ros1_v1 event_poll
func EventPoll(handle uint64, memory uint32, output_offset uint64, capacity uint64, length_out_offset uint64) uint32

// EventWatch: Bind separately granted event.observe and source owners. Correlation is nonzero only when an owned outgoing Action data kind is
// selected; metadata-only watches use zero and activate/consume no native payload. No aliases or rights are created.
//
//go:wasmimport uwvm_ros1_v1 event_watch
func EventWatch(observer_handle uint64, source_handle uint64, correlation uint64) uint32

// EventPollV1: Read one complete versioned64-byte-header event. Error90 writes required size and retains the event; error11 is idle. No automatic
// replay.
//
//go:wasmimport uwvm_ros1_v1 event_poll_v1
func EventPollV1(handle uint64, memory uint32, output_offset uint64, capacity uint64, length_out_offset uint64) uint32

// EventReady: Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes. A readiness snapshot is not a reservation.
//
//go:wasmimport uwvm_ros1_v1 event_ready
func EventReady(observer_handle uint64, memory uint32, output_offset uint64) uint32

// ServiceSubmit: Admit one bounded asynchronous service request. A successful acknowledgement writes requestID; completion requires explicit
// service-response and resource-error observation. Never replay a timeout.
//
//go:wasmimport uwvm_ros1_v1 service_submit
func ServiceSubmit(source_handle uint64, observer_handle uint64, memory uint32, request_offset uint64, request_length uint64, request_id_out_offset uint64) uint32

// ServiceCall: Call the explicitly selected service using its canonical request/response type and configured deadline. Do not automatically replay
// a timed-out call.
//
//go:wasmimport uwvm_ros1_v1 service_call
func ServiceCall(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ServiceAdvertise: Activate the explicitly granted service server. Poll owned request IDs through event_poll.
//
//go:wasmimport uwvm_ros1_v1 service_advertise
func ServiceAdvertise(handle uint64) uint32

// ServiceRespond: Respond to an owned live request using a separate response grant and u64 request-ID-prefixed canonical response.
//
//go:wasmimport uwvm_ros1_v1 service_respond
func ServiceRespond(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ActionSendGoal: Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin Fibonacci uses one canonical i32 order.
// Generated bounded Actions require their registered goal codec; all bounds remain explicit.
//
//go:wasmimport uwvm_ros1_v1 action_send_goal
func ActionSendGoal(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ActionCancelOwnGoal: Request cancellation of one owned Goal using its u64 ID and a separately authorized cancel capability.
//
//go:wasmimport uwvm_ros1_v1 action_cancel_own_goal
func ActionCancelOwnGoal(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ActionCancelAnyGoal: Use the separately granted any-cancel operation. Goal ID zero is valid only for this independently authorized operation.
//
//go:wasmimport uwvm_ros1_v1 action_cancel_any_goal
func ActionCancelAnyGoal(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ActionReceiveFeedback: Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin Fibonacci appends count32/int32
// values; an empty queue returns 11.
//
//go:wasmimport uwvm_ros1_v1 action_receive_feedback
func ActionReceiveFeedback(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ActionReceiveResult: Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci appends count32/int32 values.
// Successful terminal consumption retires ownership.
//
//go:wasmimport uwvm_ros1_v1 action_receive_result
func ActionReceiveResult(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ActionAdvertise: Activate the explicitly granted Action server with an empty command. Poll ID8 plus the selected trusted goal codec; builtin
// Fibonacci uses i32 order. Responses require another grant.
//
//go:wasmimport uwvm_ros1_v1 action_advertise
func ActionAdvertise(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ActionRespond: Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci appends count32/int32 values. Advertiser and
// responder require the same explicit ROS2 QoS contract.
//
//go:wasmimport uwvm_ros1_v1 action_respond
func ActionRespond(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// TfLookup: Request the separately configured source/target frame pair at u64 nanoseconds; zero selects the latest admitted transform.
//
//go:wasmimport uwvm_ros1_v1 tf_lookup
func TfLookup(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// TfBroadcast: Broadcast one canonical TransformStamped for the separately configured frame pair. Do not normalize its quaternion implicitly.
//
//go:wasmimport uwvm_ros1_v1 tf_broadcast
func TfBroadcast(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ParameterGet: Read the value fixed by the capability type. An empty request does not select a different node, name or value kind.
//
//go:wasmimport uwvm_ros1_v1 parameter_get
func ParameterGet(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ParameterSet: Set a canonical value of the explicitly granted parameter type. Numeric and element bounds remain enforced by the host.
//
//go:wasmimport uwvm_ros1_v1 parameter_set
func ParameterSet(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ParameterDelete: Delete the explicitly granted ROS1 parameter using an empty request; no implicit parent-name authority is added.
//
//go:wasmimport uwvm_ros1_v1 parameter_delete
func ParameterDelete(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ParameterExists: Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool response.
//
//go:wasmimport uwvm_ros1_v1 parameter_exists
func ParameterExists(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ParameterList: List the separately authorized parameter scope; decode the bounded canonical String result.
//
//go:wasmimport uwvm_ros1_v1 parameter_list
func ParameterList(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// ParameterSearch: Search the explicitly granted ROS1 resource with an empty request. Parent namespaces are included only with
// search-parent-namespaces=true, for the same final key and within allowed-name-prefix before every native query.
//
//go:wasmimport uwvm_ros1_v1 parameter_search
func ParameterSearch(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// GraphInspectTopic: Inspect the configured topic filter with an empty request and decode sorted canonical String rows.
//
//go:wasmimport uwvm_ros1_v1 graph_inspect_topic
func GraphInspectTopic(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// GraphInspectNode: Inspect the configured node filter with an empty request and decode sorted canonical String rows.
//
//go:wasmimport uwvm_ros1_v1 graph_inspect_node
func GraphInspectNode(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// GraphInspectService: Inspect the configured service filter with an empty request and decode sorted canonical String rows.
//
//go:wasmimport uwvm_ros1_v1 graph_inspect_service
func GraphInspectService(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// GraphListTopics: List topics within the explicit exact/prefix graph filter; decode sorted canonical String rows.
//
//go:wasmimport uwvm_ros1_v1 graph_list_topics
func GraphListTopics(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// GraphListNodes: List nodes within the explicit graph filter; this is not unrestricted discovery authority.
//
//go:wasmimport uwvm_ros1_v1 graph_list_nodes
func GraphListNodes(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// GraphListServices: List services within the explicit graph filter; decode sorted canonical String rows.
//
//go:wasmimport uwvm_ros1_v1 graph_list_services
func GraphListServices(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// TimeReadRos: Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
//
//go:wasmimport uwvm_ros1_v1 time_read_ros
func TimeReadRos(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// TimeReadWall: Read the independently authorized ROS1 wall clock; another time grant does not imply this one.
//
//go:wasmimport uwvm_ros1_v1 time_read_wall
func TimeReadWall(handle uint64, memory uint32, request_offset uint64, request_length uint64, response_offset uint64, capacity uint64, length_out_offset uint64) uint32

// LogWrite: Write one canonical String to the separately granted ROS logger. This does not open a file or socket.
//
//go:wasmimport uwvm_ros1_v1 log_write
func LogWrite(handle uint64, memory uint32, payload_offset uint64, payload_length uint64) uint32
