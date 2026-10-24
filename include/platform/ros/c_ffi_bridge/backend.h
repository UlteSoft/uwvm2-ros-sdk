/**
 * @file backend.h
 * @brief Complete explicit numeric C FFI facade for the original ROS operation API.
 * @details The selected backend and exact operation inventory are build inputs.
 * Every wrapper forwards the original scalar bits without dereferencing offsets,
 * obtaining authority, retrying effects or replacing another source language.
 */
#ifndef UWVM_ROS_C_FFI_BACKEND_H
#define UWVM_ROS_C_FFI_BACKEND_H
#include <ros/c_ffi_bridge/roswasm_c_ffi.h>
#include <ros/c/roswasm/codec.h>

/** @brief Forward the original abi_version scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_abi_version(void)
{
    return roswasm_c_ffi_invoke(0, 0, 0, 0, 0, 0, 0, 0);
}

/** @brief Forward the original action_advertise scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_action_advertise(uint64_t handle,
                                                     uint32_t memory,
                                                     uint64_t request_offset,
                                                     uint64_t request_length,
                                                     uint64_t response_offset,
                                                     uint64_t capacity,
                                                     uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(1, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original action_cancel_any_goal scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_action_cancel_any_goal(uint64_t handle,
                                                           uint32_t memory,
                                                           uint64_t request_offset,
                                                           uint64_t request_length,
                                                           uint64_t response_offset,
                                                           uint64_t capacity,
                                                           uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(2, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original action_cancel_own_goal scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_action_cancel_own_goal(uint64_t handle,
                                                           uint32_t memory,
                                                           uint64_t request_offset,
                                                           uint64_t request_length,
                                                           uint64_t response_offset,
                                                           uint64_t capacity,
                                                           uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(3, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original action_receive_feedback scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_action_receive_feedback(uint64_t handle,
                                                            uint32_t memory,
                                                            uint64_t request_offset,
                                                            uint64_t request_length,
                                                            uint64_t response_offset,
                                                            uint64_t capacity,
                                                            uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(4, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original action_receive_result scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_action_receive_result(uint64_t handle,
                                                          uint32_t memory,
                                                          uint64_t request_offset,
                                                          uint64_t request_length,
                                                          uint64_t response_offset,
                                                          uint64_t capacity,
                                                          uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(5, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original action_respond scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_action_respond(uint64_t handle,
                                                   uint32_t memory,
                                                   uint64_t request_offset,
                                                   uint64_t request_length,
                                                   uint64_t response_offset,
                                                   uint64_t capacity,
                                                   uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(6, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original action_send_goal scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_action_send_goal(uint64_t handle,
                                                     uint32_t memory,
                                                     uint64_t request_offset,
                                                     uint64_t request_length,
                                                     uint64_t response_offset,
                                                     uint64_t capacity,
                                                     uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(7, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original capability_close scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_capability_close(uint64_t handle)
{
    return roswasm_c_ffi_invoke(8, handle, 0, 0, 0, 0, 0, 0);
}

/** @brief Forward the original capability_open scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_capability_open(uint32_t memory, uint64_t alias_offset, uint64_t alias_length, uint64_t handle_out_offset)
{
    return roswasm_c_ffi_invoke(9, memory, alias_offset, alias_length, handle_out_offset, 0, 0, 0);
}

/** @brief Forward the original capability_revoke scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_capability_revoke(uint64_t handle)
{
    return roswasm_c_ffi_invoke(10, handle, 0, 0, 0, 0, 0, 0);
}

/** @brief Forward the original event_poll scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_event_poll(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(11, handle, memory, output_offset, capacity, length_out_offset, 0, 0);
}

/** @brief Forward the original event_poll_v1 scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_event_poll_v1(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(12, handle, memory, output_offset, capacity, length_out_offset, 0, 0);
}

/** @brief Forward the original event_ready scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_event_ready(uint64_t observer_handle, uint32_t memory, uint64_t output_offset)
{
    return roswasm_c_ffi_invoke(13, observer_handle, memory, output_offset, 0, 0, 0, 0);
}

/** @brief Forward the original event_watch scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_event_watch(uint64_t observer_handle, uint64_t source_handle, uint64_t correlation)
{
    return roswasm_c_ffi_invoke(14, observer_handle, source_handle, correlation, 0, 0, 0, 0);
}

/** @brief Forward the original graph_inspect_action scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_graph_inspect_action(uint64_t handle,
                                                         uint32_t memory,
                                                         uint64_t request_offset,
                                                         uint64_t request_length,
                                                         uint64_t response_offset,
                                                         uint64_t capacity,
                                                         uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(15, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original graph_inspect_node scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_graph_inspect_node(uint64_t handle,
                                                       uint32_t memory,
                                                       uint64_t request_offset,
                                                       uint64_t request_length,
                                                       uint64_t response_offset,
                                                       uint64_t capacity,
                                                       uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(16, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original graph_inspect_service scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_graph_inspect_service(uint64_t handle,
                                                          uint32_t memory,
                                                          uint64_t request_offset,
                                                          uint64_t request_length,
                                                          uint64_t response_offset,
                                                          uint64_t capacity,
                                                          uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(17, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original graph_inspect_topic scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_graph_inspect_topic(uint64_t handle,
                                                        uint32_t memory,
                                                        uint64_t request_offset,
                                                        uint64_t request_length,
                                                        uint64_t response_offset,
                                                        uint64_t capacity,
                                                        uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(18, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original graph_list_nodes scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_graph_list_nodes(uint64_t handle,
                                                     uint32_t memory,
                                                     uint64_t request_offset,
                                                     uint64_t request_length,
                                                     uint64_t response_offset,
                                                     uint64_t capacity,
                                                     uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(19, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original graph_list_services scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_graph_list_services(uint64_t handle,
                                                        uint32_t memory,
                                                        uint64_t request_offset,
                                                        uint64_t request_length,
                                                        uint64_t response_offset,
                                                        uint64_t capacity,
                                                        uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(20, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original graph_list_topics scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_graph_list_topics(uint64_t handle,
                                                      uint32_t memory,
                                                      uint64_t request_offset,
                                                      uint64_t request_length,
                                                      uint64_t response_offset,
                                                      uint64_t capacity,
                                                      uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(21, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original lifecycle_change_state scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_lifecycle_change_state(uint64_t handle,
                                                           uint32_t memory,
                                                           uint64_t request_offset,
                                                           uint64_t request_length,
                                                           uint64_t response_offset,
                                                           uint64_t capacity,
                                                           uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(22, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original lifecycle_get_state scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_lifecycle_get_state(uint64_t handle,
                                                        uint32_t memory,
                                                        uint64_t request_offset,
                                                        uint64_t request_length,
                                                        uint64_t response_offset,
                                                        uint64_t capacity,
                                                        uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(23, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original log_write scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_log_write(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length)
{
    return roswasm_c_ffi_invoke(24, handle, memory, payload_offset, payload_length, 0, 0, 0);
}

/** @brief Forward the original parameter_declare scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_parameter_declare(uint64_t handle,
                                                      uint32_t memory,
                                                      uint64_t request_offset,
                                                      uint64_t request_length,
                                                      uint64_t response_offset,
                                                      uint64_t capacity,
                                                      uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(25, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original parameter_delete scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_parameter_delete(uint64_t handle,
                                                     uint32_t memory,
                                                     uint64_t request_offset,
                                                     uint64_t request_length,
                                                     uint64_t response_offset,
                                                     uint64_t capacity,
                                                     uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(26, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original parameter_describe scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_parameter_describe(uint64_t handle,
                                                       uint32_t memory,
                                                       uint64_t request_offset,
                                                       uint64_t request_length,
                                                       uint64_t response_offset,
                                                       uint64_t capacity,
                                                       uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(27, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original parameter_exists scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_parameter_exists(uint64_t handle,
                                                     uint32_t memory,
                                                     uint64_t request_offset,
                                                     uint64_t request_length,
                                                     uint64_t response_offset,
                                                     uint64_t capacity,
                                                     uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(28, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original parameter_get scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_parameter_get(uint64_t handle,
                                                  uint32_t memory,
                                                  uint64_t request_offset,
                                                  uint64_t request_length,
                                                  uint64_t response_offset,
                                                  uint64_t capacity,
                                                  uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(29, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original parameter_list scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_parameter_list(uint64_t handle,
                                                   uint32_t memory,
                                                   uint64_t request_offset,
                                                   uint64_t request_length,
                                                   uint64_t response_offset,
                                                   uint64_t capacity,
                                                   uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(30, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original parameter_search scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_parameter_search(uint64_t handle,
                                                     uint32_t memory,
                                                     uint64_t request_offset,
                                                     uint64_t request_length,
                                                     uint64_t response_offset,
                                                     uint64_t capacity,
                                                     uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(31, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original parameter_set scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_parameter_set(uint64_t handle,
                                                  uint32_t memory,
                                                  uint64_t request_offset,
                                                  uint64_t request_length,
                                                  uint64_t response_offset,
                                                  uint64_t capacity,
                                                  uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(32, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original parameter_subscribe_events scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_parameter_subscribe_events(uint64_t handle)
{
    return roswasm_c_ffi_invoke(33, handle, 0, 0, 0, 0, 0, 0);
}

/** @brief Forward the original parameter_undeclare scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_parameter_undeclare(uint64_t handle,
                                                        uint32_t memory,
                                                        uint64_t request_offset,
                                                        uint64_t request_length,
                                                        uint64_t response_offset,
                                                        uint64_t capacity,
                                                        uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(34, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original service_advertise scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_service_advertise(uint64_t handle)
{
    return roswasm_c_ffi_invoke(35, handle, 0, 0, 0, 0, 0, 0);
}

/** @brief Forward the original service_call scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_service_call(uint64_t handle,
                                                 uint32_t memory,
                                                 uint64_t request_offset,
                                                 uint64_t request_length,
                                                 uint64_t response_offset,
                                                 uint64_t capacity,
                                                 uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(36, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original service_respond scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_service_respond(uint64_t handle,
                                                    uint32_t memory,
                                                    uint64_t request_offset,
                                                    uint64_t request_length,
                                                    uint64_t response_offset,
                                                    uint64_t capacity,
                                                    uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(37, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original service_submit scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_service_submit(uint64_t source_handle,
                                                   uint64_t observer_handle,
                                                   uint32_t memory,
                                                   uint64_t request_offset,
                                                   uint64_t request_length,
                                                   uint64_t request_id_out_offset)
{
    return roswasm_c_ffi_invoke(38, source_handle, observer_handle, memory, request_offset, request_length, request_id_out_offset, 0);
}

/** @brief Forward the original tf_broadcast scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_tf_broadcast(uint64_t handle,
                                                 uint32_t memory,
                                                 uint64_t request_offset,
                                                 uint64_t request_length,
                                                 uint64_t response_offset,
                                                 uint64_t capacity,
                                                 uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(39, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original tf_lookup scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_tf_lookup(uint64_t handle,
                                              uint32_t memory,
                                              uint64_t request_offset,
                                              uint64_t request_length,
                                              uint64_t response_offset,
                                              uint64_t capacity,
                                              uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(40, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original time_read_ros scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_time_read_ros(uint64_t handle,
                                                  uint32_t memory,
                                                  uint64_t request_offset,
                                                  uint64_t request_length,
                                                  uint64_t response_offset,
                                                  uint64_t capacity,
                                                  uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(41, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original time_read_steady scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_time_read_steady(uint64_t handle,
                                                     uint32_t memory,
                                                     uint64_t request_offset,
                                                     uint64_t request_length,
                                                     uint64_t response_offset,
                                                     uint64_t capacity,
                                                     uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(42, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original time_read_system scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_time_read_system(uint64_t handle,
                                                     uint32_t memory,
                                                     uint64_t request_offset,
                                                     uint64_t request_length,
                                                     uint64_t response_offset,
                                                     uint64_t capacity,
                                                     uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(43, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original time_read_wall scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_time_read_wall(uint64_t handle,
                                                   uint32_t memory,
                                                   uint64_t request_offset,
                                                   uint64_t request_length,
                                                   uint64_t response_offset,
                                                   uint64_t capacity,
                                                   uint64_t length_out_offset)
{
    return roswasm_c_ffi_invoke(44, handle, memory, request_offset, request_length, response_offset, capacity, length_out_offset);
}

/** @brief Forward the original topic_publish scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_topic_publish(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length)
{
    return roswasm_c_ffi_invoke(45, handle, memory, payload_offset, payload_length, 0, 0, 0);
}

/** @brief Forward the original topic_subscribe scalar call once.
 * @details Every parameter retains the ABI signature documented by the complete
 * raw ROS1/ROS2 declarations; offsets are u64, not native pointers.
 * @return Original unsigned errno, except abi_version which returns its version.
 */
