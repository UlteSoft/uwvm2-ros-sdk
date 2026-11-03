/**
 * @file ros2_transport.c
 * @brief Genuine Wasm imports and ABI-preserving C forwarding functions.
 * @details Host-native compilation is rejected. Missing VM imports fail linking
 * or instantiation; there is no native ROS fallback or synthesized response.
 */
#include <platform/ros/transplate/v0_1_0/transport.h>
#if !defined(__wasm__)
#error "The ROS transplate transport must compile to Wasm inside uwvm2-ros"
#endif
_Static_assert(sizeof(uint32_t) == 4, "ROS i32 width");
_Static_assert(sizeof(uint64_t) == 8, "ROS i64 width");
_Static_assert(sizeof(uintptr_t) == 4 || sizeof(uintptr_t) == 8, "Wasm address width");

__attribute__((import_module("uwvm_ros2_v1"), import_name("abi_version")))
extern uint32_t uwvm_import_ros2_abi_version(void);

uint32_t uwvm_transplate_v0_1_0_ros2_abi_version(void)
{
    return uwvm_import_ros2_abi_version();
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_open")))
extern uint32_t uwvm_import_ros2_capability_open(uint32_t memory, uint64_t alias_offset, uint64_t alias_length, uint64_t handle_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_capability_open(uint32_t memory, uint64_t alias_offset, uint64_t alias_length, uint64_t handle_out_offset)
{
    return uwvm_import_ros2_capability_open(memory, alias_offset, alias_length, handle_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_close")))
extern uint32_t uwvm_import_ros2_capability_close(uint64_t handle);

uint32_t uwvm_transplate_v0_1_0_ros2_capability_close(uint64_t handle)
{
    return uwvm_import_ros2_capability_close(handle);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_revoke")))
extern uint32_t uwvm_import_ros2_capability_revoke(uint64_t handle);

uint32_t uwvm_transplate_v0_1_0_ros2_capability_revoke(uint64_t handle)
{
    return uwvm_import_ros2_capability_revoke(handle);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("topic_publish")))
extern uint32_t uwvm_import_ros2_topic_publish(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length);

uint32_t uwvm_transplate_v0_1_0_ros2_topic_publish(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length)
{
    return uwvm_import_ros2_topic_publish(handle, memory, payload_offset, payload_length);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("topic_subscribe")))
extern uint32_t uwvm_import_ros2_topic_subscribe(uint64_t handle);

uint32_t uwvm_transplate_v0_1_0_ros2_topic_subscribe(uint64_t handle)
{
    return uwvm_import_ros2_topic_subscribe(handle);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("event_poll")))
extern uint32_t uwvm_import_ros2_event_poll(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_event_poll(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_event_poll(handle, memory, output_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("event_watch")))
extern uint32_t uwvm_import_ros2_event_watch(uint64_t observer_handle, uint64_t source_handle, uint64_t correlation);

uint32_t uwvm_transplate_v0_1_0_ros2_event_watch(uint64_t observer_handle, uint64_t source_handle, uint64_t correlation)
{
    return uwvm_import_ros2_event_watch(observer_handle, source_handle, correlation);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("event_poll_v1")))
extern uint32_t uwvm_import_ros2_event_poll_v1(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_event_poll_v1(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_event_poll_v1(handle, memory, output_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("event_ready")))
extern uint32_t uwvm_import_ros2_event_ready(uint64_t observer_handle, uint32_t memory, uint64_t output_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_event_ready(uint64_t observer_handle, uint32_t memory, uint64_t output_offset)
{
    return uwvm_import_ros2_event_ready(observer_handle, memory, output_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("service_submit")))
extern uint32_t uwvm_import_ros2_service_submit(uint64_t source_handle, uint64_t observer_handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t request_id_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_service_submit(uint64_t source_handle, uint64_t observer_handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t request_id_out_offset)
{
    return uwvm_import_ros2_service_submit(source_handle, observer_handle, memory, request_offset, request_length, request_id_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("service_call")))
extern uint32_t uwvm_import_ros2_service_call(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_service_call(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_service_call(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("service_advertise")))
extern uint32_t uwvm_import_ros2_service_advertise(uint64_t handle);

uint32_t uwvm_transplate_v0_1_0_ros2_service_advertise(uint64_t handle)
{
    return uwvm_import_ros2_service_advertise(handle);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("service_respond")))
extern uint32_t uwvm_import_ros2_service_respond(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_service_respond(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_service_respond(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("action_send_goal")))
extern uint32_t uwvm_import_ros2_action_send_goal(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_action_send_goal(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_action_send_goal(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("action_cancel_own_goal")))
extern uint32_t uwvm_import_ros2_action_cancel_own_goal(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_action_cancel_own_goal(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_action_cancel_own_goal(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("action_cancel_any_goal")))
extern uint32_t uwvm_import_ros2_action_cancel_any_goal(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_action_cancel_any_goal(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_action_cancel_any_goal(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("action_receive_feedback")))
extern uint32_t uwvm_import_ros2_action_receive_feedback(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_action_receive_feedback(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_action_receive_feedback(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("action_receive_result")))
extern uint32_t uwvm_import_ros2_action_receive_result(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_action_receive_result(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_action_receive_result(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("action_advertise")))
extern uint32_t uwvm_import_ros2_action_advertise(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_action_advertise(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_action_advertise(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("action_respond")))
extern uint32_t uwvm_import_ros2_action_respond(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_action_respond(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_action_respond(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("tf_lookup")))
extern uint32_t uwvm_import_ros2_tf_lookup(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_tf_lookup(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_tf_lookup(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("tf_broadcast")))
extern uint32_t uwvm_import_ros2_tf_broadcast(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_tf_broadcast(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_tf_broadcast(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_get")))
extern uint32_t uwvm_import_ros2_parameter_get(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_parameter_get(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_parameter_get(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_set")))
extern uint32_t uwvm_import_ros2_parameter_set(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_parameter_set(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_parameter_set(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_list")))
extern uint32_t uwvm_import_ros2_parameter_list(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_parameter_list(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_parameter_list(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_describe")))
extern uint32_t uwvm_import_ros2_parameter_describe(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_parameter_describe(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_parameter_describe(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_declare")))
extern uint32_t uwvm_import_ros2_parameter_declare(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_parameter_declare(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_parameter_declare(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_undeclare")))
extern uint32_t uwvm_import_ros2_parameter_undeclare(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_parameter_undeclare(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_parameter_undeclare(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_topic")))
extern uint32_t uwvm_import_ros2_graph_inspect_topic(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_graph_inspect_topic(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_graph_inspect_topic(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_node")))
extern uint32_t uwvm_import_ros2_graph_inspect_node(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_graph_inspect_node(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_graph_inspect_node(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_service")))
extern uint32_t uwvm_import_ros2_graph_inspect_service(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_graph_inspect_service(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_graph_inspect_service(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_action")))
extern uint32_t uwvm_import_ros2_graph_inspect_action(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_graph_inspect_action(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_graph_inspect_action(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_subscribe_events")))
extern uint32_t uwvm_import_ros2_parameter_subscribe_events(uint64_t handle);

uint32_t uwvm_transplate_v0_1_0_ros2_parameter_subscribe_events(uint64_t handle)
{
    return uwvm_import_ros2_parameter_subscribe_events(handle);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_topics")))
extern uint32_t uwvm_import_ros2_graph_list_topics(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_graph_list_topics(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_graph_list_topics(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_nodes")))
extern uint32_t uwvm_import_ros2_graph_list_nodes(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_graph_list_nodes(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_graph_list_nodes(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_services")))
extern uint32_t uwvm_import_ros2_graph_list_services(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_graph_list_services(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_graph_list_services(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("lifecycle_get_state")))
extern uint32_t uwvm_import_ros2_lifecycle_get_state(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_lifecycle_get_state(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_lifecycle_get_state(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("lifecycle_change_state")))
extern uint32_t uwvm_import_ros2_lifecycle_change_state(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_lifecycle_change_state(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_lifecycle_change_state(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_ros")))
extern uint32_t uwvm_import_ros2_time_read_ros(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_time_read_ros(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_time_read_ros(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_system")))
extern uint32_t uwvm_import_ros2_time_read_system(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_time_read_system(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_time_read_system(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_steady")))
extern uint32_t uwvm_import_ros2_time_read_steady(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset);

uint32_t uwvm_transplate_v0_1_0_ros2_time_read_steady(uint64_t handle, uint32_t memory, uint64_t request_offset, uint64_t request_length, uint64_t response_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return uwvm_import_ros2_time_read_steady(handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

__attribute__((import_module("uwvm_ros2_v1"), import_name("log_write")))
extern uint32_t uwvm_import_ros2_log_write(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length);

uint32_t uwvm_transplate_v0_1_0_ros2_log_write(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length)
{
    return uwvm_import_ros2_log_write(handle, memory, payload_offset, payload_length);
}
