/** @file records.h
 * @brief Exact C FFI access to every complete selected vendor record.
 * @details Caller storage must be a live correctly aligned object. Sizes and alignment are target ABI values.
 * All lengths are bytes. Failed operations preserve output. No native ROS authority is acquired.
 */
#pragma once
#include <franka/c/ros2/franka-ros2-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Return the actual target storage size for builtin_interfaces/msg/Time. @return Bytes. */
    size_t franka_ros2_Ros2Builtin_interfacesMsgTime_size(void);
    /** @brief Return the target's required alignment for builtin_interfaces/msg/Time. @return Bytes. */
    size_t franka_ros2_Ros2Builtin_interfacesMsgTime_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Builtin_interfacesMsgTime_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Builtin_interfacesMsgTime_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/ErrorRecovery_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Goal_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/ErrorRecovery_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Goal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/ErrorRecovery_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Result_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/ErrorRecovery_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Result_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/ErrorRecovery_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Feedback_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/ErrorRecovery_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionErrorRecovery_Feedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/msg/GraspEpsilon. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgGraspEpsilon_size(void);
    /** @brief Return the target's required alignment for franka_msgs/msg/GraspEpsilon. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgGraspEpsilon_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgGraspEpsilon_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgGraspEpsilon_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/Grasp_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionGrasp_Goal_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/Grasp_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionGrasp_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionGrasp_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionGrasp_Goal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/Grasp_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionGrasp_Result_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/Grasp_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionGrasp_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionGrasp_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionGrasp_Result_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/Grasp_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionGrasp_Feedback_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/Grasp_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionGrasp_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionGrasp_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionGrasp_Feedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/Homing_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionHoming_Goal_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/Homing_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionHoming_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionHoming_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionHoming_Goal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/Homing_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionHoming_Result_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/Homing_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionHoming_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionHoming_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionHoming_Result_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/Homing_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionHoming_Feedback_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/Homing_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionHoming_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionHoming_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionHoming_Feedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/Move_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionMove_Goal_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/Move_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionMove_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionMove_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionMove_Goal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/Move_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionMove_Result_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/Move_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionMove_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionMove_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionMove_Result_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/Move_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionMove_Feedback_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/Move_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionMove_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionMove_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionMove_Feedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/PTPMotion_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Goal_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/PTPMotion_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Goal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/msg/TargetStatus. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgTargetStatus_size(void);
    /** @brief Return the target's required alignment for franka_msgs/msg/TargetStatus. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgTargetStatus_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgTargetStatus_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgTargetStatus_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/PTPMotion_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Result_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/PTPMotion_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Result_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/action/PTPMotion_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Feedback_size(void);
    /** @brief Return the target's required alignment for franka_msgs/action/PTPMotion_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsActionPTPMotion_Feedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Vector3. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgVector3_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Vector3. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgVector3_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgVector3_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgVector3_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/msg/CollisionIndicators. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgCollisionIndicators_size(void);
    /** @brief Return the target's required alignment for franka_msgs/msg/CollisionIndicators. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgCollisionIndicators_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgCollisionIndicators_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgCollisionIndicators_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/msg/Elbow. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgElbow_size(void);
    /** @brief Return the target's required alignment for franka_msgs/msg/Elbow. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgElbow_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgElbow_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgElbow_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/msg/Errors. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgErrors_size(void);
    /** @brief Return the target's required alignment for franka_msgs/msg/Errors. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgErrors_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgErrors_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgErrors_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for std_msgs/msg/Header. @return Bytes. */
    size_t franka_ros2_Ros2Std_msgsMsgHeader_size(void);
    /** @brief Return the target's required alignment for std_msgs/msg/Header. @return Bytes. */
    size_t franka_ros2_Ros2Std_msgsMsgHeader_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Std_msgsMsgHeader_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Std_msgsMsgHeader_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for sensor_msgs/msg/JointState. @return Bytes. */
    size_t franka_ros2_Ros2Sensor_msgsMsgJointState_size(void);
    /** @brief Return the target's required alignment for sensor_msgs/msg/JointState. @return Bytes. */
    size_t franka_ros2_Ros2Sensor_msgsMsgJointState_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Sensor_msgsMsgJointState_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Sensor_msgsMsgJointState_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Wrench. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgWrench_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Wrench. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgWrench_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgWrench_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgWrench_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/WrenchStamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgWrenchStamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/WrenchStamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgWrenchStamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgWrenchStamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgWrenchStamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Inertia. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgInertia_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Inertia. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgInertia_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgInertia_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgInertia_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/InertiaStamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgInertiaStamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/InertiaStamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgInertiaStamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgInertiaStamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgInertiaStamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Point. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgPoint_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Point. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgPoint_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgPoint_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgPoint_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Quaternion. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgQuaternion_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Quaternion. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgQuaternion_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgQuaternion_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgQuaternion_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Pose. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgPose_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Pose. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgPose_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgPose_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgPose_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/PoseStamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgPoseStamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/PoseStamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgPoseStamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgPoseStamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgPoseStamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Twist. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgTwist_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Twist. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgTwist_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgTwist_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgTwist_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/TwistStamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgTwistStamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/TwistStamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgTwistStamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgTwistStamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgTwistStamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Accel. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgAccel_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Accel. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgAccel_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgAccel_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgAccel_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/AccelStamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgAccelStamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/AccelStamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgAccelStamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgAccelStamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgAccelStamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Vector3Stamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgVector3Stamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Vector3Stamped. @return Bytes. */
    size_t franka_ros2_Ros2Geometry_msgsMsgVector3Stamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgVector3Stamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Geometry_msgsMsgVector3Stamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/msg/FrankaRobotState. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgFrankaRobotState_size(void);
    /** @brief Return the target's required alignment for franka_msgs/msg/FrankaRobotState. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsMsgFrankaRobotState_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgFrankaRobotState_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsMsgFrankaRobotState_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetCartesianStiffness_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Request_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetCartesianStiffness_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetCartesianStiffness_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Response_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetCartesianStiffness_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetForceTorqueCollisionBehavior_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetForceTorqueCollisionBehavior_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_encode(void const* value,
                                                                                          size_t value_bytes,
                                                                                          void* wire,
                                                                                          size_t capacity,
                                                                                          size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetForceTorqueCollisionBehavior_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetForceTorqueCollisionBehavior_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_encode(void const* value,
                                                                                           size_t value_bytes,
                                                                                           void* wire,
                                                                                           size_t capacity,
                                                                                           size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetFullCollisionBehavior_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetFullCollisionBehavior_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_encode(void const* value,
                                                                                   size_t value_bytes,
                                                                                   void* wire,
                                                                                   size_t capacity,
                                                                                   size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetFullCollisionBehavior_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetFullCollisionBehavior_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_encode(void const* value,
                                                                                    size_t value_bytes,
                                                                                    void* wire,
                                                                                    size_t capacity,
                                                                                    size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetJointStiffness_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Request_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetJointStiffness_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetJointStiffness_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Response_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetJointStiffness_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetLoad_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetLoad_Request_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetLoad_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetLoad_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetLoad_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetLoad_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetLoad_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetLoad_Response_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetLoad_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetLoad_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetLoad_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetLoad_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetStiffnessFrame_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Request_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetStiffnessFrame_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetStiffnessFrame_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Response_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetStiffnessFrame_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetTCPFrame_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Request_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetTCPFrame_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/srv/SetTCPFrame_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Response_size(void);
    /** @brief Return the target's required alignment for franka_msgs/srv/SetTCPFrame_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/action/MoveAbsolute_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Goal_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/action/MoveAbsolute_Goal. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Goal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/action/MoveAbsolute_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Result_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/action/MoveAbsolute_Result. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Result_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/action/MoveAbsolute_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/action/MoveAbsolute_Feedback. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/msg/UserLimits. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsMsgUserLimits_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/msg/UserLimits. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsMsgUserLimits_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsMsgUserLimits_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsMsgUserLimits_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/msg/SpineParameters. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsMsgSpineParameters_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/msg/SpineParameters. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsMsgSpineParameters_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsMsgSpineParameters_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsMsgSpineParameters_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/msg/SpinePosition. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsMsgSpinePosition_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/msg/SpinePosition. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsMsgSpinePosition_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsMsgSpinePosition_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsMsgSpinePosition_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/msg/SpineState. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsMsgSpineState_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/msg/SpineState. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsMsgSpineState_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsMsgSpineState_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsMsgSpineState_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/FaultReset_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Request_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/FaultReset_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/FaultReset_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Response_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/FaultReset_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/GetParameters_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Request_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/GetParameters_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/GetParameters_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Response_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/GetParameters_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/GetPosition_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Request_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/GetPosition_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/GetPosition_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Response_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/GetPosition_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/GetSpineState_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Request_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/GetSpineState_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/GetSpineState_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Response_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/GetSpineState_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/Halt_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvHalt_Request_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/Halt_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvHalt_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvHalt_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvHalt_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/Halt_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvHalt_Response_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/Halt_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvHalt_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvHalt_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvHalt_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/SwitchOff_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Request_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/SwitchOff_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/SwitchOff_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Response_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/SwitchOff_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/SwitchOn_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Request_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/SwitchOn_Request. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Request_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_spine_msgs/srv/SwitchOn_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Response_size(void);
    /** @brief Return the target's required alignment for franka_spine_msgs/srv/SwitchOn_Response. @return Bytes. */
    size_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Response_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
#ifdef __cplusplus
}
#endif
