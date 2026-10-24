/**
 * @file abi.h
 * @brief Expose every complete robotis/jazzy record through linkable C ABI functions.
 * @details All pointers refer to live, correctly aligned guest memory. Sizes use
 * the selected guest size_t width. No host pointer, ROS capability, allocator or
 * foreign runtime is created here. A profile is a wire contract, never a grant.
 * Keep record, input/output and size-result storage disjoint for each call.
 */
#ifndef UWVM_C_FFI_A976046FDE176AF450C3C57F7C72DDE9E838CA4862C58C316274B53B8D6867D7
#define UWVM_C_FFI_A976046FDE176AF450C3C57F7C72DDE9E838CA4862C58C316274B53B8D6867D7
#include <robotis/c/ros2/robotis-turtlebot3-jazzy-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Builtin_interfacesMsgTime_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Builtin_interfacesMsgTime_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Builtin_interfacesMsgTime_validate(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Builtin_interfacesMsgTime_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Builtin_interfacesMsgTime_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoint_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoint_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoint_validate(roswasmc_bounded_2_geometry_msgs_msg_Point const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoint_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Point const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoint_encode(roswasmc_bounded_2_geometry_msgs_msg_Point const* value,
                                                                 void* output,
                                                                 size_t capacity,
                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoint_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Point* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgQuaternion_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgQuaternion_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgQuaternion_validate(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgQuaternion_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgQuaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgQuaternion_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPose_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPose_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPose_validate(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPose_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPose_encode(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value,
                                                                void* output,
                                                                size_t capacity,
                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPose_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Pose* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoseWithCovariance_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoseWithCovariance_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoseWithCovariance_validate(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoseWithCovariance_wire_size(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value,
                                                                                 size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoseWithCovariance_encode(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgPoseWithCovariance_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgVector3_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgVector3_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgVector3_validate(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgVector3_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgVector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgVector3_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Vector3* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransform_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransform_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransform_validate(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransform_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransform_encode(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransform_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Transform* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Std_msgsMsgHeader_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Std_msgsMsgHeader_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_msgsMsgHeader_validate(roswasmc_bounded_2_std_msgs_msg_Header const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_msgsMsgHeader_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_robotis_jazzy_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_msgsMsgHeader_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransformStamped_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransformStamped_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransformStamped_validate(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransformStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped const* value,
                                                                               size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransformStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTransformStamped_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_geometry_msgs_msg_TransformStamped* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwist_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwist_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwist_validate(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwist_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value,
                                                                 void* output,
                                                                 size_t capacity,
                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwist_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Twist* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistStamped_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistStamped_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistStamped_validate(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t
        uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistStamped_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_TwistStamped* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistWithCovariance_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistWithCovariance_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistWithCovariance_validate(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistWithCovariance_wire_size(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance const* value,
                                                                                  size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistWithCovariance_encode(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Geometry_msgsMsgTwistWithCovariance_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Nav_msgsMsgOdometry_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Nav_msgsMsgOdometry_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Nav_msgsMsgOdometry_validate(roswasmc_bounded_2_nav_msgs_msg_Odometry const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Nav_msgsMsgOdometry_wire_size(roswasmc_bounded_2_nav_msgs_msg_Odometry const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_robotis_jazzy_Ros2Nav_msgsMsgOdometry_encode(roswasmc_bounded_2_nav_msgs_msg_Odometry const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Nav_msgsMsgOdometry_decode(void const* input, size_t length, roswasmc_bounded_2_nav_msgs_msg_Odometry* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgBatteryState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgBatteryState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgBatteryState_validate(roswasmc_bounded_2_sensor_msgs_msg_BatteryState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgBatteryState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_BatteryState const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgBatteryState_encode(roswasmc_bounded_2_sensor_msgs_msg_BatteryState const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgBatteryState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_BatteryState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgImu_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgImu_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgImu_validate(roswasmc_bounded_2_sensor_msgs_msg_Imu const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgImu_wire_size(roswasmc_bounded_2_sensor_msgs_msg_Imu const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_robotis_jazzy_Ros2Sensor_msgsMsgImu_encode(roswasmc_bounded_2_sensor_msgs_msg_Imu const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgImu_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_Imu* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgJointState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgJointState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgJointState_validate(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgJointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgJointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgJointState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_JointState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgLaserScan_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgLaserScan_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgLaserScan_validate(roswasmc_bounded_2_sensor_msgs_msg_LaserScan const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgLaserScan_wire_size(roswasmc_bounded_2_sensor_msgs_msg_LaserScan const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgLaserScan_encode(roswasmc_bounded_2_sensor_msgs_msg_LaserScan const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgLaserScan_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_LaserScan* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgMagneticField_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgMagneticField_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgMagneticField_validate(roswasmc_bounded_2_sensor_msgs_msg_MagneticField const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgMagneticField_wire_size(roswasmc_bounded_2_sensor_msgs_msg_MagneticField const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Sensor_msgsMsgMagneticField_encode(roswasmc_bounded_2_sensor_msgs_msg_MagneticField const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t
        uwvm_robotis_jazzy_Ros2Sensor_msgsMsgMagneticField_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_MagneticField* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Request_validate(roswasmc_bounded_2_std_srvs_srv_SetBool_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Request_wire_size(roswasmc_bounded_2_std_srvs_srv_SetBool_Request const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Request_encode(roswasmc_bounded_2_std_srvs_srv_SetBool_Request const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Request_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_SetBool_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Response_validate(roswasmc_bounded_2_std_srvs_srv_SetBool_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Response_wire_size(roswasmc_bounded_2_std_srvs_srv_SetBool_Response const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Response_encode(roswasmc_bounded_2_std_srvs_srv_SetBool_Response const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t
        uwvm_robotis_jazzy_Ros2Std_srvsSrvSetBool_Response_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_SetBool_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Request_validate(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Request_wire_size(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Request_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Request_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_Trigger_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Response_validate(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Response_wire_size(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Response_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t
        uwvm_robotis_jazzy_Ros2Std_srvsSrvTrigger_Response_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_Trigger_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Goal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Goal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Goal_validate(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Goal_wire_size(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal const* value,
                                                                               size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Goal_encode(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Goal_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Result_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Result_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Result_validate(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Result_wire_size(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result const* value,
                                                                                 size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Result_encode(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Result_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Feedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Feedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Feedback_validate(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Feedback_wire_size(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Feedback_encode(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsActionPatrol_Feedback_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSensorState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSensorState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSensorState_validate(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSensorState_wire_size(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSensorState_encode(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSensorState_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSound_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSound_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSound_validate(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSound_wire_size(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSound_encode(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSound_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_msg_Sound* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgVersionInfo_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgVersionInfo_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgVersionInfo_validate(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgVersionInfo_wire_size(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgVersionInfo_encode(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgVersionInfo_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Request_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Request_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Request_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Request_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Response_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Response_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Response_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvDqn_Response_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Request_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Request_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Request_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Response_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Response_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response const* value,
                                                                              size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Response_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvGoal_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Request_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Request_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request const* value,
                                                                              size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Request_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Request_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Response_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Response_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response const* value,
                                                                               size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Response_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_jazzy_Ros2Turtlebot3_msgsSrvSound_Response_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response* value);

#ifdef __cplusplus
}
#endif
#endif
