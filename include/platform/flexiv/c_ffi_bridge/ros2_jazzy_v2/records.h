/** @file records.h
 * @brief Exact C FFI access to every complete selected vendor record.
 * @details Caller storage must be a live correctly aligned object. Sizes and alignment are target ABI values.
 * All lengths are bytes. Failed operations preserve output. No native ROS authority is acquired.
 */
#pragma once
#include <flexiv/c/ros2/flexiv-ros2-jazzy-v2-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Return the actual target storage size for builtin_interfaces/msg/Time. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Builtin_interfacesMsgTime_size(void);
    /** @brief Return the target's required alignment for builtin_interfaces/msg/Time. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Builtin_interfacesMsgTime_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Builtin_interfacesMsgTime_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Builtin_interfacesMsgTime_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Grasp_Goal. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Goal_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Grasp_Goal. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Goal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Grasp_Result. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Result_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Grasp_Result. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Result_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Grasp_Feedback. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Feedback_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Grasp_Feedback. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionGrasp_Feedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Move_Goal. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Goal_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Move_Goal. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Goal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Move_Result. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Result_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Move_Result. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Result_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/action/Move_Feedback. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Feedback_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/action/Move_Feedback. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsActionMove_Feedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/Digital. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgDigital_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/Digital. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgDigital_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgDigital_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgDigital_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/GPIOStates. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgGPIOStates_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/GPIOStates. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgGPIOStates_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgGPIOStates_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgGPIOStates_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/JointPosVel. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgJointPosVel_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/JointPosVel. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgJointPosVel_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgJointPosVel_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgJointPosVel_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/Mode. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgMode_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/Mode. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgMode_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgMode_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgMode_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for std_msgs/msg/Header. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Std_msgsMsgHeader_size(void);
    /** @brief Return the target's required alignment for std_msgs/msg/Header. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Std_msgsMsgHeader_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Std_msgsMsgHeader_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Std_msgsMsgHeader_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Point. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPoint_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Point. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPoint_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPoint_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPoint_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Quaternion. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgQuaternion_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Quaternion. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgQuaternion_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgQuaternion_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgQuaternion_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Pose. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPose_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Pose. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPose_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPose_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPose_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/PoseStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPoseStamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/PoseStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPoseStamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPoseStamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgPoseStamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Vector3. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgVector3_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Vector3. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgVector3_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgVector3_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgVector3_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Twist. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgTwist_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Twist. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgTwist_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgTwist_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgTwist_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/TwistStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgTwistStamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/TwistStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgTwistStamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgTwistStamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgTwistStamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Wrench. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgWrench_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Wrench. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgWrench_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgWrench_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgWrench_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/WrenchStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgWrenchStamped_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/WrenchStamped. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgWrenchStamped_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgWrenchStamped_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Geometry_msgsMsgWrenchStamped_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/RobotStates. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgRobotStates_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/RobotStates. @return Bytes. */
    size_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgRobotStates_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgRobotStates_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_jazzy_v2_Ros2Flexiv_msgsMsgRobotStates_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
#ifdef __cplusplus
}
#endif
