/** @file records.h
 * @brief Exact C FFI access to every complete selected vendor record.
 * @details Caller storage must be a live correctly aligned object. Sizes and alignment are target ABI values.
 * All lengths are bytes. Failed operations preserve output. No native ROS authority is acquired.
 */
#pragma once
#include <flexiv/c/ros1/flexiv-ros1-noetic-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Return the actual target storage size for flexiv_msgs/JointPosVel. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Flexiv_msgsJointPosVel_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/JointPosVel. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Flexiv_msgsJointPosVel_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros1_noetic_Ros1Flexiv_msgsJointPosVel_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros1_noetic_Ros1Flexiv_msgsJointPosVel_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/Mode. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Flexiv_msgsMode_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/Mode. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Flexiv_msgsMode_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros1_noetic_Ros1Flexiv_msgsMode_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros1_noetic_Ros1Flexiv_msgsMode_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/Point. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsPoint_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/Point. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsPoint_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsPoint_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsPoint_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/Quaternion. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsQuaternion_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/Quaternion. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsQuaternion_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsQuaternion_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsQuaternion_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/Pose. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsPose_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/Pose. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsPose_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsPose_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsPose_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/Vector3. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsVector3_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/Vector3. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsVector3_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsVector3_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsVector3_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/Accel. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsAccel_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/Accel. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsAccel_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsAccel_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsAccel_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/Wrench. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsWrench_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/Wrench. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Geometry_msgsWrench_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsWrench_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros1_noetic_Ros1Geometry_msgsWrench_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for flexiv_msgs/RobotStates. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Flexiv_msgsRobotStates_size(void);
    /** @brief Return the target's required alignment for flexiv_msgs/RobotStates. @return Bytes. */
    size_t flexiv_ros1_noetic_Ros1Flexiv_msgsRobotStates_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t flexiv_ros1_noetic_Ros1Flexiv_msgsRobotStates_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t flexiv_ros1_noetic_Ros1Flexiv_msgsRobotStates_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
#ifdef __cplusplus
}
#endif
