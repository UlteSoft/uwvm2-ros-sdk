/** @file records.h
 * @brief Exact C FFI access to every complete selected vendor record.
 * @details Caller storage must be a live correctly aligned object. Sizes and alignment are target ABI values.
 * All lengths are bytes. Failed operations preserve output. No native ROS authority is acquired.
 */
#pragma once
#include <kinova/c/ros2/mobile-fjt-humble-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Return the actual target storage size for builtin_interfaces/msg/Duration. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Builtin_interfacesMsgDuration_size(void);
    /** @brief Return the target's required alignment for builtin_interfaces/msg/Duration. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Builtin_interfacesMsgDuration_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Builtin_interfacesMsgDuration_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Builtin_interfacesMsgDuration_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for builtin_interfaces/msg/Time. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Builtin_interfacesMsgTime_size(void);
    /** @brief Return the target's required alignment for builtin_interfaces/msg/Time. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Builtin_interfacesMsgTime_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Builtin_interfacesMsgTime_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Builtin_interfacesMsgTime_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for std_msgs/msg/Header. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Std_msgsMsgHeader_size(void);
    /** @brief Return the target's required alignment for std_msgs/msg/Header. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Std_msgsMsgHeader_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Std_msgsMsgHeader_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Std_msgsMsgHeader_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for trajectory_msgs/msg/JointTrajectoryPoint. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_size(void);
    /** @brief Return the target's required alignment for trajectory_msgs/msg/JointTrajectoryPoint. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_encode(void const* value,
                                                                                  size_t value_bytes,
                                                                                  void* wire,
                                                                                  size_t capacity,
                                                                                  size_t* length);
    /** @brief Return the actual target storage size for trajectory_msgs/msg/JointTrajectory. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_size(void);
    /** @brief Return the target's required alignment for trajectory_msgs/msg/JointTrajectory. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Vector3. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Geometry_msgsMsgVector3_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Vector3. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Geometry_msgsMsgVector3_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Geometry_msgsMsgVector3_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Geometry_msgsMsgVector3_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Quaternion. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Geometry_msgsMsgQuaternion_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Quaternion. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Geometry_msgsMsgQuaternion_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Geometry_msgsMsgQuaternion_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Geometry_msgsMsgQuaternion_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Transform. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Geometry_msgsMsgTransform_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Transform. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Geometry_msgsMsgTransform_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Geometry_msgsMsgTransform_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Geometry_msgsMsgTransform_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for geometry_msgs/msg/Twist. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Geometry_msgsMsgTwist_size(void);
    /** @brief Return the target's required alignment for geometry_msgs/msg/Twist. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Geometry_msgsMsgTwist_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Geometry_msgsMsgTwist_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Geometry_msgsMsgTwist_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_size(void);
    /** @brief Return the target's required alignment for trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_encode(void const* value,
                                                                                          size_t value_bytes,
                                                                                          void* wire,
                                                                                          size_t capacity,
                                                                                          size_t* length);
    /** @brief Return the actual target storage size for trajectory_msgs/msg/MultiDOFJointTrajectory. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_size(void);
    /** @brief Return the target's required alignment for trajectory_msgs/msg/MultiDOFJointTrajectory. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_encode(void const* value,
                                                                                     size_t value_bytes,
                                                                                     void* wire,
                                                                                     size_t capacity,
                                                                                     size_t* length);
    /** @brief Return the actual target storage size for control_msgs/msg/JointTolerance. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Control_msgsMsgJointTolerance_size(void);
    /** @brief Return the target's required alignment for control_msgs/msg/JointTolerance. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Control_msgsMsgJointTolerance_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Control_msgsMsgJointTolerance_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Control_msgsMsgJointTolerance_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for control_msgs/msg/JointComponentTolerance. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Control_msgsMsgJointComponentTolerance_size(void);
    /** @brief Return the target's required alignment for control_msgs/msg/JointComponentTolerance. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Control_msgsMsgJointComponentTolerance_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Control_msgsMsgJointComponentTolerance_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Control_msgsMsgJointComponentTolerance_encode(void const* value,
                                                                                  size_t value_bytes,
                                                                                  void* wire,
                                                                                  size_t capacity,
                                                                                  size_t* length);
    /** @brief Return the actual target storage size for control_msgs/action/FollowJointTrajectory_Goal. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_size(void);
    /** @brief Return the target's required alignment for control_msgs/action/FollowJointTrajectory_Goal. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_encode(void const* value,
                                                                                        size_t value_bytes,
                                                                                        void* wire,
                                                                                        size_t capacity,
                                                                                        size_t* length);
    /** @brief Return the actual target storage size for control_msgs/action/FollowJointTrajectory_Result. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_size(void);
    /** @brief Return the target's required alignment for control_msgs/action/FollowJointTrajectory_Result. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_encode(void const* value,
                                                                                          size_t value_bytes,
                                                                                          void* wire,
                                                                                          size_t capacity,
                                                                                          size_t* length);
    /** @brief Return the actual target storage size for control_msgs/action/FollowJointTrajectory_Feedback. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_size(void);
    /** @brief Return the target's required alignment for control_msgs/action/FollowJointTrajectory_Feedback. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_encode(void const* value,
                                                                                            size_t value_bytes,
                                                                                            void* wire,
                                                                                            size_t capacity,
                                                                                            size_t* length);
    /** @brief Return the actual target storage size for sensor_msgs/msg/JointState. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Sensor_msgsMsgJointState_size(void);
    /** @brief Return the target's required alignment for sensor_msgs/msg/JointState. @return Bytes. */
    size_t kinova_ros2_humble_Ros2Sensor_msgsMsgJointState_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t kinova_ros2_humble_Ros2Sensor_msgsMsgJointState_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t kinova_ros2_humble_Ros2Sensor_msgsMsgJointState_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
#ifdef __cplusplus
}
#endif
