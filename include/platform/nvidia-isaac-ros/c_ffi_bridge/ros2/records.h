/** @file records.h
 * @brief Strong external C ABI for every complete NVIDIA canonical record.
 * @details Records remain caller-owned. No native object layout, allocator, ROS
 * entity, inference process or simulator authority crosses this pure codec ABI.
 */
#ifndef NVIDIA_ISAAC_ROS_C_FFI_RECORDS_H
#define NVIDIA_ISAAC_ROS_C_FFI_RECORDS_H
#include <nvidia-isaac-ros/c/ros2/complete/records.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
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
    uint32_t nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_ros_ffi_std_msgs_msg_Header_valid(roswasmc_bounded_2_std_msgs_msg_Header const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_ros_ffi_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t
        nvidia_isaac_ros_ffi_std_msgs_msg_Header_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_isaac_ros_ffi_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_valid(roswasmc_bounded_2_geometry_msgs_msg_Point const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Point const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_encode(roswasmc_bounded_2_geometry_msgs_msg_Point const* value,
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
    uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Point* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_valid(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
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
    uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_valid(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_encode(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value,
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
    uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Pose* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_valid(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_wire_size(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_encode(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value,
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
    uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_valid(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t
        nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t
        nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value,
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
    uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(
        roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size(
        roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_encode(
        roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value,
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
    uint32_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid(
        roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size(
        roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(
        roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value,
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
    uint32_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray* value);
#ifdef __cplusplus
}
#endif
#endif
