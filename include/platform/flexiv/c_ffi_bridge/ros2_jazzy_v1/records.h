/** @file records.h
 * @brief Exact C FFI access to every complete selected vendor record.
 * @details Caller storage must be a live correctly aligned object. Sizes and alignment are target ABI values.
 * All lengths are bytes. Failed operations preserve output. No native ROS authority is acquired.
 */
#pragma once
#include <flexiv/c/ros2/flexiv-ros2-jazzy-v1-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Return the actual target storage size for builtin_interfaces/msg/Time. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Builtin_interfacesMsgTime_size(void);
    /** @brief Return the target's required alignment for builtin_interfaces/msg/Time. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Builtin_interfacesMsgTime_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Builtin_interfacesMsgTime_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Builtin_interfacesMsgTime_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/ErrorRecovery_Goal. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Goal_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/ErrorRecovery_Goal. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Goal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/ErrorRecovery_Result. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Result_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/ErrorRecovery_Result. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Result_encode(void const* value,
                                                                                   size_t value_bytes,
                                                                                   void* wire,
                                                                                   size_t capacity,
                                                                                   size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/ErrorRecovery_Feedback. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Feedback_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/ErrorRecovery_Feedback. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionErrorRecovery_Feedback_encode(void const* value,
                                                                                     size_t value_bytes,
                                                                                     void* wire,
                                                                                     size_t capacity,
                                                                                     size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Grasp_Goal. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Goal_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Grasp_Goal. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Goal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Grasp_Result. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Result_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Grasp_Result. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Result_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Grasp_Feedback. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Feedback_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Grasp_Feedback. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionGrasp_Feedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Move_Goal. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Goal_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Move_Goal. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Goal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Move_Result. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Result_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Move_Result. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Result_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Move_Feedback. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Feedback_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Move_Feedback. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsActionMove_Feedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for std_msgs/msg/Header. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Std_msgsMsgHeader_size(void);
    /** @brief Return the target's required alignment for std_msgs/msg/Header. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Std_msgsMsgHeader_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Std_msgsMsgHeader_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Std_msgsMsgHeader_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Point. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPoint_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Point. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPoint_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPoint_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPoint_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Quaternion. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgQuaternion_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Quaternion. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgQuaternion_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgQuaternion_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgQuaternion_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Pose. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPose_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Pose. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPose_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPose_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPose_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Vector3. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgVector3_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Vector3. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgVector3_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgVector3_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgVector3_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Wrench. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgWrench_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Wrench. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgWrench_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgWrench_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgWrench_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Twist. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgTwist_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Twist. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgTwist_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgTwist_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgTwist_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/CartesianMotionForce. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgCartesianMotionForce_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/CartesianMotionForce. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgCartesianMotionForce_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgCartesianMotionForce_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgCartesianMotionForce_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/Digital. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgDigital_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/Digital. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgDigital_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgDigital_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgDigital_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/GPIOStates. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgGPIOStates_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/GPIOStates. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgGPIOStates_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgGPIOStates_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgGPIOStates_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/JointImpedance. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointImpedance_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/JointImpedance. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointImpedance_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointImpedance_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointImpedance_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/JointInertiaScale. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointInertiaScale_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/JointInertiaScale. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointInertiaScale_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointInertiaScale_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointInertiaScale_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/JointPosVel. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointPosVel_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/JointPosVel. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointPosVel_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointPosVel_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgJointPosVel_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/MaxContactTorque. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgMaxContactTorque_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/MaxContactTorque. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgMaxContactTorque_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgMaxContactTorque_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgMaxContactTorque_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/Mode. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgMode_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/Mode. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgMode_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgMode_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgMode_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/RobotEvent. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRobotEvent_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/RobotEvent. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRobotEvent_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRobotEvent_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRobotEvent_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/OperationalStatus. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgOperationalStatus_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/OperationalStatus. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgOperationalStatus_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgOperationalStatus_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgOperationalStatus_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/RecoveryPolicy. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRecoveryPolicy_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/RecoveryPolicy. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRecoveryPolicy_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRecoveryPolicy_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRecoveryPolicy_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/PoseStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPoseStamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/PoseStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPoseStamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPoseStamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgPoseStamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Accel. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgAccel_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Accel. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgAccel_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgAccel_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgAccel_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/AccelStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgAccelStamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/AccelStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgAccelStamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgAccelStamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgAccelStamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/WrenchStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgWrenchStamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/WrenchStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgWrenchStamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgWrenchStamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Geometry_msgsMsgWrenchStamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/RobotStates. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRobotStates_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/RobotStates. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRobotStates_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRobotStates_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsMsgRobotStates_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/GetOperationalStatus_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvGetOperationalStatus_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/GetOperationalStatus_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvGetOperationalStatus_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvGetOperationalStatus_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvGetOperationalStatus_Request_encode(void const* value,
                                                                                        size_t value_bytes,
                                                                                        void* wire,
                                                                                        size_t capacity,
                                                                                        size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/GetOperationalStatus_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvGetOperationalStatus_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/GetOperationalStatus_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvGetOperationalStatus_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvGetOperationalStatus_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvGetOperationalStatus_Response_encode(void const* value,
                                                                                         size_t value_bytes,
                                                                                         void* wire,
                                                                                         size_t capacity,
                                                                                         size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetCartesianImpedance_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianImpedance_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetCartesianImpedance_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianImpedance_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianImpedance_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianImpedance_Request_encode(void const* value,
                                                                                         size_t value_bytes,
                                                                                         void* wire,
                                                                                         size_t capacity,
                                                                                         size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetCartesianImpedance_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianImpedance_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetCartesianImpedance_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianImpedance_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianImpedance_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianImpedance_Response_encode(void const* value,
                                                                                          size_t value_bytes,
                                                                                          void* wire,
                                                                                          size_t capacity,
                                                                                          size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetCartesianMotionLimits_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetCartesianMotionLimits_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request_encode(void const* value,
                                                                                            size_t value_bytes,
                                                                                            void* wire,
                                                                                            size_t capacity,
                                                                                            size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetCartesianMotionLimits_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetCartesianMotionLimits_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response_encode(void const* value,
                                                                                             size_t value_bytes,
                                                                                             void* wire,
                                                                                             size_t capacity,
                                                                                             size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetForceControlAxis_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlAxis_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetForceControlAxis_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlAxis_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlAxis_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlAxis_Request_encode(void const* value,
                                                                                       size_t value_bytes,
                                                                                       void* wire,
                                                                                       size_t capacity,
                                                                                       size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetForceControlAxis_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlAxis_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetForceControlAxis_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlAxis_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlAxis_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlAxis_Response_encode(void const* value,
                                                                                        size_t value_bytes,
                                                                                        void* wire,
                                                                                        size_t capacity,
                                                                                        size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetForceControlFrame_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlFrame_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetForceControlFrame_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlFrame_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlFrame_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlFrame_Request_encode(void const* value,
                                                                                        size_t value_bytes,
                                                                                        void* wire,
                                                                                        size_t capacity,
                                                                                        size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetForceControlFrame_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlFrame_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetForceControlFrame_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlFrame_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlFrame_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetForceControlFrame_Response_encode(void const* value,
                                                                                         size_t value_bytes,
                                                                                         void* wire,
                                                                                         size_t capacity,
                                                                                         size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetJointImpedance_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointImpedance_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetJointImpedance_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointImpedance_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointImpedance_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointImpedance_Request_encode(void const* value,
                                                                                     size_t value_bytes,
                                                                                     void* wire,
                                                                                     size_t capacity,
                                                                                     size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetJointImpedance_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointImpedance_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetJointImpedance_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointImpedance_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointImpedance_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointImpedance_Response_encode(void const* value,
                                                                                      size_t value_bytes,
                                                                                      void* wire,
                                                                                      size_t capacity,
                                                                                      size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetJointInertiaScale_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetJointInertiaScale_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_encode(void const* value,
                                                                                        size_t value_bytes,
                                                                                        void* wire,
                                                                                        size_t capacity,
                                                                                        size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetJointInertiaScale_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetJointInertiaScale_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_encode(void const* value,
                                                                                         size_t value_bytes,
                                                                                         void* wire,
                                                                                         size_t capacity,
                                                                                         size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetMaxContactTorque_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetMaxContactTorque_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_encode(void const* value,
                                                                                       size_t value_bytes,
                                                                                       void* wire,
                                                                                       size_t capacity,
                                                                                       size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetMaxContactTorque_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetMaxContactTorque_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_encode(void const* value,
                                                                                        size_t value_bytes,
                                                                                        void* wire,
                                                                                        size_t capacity,
                                                                                        size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetMaxContactWrench_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactWrench_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetMaxContactWrench_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactWrench_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactWrench_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactWrench_Request_encode(void const* value,
                                                                                       size_t value_bytes,
                                                                                       void* wire,
                                                                                       size_t capacity,
                                                                                       size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetMaxContactWrench_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactWrench_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetMaxContactWrench_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactWrench_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactWrench_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetMaxContactWrench_Response_encode(void const* value,
                                                                                        size_t value_bytes,
                                                                                        void* wire,
                                                                                        size_t capacity,
                                                                                        size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetNullSpaceObjectives_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetNullSpaceObjectives_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request_encode(void const* value,
                                                                                          size_t value_bytes,
                                                                                          void* wire,
                                                                                          size_t capacity,
                                                                                          size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetNullSpaceObjectives_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetNullSpaceObjectives_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response_encode(void const* value,
                                                                                           size_t value_bytes,
                                                                                           void* wire,
                                                                                           size_t capacity,
                                                                                           size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetNullSpacePosture_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpacePosture_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetNullSpacePosture_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpacePosture_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpacePosture_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpacePosture_Request_encode(void const* value,
                                                                                       size_t value_bytes,
                                                                                       void* wire,
                                                                                       size_t capacity,
                                                                                       size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetNullSpacePosture_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpacePosture_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetNullSpacePosture_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpacePosture_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpacePosture_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetNullSpacePosture_Response_encode(void const* value,
                                                                                        size_t value_bytes,
                                                                                        void* wire,
                                                                                        size_t capacity,
                                                                                        size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetPassiveForceControl_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetPassiveForceControl_Request_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetPassiveForceControl_Request. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetPassiveForceControl_Request_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetPassiveForceControl_Request_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetPassiveForceControl_Request_encode(void const* value,
                                                                                          size_t value_bytes,
                                                                                          void* wire,
                                                                                          size_t capacity,
                                                                                          size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/srv/SetPassiveForceControl_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetPassiveForceControl_Response_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/srv/SetPassiveForceControl_Response. @return Bytes. */
    size_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetPassiveForceControl_Response_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetPassiveForceControl_Response_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v1_Ros2Flexiv_msgsSrvSetPassiveForceControl_Response_encode(void const* value,
                                                                                           size_t value_bytes,
                                                                                           void* wire,
                                                                                           size_t capacity,
                                                                                           size_t* length);
#ifdef __cplusplus
}
#endif
