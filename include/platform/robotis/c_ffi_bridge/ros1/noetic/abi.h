/**
 * @file abi.h
 * @brief Expose every complete robotis/noetic record through linkable C ABI functions.
 * @details All pointers refer to live, correctly aligned guest memory. Sizes use
 * the selected guest size_t width. No host pointer, ROS capability, allocator or
 * foreign runtime is created here. A profile is a wire contract, never a grant.
 * Keep record, input/output and size-result storage disjoint for each call.
 */
#ifndef UWVM_C_FFI_9670B8B5F9CF4BECBE1131603C53C14C9394B0A68990DBADECE5C56B28DE1DF5
#define UWVM_C_FFI_9670B8B5F9CF4BECBE1131603C53C14C9394B0A68990DBADECE5C56B28DE1DF5
#include <robotis/c/ros1/robotis-turtlebot3-noetic-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsPoint_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsPoint_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoint_validate(roswasmc_bounded_1_geometry_msgs_Point const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoint_wire_size(roswasmc_bounded_1_geometry_msgs_Point const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_robotis_noetic_Ros1Geometry_msgsPoint_encode(roswasmc_bounded_1_geometry_msgs_Point const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoint_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Point* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_validate(roswasmc_bounded_1_geometry_msgs_Quaternion const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_wire_size(roswasmc_bounded_1_geometry_msgs_Quaternion const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_encode(roswasmc_bounded_1_geometry_msgs_Quaternion const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Quaternion* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsPose_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsPose_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPose_validate(roswasmc_bounded_1_geometry_msgs_Pose const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPose_wire_size(roswasmc_bounded_1_geometry_msgs_Pose const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_robotis_noetic_Ros1Geometry_msgsPose_encode(roswasmc_bounded_1_geometry_msgs_Pose const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPose_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Pose* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_validate(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_wire_size(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value,
                                                                               size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_encode(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_geometry_msgs_PoseWithCovariance* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsVector3_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsVector3_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsVector3_validate(roswasmc_bounded_1_geometry_msgs_Vector3 const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsVector3_wire_size(roswasmc_bounded_1_geometry_msgs_Vector3 const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsVector3_encode(roswasmc_bounded_1_geometry_msgs_Vector3 const* value,
                                                                 void* output,
                                                                 size_t capacity,
                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsVector3_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Vector3* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_validate(roswasmc_bounded_1_geometry_msgs_Transform const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_wire_size(roswasmc_bounded_1_geometry_msgs_Transform const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_encode(roswasmc_bounded_1_geometry_msgs_Transform const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Transform* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Time_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Time_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Time_validate(roswasmc_bounded_1_time const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Time_wire_size(roswasmc_bounded_1_time const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Time_encode(roswasmc_bounded_1_time const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Time_decode(void const* input, size_t length, roswasmc_bounded_1_time* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Std_msgsHeader_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Std_msgsHeader_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_msgsHeader_validate(roswasmc_bounded_1_std_msgs_Header const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_msgsHeader_wire_size(roswasmc_bounded_1_std_msgs_Header const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_msgsHeader_encode(roswasmc_bounded_1_std_msgs_Header const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_msgsHeader_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Header* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_validate(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_wire_size(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_encode(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_geometry_msgs_TransformStamped* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwist_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwist_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwist_validate(roswasmc_bounded_1_geometry_msgs_Twist const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwist_wire_size(roswasmc_bounded_1_geometry_msgs_Twist const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_robotis_noetic_Ros1Geometry_msgsTwist_encode(roswasmc_bounded_1_geometry_msgs_Twist const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwist_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Twist* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_validate(roswasmc_bounded_1_geometry_msgs_TwistStamped const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_wire_size(roswasmc_bounded_1_geometry_msgs_TwistStamped const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_encode(roswasmc_bounded_1_geometry_msgs_TwistStamped const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_TwistStamped* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_validate(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_wire_size(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance const* value,
                                                                                size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_encode(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_geometry_msgs_TwistWithCovariance* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_validate(roswasmc_bounded_1_nav_msgs_Odometry const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_wire_size(roswasmc_bounded_1_nav_msgs_Odometry const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_encode(roswasmc_bounded_1_nav_msgs_Odometry const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_decode(void const* input, size_t length, roswasmc_bounded_1_nav_msgs_Odometry* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_validate(roswasmc_bounded_1_sensor_msgs_BatteryState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_wire_size(roswasmc_bounded_1_sensor_msgs_BatteryState const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_encode(roswasmc_bounded_1_sensor_msgs_BatteryState const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_BatteryState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_validate(roswasmc_bounded_1_sensor_msgs_Imu const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_wire_size(roswasmc_bounded_1_sensor_msgs_Imu const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_encode(roswasmc_bounded_1_sensor_msgs_Imu const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_Imu* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Sensor_msgsJointState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Sensor_msgsJointState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsJointState_validate(roswasmc_bounded_1_sensor_msgs_JointState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsJointState_wire_size(roswasmc_bounded_1_sensor_msgs_JointState const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsJointState_encode(roswasmc_bounded_1_sensor_msgs_JointState const* value,
                                                                  void* output,
                                                                  size_t capacity,
                                                                  size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsJointState_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_JointState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_validate(roswasmc_bounded_1_sensor_msgs_LaserScan const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_wire_size(roswasmc_bounded_1_sensor_msgs_LaserScan const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_encode(roswasmc_bounded_1_sensor_msgs_LaserScan const* value,
                                                                 void* output,
                                                                 size_t capacity,
                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_LaserScan* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_validate(roswasmc_bounded_1_sensor_msgs_MagneticField const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_wire_size(roswasmc_bounded_1_sensor_msgs_MagneticField const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_encode(roswasmc_bounded_1_sensor_msgs_MagneticField const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_MagneticField* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_validate(roswasmc_bounded_1_std_srvs_SetBoolRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_wire_size(roswasmc_bounded_1_std_srvs_SetBoolRequest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_encode(roswasmc_bounded_1_std_srvs_SetBoolRequest const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_SetBoolRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_validate(roswasmc_bounded_1_std_srvs_SetBoolResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_wire_size(roswasmc_bounded_1_std_srvs_SetBoolResponse const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_encode(roswasmc_bounded_1_std_srvs_SetBoolResponse const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_SetBoolResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_validate(roswasmc_bounded_1_std_srvs_TriggerRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_wire_size(roswasmc_bounded_1_std_srvs_TriggerRequest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_encode(roswasmc_bounded_1_std_srvs_TriggerRequest const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_TriggerRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_validate(roswasmc_bounded_1_std_srvs_TriggerResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_wire_size(roswasmc_bounded_1_std_srvs_TriggerResponse const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_encode(roswasmc_bounded_1_std_srvs_TriggerResponse const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_TriggerResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_validate(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_wire_size(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal const* value,
                                                                                size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_encode(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_validate(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_wire_size(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result const* value,
                                                                                  size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_encode(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_validate(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_wire_size(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_encode(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_validate(roswasmc_bounded_1_turtlebot3_msgs_SensorState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_wire_size(roswasmc_bounded_1_turtlebot3_msgs_SensorState const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_encode(roswasmc_bounded_1_turtlebot3_msgs_SensorState const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_decode(void const* input, size_t length, roswasmc_bounded_1_turtlebot3_msgs_SensorState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_validate(roswasmc_bounded_1_turtlebot3_msgs_Sound const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_wire_size(roswasmc_bounded_1_turtlebot3_msgs_Sound const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_encode(roswasmc_bounded_1_turtlebot3_msgs_Sound const* value,
                                                                 void* output,
                                                                 size_t capacity,
                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_decode(void const* input, size_t length, roswasmc_bounded_1_turtlebot3_msgs_Sound* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_validate(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_wire_size(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_encode(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_decode(void const* input, size_t length, roswasmc_bounded_1_turtlebot3_msgs_VersionInfo* value);

#ifdef __cplusplus
}
#endif
#endif
