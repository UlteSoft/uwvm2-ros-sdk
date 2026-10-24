/** @file records.h
 * @brief Strong external C ABI for every complete NVIDIA canonical record.
 * @details Records remain caller-owned. No native object layout, allocator, ROS
 * entity, inference process or simulator authority crosses this pure codec ABI.
 */
#ifndef NVIDIA_ISAAC_SIM_C_FFI_RECORDS_H
#define NVIDIA_ISAAC_SIM_C_FFI_RECORDS_H
#include <nvidia-isaac-sim/c/ros2/complete/records.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_sim_ffi_std_msgs_msg_Header_valid(roswasmc_bounded_2_std_msgs_msg_Header const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_sim_ffi_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t
        nvidia_isaac_sim_ffi_std_msgs_msg_Header_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_isaac_sim_ffi_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_valid(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_JointState* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_valid(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_wire_size(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_encode(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_valid(
        roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_wire_size(
        roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_encode(
        roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request const* value,
        void* output,
        size_t capacity,
        size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t
        nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_valid(
        roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_wire_size(
        roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_encode(
        roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t
        nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response* value);
#ifdef __cplusplus
}
#endif
#endif
