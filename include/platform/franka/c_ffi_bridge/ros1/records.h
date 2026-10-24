/** @file records.h
 * @brief Exact C FFI access to every complete selected vendor record.
 * @details Caller storage must be a live correctly aligned object. Sizes and alignment are target ABI values.
 * All lengths are bytes. Failed operations preserve output. No native ROS authority is acquired.
 */
#pragma once
#include <franka/c/ros1/franka-ros1-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Return the actual target storage size for franka_example_controllers/JointTorqueComparison. @return Bytes. */
    size_t franka_ros1_Ros1Franka_example_controllersJointTorqueComparison_size(void);
    /** @brief Return the target's required alignment for franka_example_controllers/JointTorqueComparison. @return Bytes. */
    size_t franka_ros1_Ros1Franka_example_controllersJointTorqueComparison_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_example_controllersJointTorqueComparison_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_example_controllersJointTorqueComparison_encode(void const* value,
                                                                                    size_t value_bytes,
                                                                                    void* wire,
                                                                                    size_t capacity,
                                                                                    size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/GraspEpsilon. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperGraspEpsilon_size(void);
    /** @brief Return the target's required alignment for franka_gripper/GraspEpsilon. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperGraspEpsilon_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperGraspEpsilon_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperGraspEpsilon_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/GraspGoal. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperGraspGoal_size(void);
    /** @brief Return the target's required alignment for franka_gripper/GraspGoal. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperGraspGoal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperGraspGoal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperGraspGoal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/GraspResult. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperGraspResult_size(void);
    /** @brief Return the target's required alignment for franka_gripper/GraspResult. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperGraspResult_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperGraspResult_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperGraspResult_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/GraspFeedback. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperGraspFeedback_size(void);
    /** @brief Return the target's required alignment for franka_gripper/GraspFeedback. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperGraspFeedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperGraspFeedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperGraspFeedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/HomingGoal. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperHomingGoal_size(void);
    /** @brief Return the target's required alignment for franka_gripper/HomingGoal. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperHomingGoal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperHomingGoal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperHomingGoal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/HomingResult. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperHomingResult_size(void);
    /** @brief Return the target's required alignment for franka_gripper/HomingResult. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperHomingResult_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperHomingResult_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperHomingResult_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/HomingFeedback. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperHomingFeedback_size(void);
    /** @brief Return the target's required alignment for franka_gripper/HomingFeedback. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperHomingFeedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperHomingFeedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperHomingFeedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/MoveGoal. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperMoveGoal_size(void);
    /** @brief Return the target's required alignment for franka_gripper/MoveGoal. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperMoveGoal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperMoveGoal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperMoveGoal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/MoveResult. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperMoveResult_size(void);
    /** @brief Return the target's required alignment for franka_gripper/MoveResult. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperMoveResult_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperMoveResult_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperMoveResult_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/MoveFeedback. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperMoveFeedback_size(void);
    /** @brief Return the target's required alignment for franka_gripper/MoveFeedback. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperMoveFeedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperMoveFeedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperMoveFeedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/StopGoal. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperStopGoal_size(void);
    /** @brief Return the target's required alignment for franka_gripper/StopGoal. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperStopGoal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperStopGoal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperStopGoal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/StopResult. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperStopResult_size(void);
    /** @brief Return the target's required alignment for franka_gripper/StopResult. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperStopResult_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperStopResult_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperStopResult_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_gripper/StopFeedback. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperStopFeedback_size(void);
    /** @brief Return the target's required alignment for franka_gripper/StopFeedback. @return Bytes. */
    size_t franka_ros1_Ros1Franka_gripperStopFeedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_gripperStopFeedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_gripperStopFeedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/ErrorRecoveryGoal. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsErrorRecoveryGoal_size(void);
    /** @brief Return the target's required alignment for franka_msgs/ErrorRecoveryGoal. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsErrorRecoveryGoal_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsErrorRecoveryGoal_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsErrorRecoveryGoal_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/ErrorRecoveryResult. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsErrorRecoveryResult_size(void);
    /** @brief Return the target's required alignment for franka_msgs/ErrorRecoveryResult. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsErrorRecoveryResult_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsErrorRecoveryResult_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsErrorRecoveryResult_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/ErrorRecoveryFeedback. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsErrorRecoveryFeedback_size(void);
    /** @brief Return the target's required alignment for franka_msgs/ErrorRecoveryFeedback. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsErrorRecoveryFeedback_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsErrorRecoveryFeedback_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsErrorRecoveryFeedback_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/Errors. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsErrors_size(void);
    /** @brief Return the target's required alignment for franka_msgs/Errors. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsErrors_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsErrors_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsErrors_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for time. @return Bytes. */
    size_t franka_ros1_Ros1Time_size(void);
    /** @brief Return the target's required alignment for time. @return Bytes. */
    size_t franka_ros1_Ros1Time_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Time_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Time_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for std_msgs/Header. @return Bytes. */
    size_t franka_ros1_Ros1Std_msgsHeader_size(void);
    /** @brief Return the target's required alignment for std_msgs/Header. @return Bytes. */
    size_t franka_ros1_Ros1Std_msgsHeader_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Std_msgsHeader_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Std_msgsHeader_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/FrankaState. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsFrankaState_size(void);
    /** @brief Return the target's required alignment for franka_msgs/FrankaState. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsFrankaState_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsFrankaState_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsFrankaState_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetCartesianImpedanceRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetCartesianImpedanceRequest_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetCartesianImpedanceRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetCartesianImpedanceRequest_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetCartesianImpedanceRequest_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetCartesianImpedanceRequest_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetCartesianImpedanceResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetCartesianImpedanceResponse_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetCartesianImpedanceResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetCartesianImpedanceResponse_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetCartesianImpedanceResponse_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros1_Ros1Franka_msgsSetCartesianImpedanceResponse_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetEEFrameRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetEEFrameRequest_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetEEFrameRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetEEFrameRequest_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetEEFrameRequest_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetEEFrameRequest_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetEEFrameResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetEEFrameResponse_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetEEFrameResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetEEFrameResponse_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetEEFrameResponse_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetEEFrameResponse_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetForceTorqueCollisionBehaviorRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetForceTorqueCollisionBehaviorRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_encode(void const* value,
                                                                                      size_t value_bytes,
                                                                                      void* wire,
                                                                                      size_t capacity,
                                                                                      size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetForceTorqueCollisionBehaviorResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetForceTorqueCollisionBehaviorResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_encode(void const* value,
                                                                                       size_t value_bytes,
                                                                                       void* wire,
                                                                                       size_t capacity,
                                                                                       size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetFullCollisionBehaviorRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorRequest_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetFullCollisionBehaviorRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorRequest_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorRequest_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorRequest_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetFullCollisionBehaviorResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorResponse_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetFullCollisionBehaviorResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorResponse_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorResponse_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t
        franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorResponse_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetJointImpedanceRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetJointImpedanceRequest_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetJointImpedanceRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetJointImpedanceRequest_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetJointImpedanceRequest_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetJointImpedanceRequest_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetJointImpedanceResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetJointImpedanceResponse_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetJointImpedanceResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetJointImpedanceResponse_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetJointImpedanceResponse_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetJointImpedanceResponse_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetKFrameRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetKFrameRequest_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetKFrameRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetKFrameRequest_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetKFrameRequest_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetKFrameRequest_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetKFrameResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetKFrameResponse_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetKFrameResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetKFrameResponse_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetKFrameResponse_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetKFrameResponse_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetLoadRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetLoadRequest_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetLoadRequest. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetLoadRequest_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetLoadRequest_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetLoadRequest_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
    /** @brief Return the actual target storage size for franka_msgs/SetLoadResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetLoadResponse_size(void);
    /** @brief Return the target's required alignment for franka_msgs/SetLoadResponse. @return Bytes. */
    size_t franka_ros1_Ros1Franka_msgsSetLoadResponse_alignment(void);
    /** @brief Decode a whole value transactionally into caller-owned typed storage.
     * @param wire Complete borrowed canonical bytes, disjoint from the destination.
     * @param length Exact initialized input bytes; trailing bytes are refused.
     * @param value Live properly aligned complete destination object.
     * @param value_bytes Exact size obtained from the matching target size function.
     * @return Zero on success; 22 for invalid object, range, shape or data. No partial assignment.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetLoadResponse_decode(void const* wire, size_t length, void* value, size_t value_bytes);
    /** @brief Validate and encode every original field before exposing any output.
     * @param value Properly aligned complete immutable source object.
     * @param value_bytes Exact target object size.
     * @param wire Caller-owned disjoint writable wire capacity.
     * @param capacity Available output bytes; not a native transport quota.
     * @param length Disjoint writable initialized byte count, changed only on success.
     * @return Zero on success; 22 invalid input/overlap, 90 insufficient capacity.
     */
    uint32_t franka_ros1_Ros1Franka_msgsSetLoadResponse_encode(void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length);
#ifdef __cplusplus
}
#endif