ROSWASM_C_INLINE uint32_t uwvm_cffi_topic_subscribe(uint64_t handle)
{
    return roswasm_c_ffi_invoke(46, handle, 0, 0, 0, 0, 0, 0);
}

/** @brief Select the complete immutable FFI dispatch without opening an alias.
 * @return Borrowed process-lifetime table for the explicitly compiled backend.
 */
ROSWASM_C_INLINE roswasmc_backend const* roswasmc_c_ffi_backend(void)
{
#if ROSWASM_C_FFI_BACKEND == 1
    static roswasmc_backend const backend = {
        1,
        uwvm_cffi_abi_version,
        uwvm_cffi_capability_open,
        uwvm_cffi_capability_close,
        uwvm_cffi_capability_revoke,
        uwvm_cffi_topic_publish,
        uwvm_cffi_topic_subscribe,
        uwvm_cffi_event_poll,
        uwvm_cffi_service_advertise,
        0,
        uwvm_cffi_log_write,
        {uwvm_cffi_service_call,
          uwvm_cffi_service_respond, uwvm_cffi_action_send_goal,
          uwvm_cffi_action_cancel_own_goal, uwvm_cffi_action_cancel_any_goal,
          uwvm_cffi_action_receive_feedback, uwvm_cffi_action_receive_result,
          uwvm_cffi_action_advertise, uwvm_cffi_action_respond,
          uwvm_cffi_tf_lookup, uwvm_cffi_tf_broadcast,
          uwvm_cffi_parameter_get, uwvm_cffi_parameter_set,
          uwvm_cffi_parameter_delete, uwvm_cffi_parameter_exists,
          uwvm_cffi_parameter_list, uwvm_cffi_parameter_search,
          0, 0,
          0, uwvm_cffi_graph_inspect_topic,
          uwvm_cffi_graph_inspect_node, uwvm_cffi_graph_inspect_service,
          0, uwvm_cffi_graph_list_topics,
          uwvm_cffi_graph_list_nodes, uwvm_cffi_graph_list_services,
          0, 0,
          uwvm_cffi_time_read_ros, uwvm_cffi_time_read_wall,
          0, 0}
    };
#elif ROSWASM_C_FFI_BACKEND == 2
    static roswasmc_backend const backend = {
        2,
        uwvm_cffi_abi_version,
        uwvm_cffi_capability_open,
        uwvm_cffi_capability_close,
        uwvm_cffi_capability_revoke,
        uwvm_cffi_topic_publish,
        uwvm_cffi_topic_subscribe,
        uwvm_cffi_event_poll,
        uwvm_cffi_service_advertise,
        uwvm_cffi_parameter_subscribe_events,
        uwvm_cffi_log_write,
        {uwvm_cffi_service_call,
          uwvm_cffi_service_respond, uwvm_cffi_action_send_goal,
          uwvm_cffi_action_cancel_own_goal, uwvm_cffi_action_cancel_any_goal,
          uwvm_cffi_action_receive_feedback, uwvm_cffi_action_receive_result,
          uwvm_cffi_action_advertise, uwvm_cffi_action_respond,
          uwvm_cffi_tf_lookup, uwvm_cffi_tf_broadcast,
          uwvm_cffi_parameter_get, uwvm_cffi_parameter_set,
          0, 0,
          uwvm_cffi_parameter_list, 0,
          uwvm_cffi_parameter_describe, uwvm_cffi_parameter_declare,
          uwvm_cffi_parameter_undeclare, uwvm_cffi_graph_inspect_topic,
          uwvm_cffi_graph_inspect_node, uwvm_cffi_graph_inspect_service,
          uwvm_cffi_graph_inspect_action, uwvm_cffi_graph_list_topics,
          uwvm_cffi_graph_list_nodes, uwvm_cffi_graph_list_services,
          uwvm_cffi_lifecycle_get_state, uwvm_cffi_lifecycle_change_state,
          uwvm_cffi_time_read_ros, 0,
          uwvm_cffi_time_read_system, uwvm_cffi_time_read_steady}
    };
#else
# error "Select ROSWASM_C_FFI_BACKEND=1 or 2"
#endif
    return &backend;
}
#endif
