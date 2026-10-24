/** @file records.h
 * @brief Exact C FFI access to every complete selected vendor record.
 * @details Caller storage must be a live correctly aligned object. Sizes and alignment are target ABI values.
 * All lengths are bytes. Failed operations preserve output. No native ROS authority is acquired.
 */
#pragma once
#include <flexiv/c/ros2/flexiv-ros2-foxy-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Return the actual target storage size for flexiv_msgs/msg/JointPosVel. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgJointPosVel_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/JointPosVel. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgJointPosVel_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgJointPosVel_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgJointPosVel_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/Mode. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgMode_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/Mode. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgMode_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgMode_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgMode_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Point. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgPoint_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Point. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgPoint_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgPoint_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgPoint_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Quaternion. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgQuaternion_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Quaternion. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgQuaternion_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgQuaternion_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgQuaternion_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Pose. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgPose_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Pose. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgPose_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgPose_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgPose_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Vector3. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgVector3_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Vector3. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgVector3_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgVector3_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgVector3_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Accel. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgAccel_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Accel. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgAccel_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgAccel_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgAccel_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Wrench. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgWrench_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Wrench. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgWrench_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgWrench_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_foxy_Ros2Geometry_msgsMsgWrench_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/msg/RobotStates. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgRobotStates_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/msg/RobotStates. @return Bytes. */
    size_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgRobotStates_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgRobotStates_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros2_foxy_Ros2Flexiv_msgsMsgRobotStates_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
#ifdef __cplusplus
}
#endif
