/**
 * @file abi.h
 * @brief Expose every complete hello_robot/mobile_fjt_humble record through linkable C ABI functions.
 * @details All pointers refer to live, correctly aligned guest memory. Sizes use
 * the selected guest size_t width. No host pointer, ROS capability, allocator or
 * foreign runtime is created here. A profile is a wire contract, never a grant.
 * Keep record, input/output and size-result storage disjoint for each call.
 */
#ifndef UWVM_C_FFI_31F4A6F0AFD5B03005B359528A545607F96D981CBA790F6B22C6CC9260040EBB
#define UWVM_C_FFI_31F4A6F0AFD5B03005B359528A545607F96D981CBA790F6B22C6CC9260040EBB
#include <hello_robot/c/ros2/mobile-fjt-humble-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_validate(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                            size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_builtin_interfaces_msg_Duration* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_validate(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_builtin_interfaces_msg_Time* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_validate(roswasmc_bounded_2_std_msgs_msg_Header const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_validate(
        roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_wire_size(
        roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_encode(
        roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_validate(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                           size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_decode(void const* input,
                                                                                             size_t length,
                                                                                             roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_validate(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_geometry_msgs_msg_Vector3* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_validate(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_validate(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_encode(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_geometry_msgs_msg_Transform* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_validate(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_geometry_msgs_msg_Twist* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_validate(
        roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_wire_size(
        roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_encode(
        roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_validate(
        roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_wire_size(
        roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_encode(
        roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_validate(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_wire_size(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value,
                                                                                            size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_control_msgs_msg_JointTolerance* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_validate(
        roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_wire_size(
        roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_encode(
        roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_validate(
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_wire_size(
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_encode(
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_validate(
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_wire_size(
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_encode(
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_validate(
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_wire_size(
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_encode(
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_validate(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_sensor_msgs_msg_JointState* value);

#ifdef __cplusplus
}
#endif
#endif
