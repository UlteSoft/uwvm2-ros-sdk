/**
 * @file abi.h
 * @brief Expose every complete pal/ros1_noetic_devel record through linkable C ABI functions.
 * @details All pointers refer to live, correctly aligned guest memory. Sizes use
 * the selected guest size_t width. No host pointer, ROS capability, allocator or
 * foreign runtime is created here. A profile is a wire contract, never a grant.
 * Keep record, input/output and size-result storage disjoint for each call.
 */
#ifndef UWVM_C_FFI_796F39520009CD465C61D6973B0AE64431B2339AFDCE28EDF5C4B41D674E73A6
#define UWVM_C_FFI_796F39520009CD465C61D6973B0AE64431B2339AFDCE28EDF5C4B41D674E73A6
#include <pal/c/ros1/pal-ros1-noetic-devel-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsVector3_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsVector3_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsVector3_validate(roswasmc_bounded_1_geometry_msgs_Vector3 const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsVector3_wire_size(roswasmc_bounded_1_geometry_msgs_Vector3 const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsVector3_encode(roswasmc_bounded_1_geometry_msgs_Vector3 const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsVector3_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Vector3* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsAccel_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsAccel_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsAccel_validate(roswasmc_bounded_1_geometry_msgs_Accel const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsAccel_wire_size(roswasmc_bounded_1_geometry_msgs_Accel const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsAccel_encode(roswasmc_bounded_1_geometry_msgs_Accel const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsAccel_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Accel* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint_validate(roswasmc_bounded_1_geometry_msgs_Point const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint_wire_size(roswasmc_bounded_1_geometry_msgs_Point const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint_encode(roswasmc_bounded_1_geometry_msgs_Point const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Point* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint32_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint32_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint32_validate(roswasmc_bounded_1_geometry_msgs_Point32 const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint32_wire_size(roswasmc_bounded_1_geometry_msgs_Point32 const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint32_encode(roswasmc_bounded_1_geometry_msgs_Point32 const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoint32_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Point32* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Time_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Time_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Time_validate(roswasmc_bounded_1_time const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Time_wire_size(roswasmc_bounded_1_time const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Time_encode(roswasmc_bounded_1_time const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Time_decode(void const* input, size_t length, roswasmc_bounded_1_time* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsHeader_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsHeader_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsHeader_validate(roswasmc_bounded_1_std_msgs_Header const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsHeader_wire_size(roswasmc_bounded_1_std_msgs_Header const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Std_msgsHeader_encode(roswasmc_bounded_1_std_msgs_Header const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsHeader_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Header* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPointStamped_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPointStamped_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPointStamped_validate(roswasmc_bounded_1_geometry_msgs_PointStamped const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPointStamped_wire_size(roswasmc_bounded_1_geometry_msgs_PointStamped const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPointStamped_encode(roswasmc_bounded_1_geometry_msgs_PointStamped const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPointStamped_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_PointStamped* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsQuaternion_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsQuaternion_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsQuaternion_validate(roswasmc_bounded_1_geometry_msgs_Quaternion const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsQuaternion_wire_size(roswasmc_bounded_1_geometry_msgs_Quaternion const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsQuaternion_encode(roswasmc_bounded_1_geometry_msgs_Quaternion const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsQuaternion_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Quaternion* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose_validate(roswasmc_bounded_1_geometry_msgs_Pose const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose_wire_size(roswasmc_bounded_1_geometry_msgs_Pose const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose_encode(roswasmc_bounded_1_geometry_msgs_Pose const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Pose* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose2D_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose2D_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose2D_validate(roswasmc_bounded_1_geometry_msgs_Pose2D const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose2D_wire_size(roswasmc_bounded_1_geometry_msgs_Pose2D const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose2D_encode(roswasmc_bounded_1_geometry_msgs_Pose2D const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPose2D_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Pose2D* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseArray_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseArray_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseArray_validate(roswasmc_bounded_1_geometry_msgs_PoseArray const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseArray_wire_size(roswasmc_bounded_1_geometry_msgs_PoseArray const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseArray_encode(roswasmc_bounded_1_geometry_msgs_PoseArray const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseArray_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_PoseArray* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovariance_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovariance_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovariance_validate(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovariance_wire_size(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovariance_encode(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovariance_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_geometry_msgs_PoseWithCovariance* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_validate(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_wire_size(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_encode(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransform_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransform_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransform_validate(roswasmc_bounded_1_geometry_msgs_Transform const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransform_wire_size(roswasmc_bounded_1_geometry_msgs_Transform const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransform_encode(roswasmc_bounded_1_geometry_msgs_Transform const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransform_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Transform* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransformStamped_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransformStamped_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransformStamped_validate(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransformStamped_wire_size(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransformStamped_encode(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTransformStamped_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_geometry_msgs_TransformStamped* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTwist_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTwist_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTwist_validate(roswasmc_bounded_1_geometry_msgs_Twist const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTwist_wire_size(roswasmc_bounded_1_geometry_msgs_Twist const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTwist_encode(roswasmc_bounded_1_geometry_msgs_Twist const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsTwist_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Twist* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsWrench_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsWrench_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsWrench_validate(roswasmc_bounded_1_geometry_msgs_Wrench const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsWrench_wire_size(roswasmc_bounded_1_geometry_msgs_Wrench const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsWrench_encode(roswasmc_bounded_1_geometry_msgs_Wrench const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Geometry_msgsWrench_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Wrench* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Humanoid_nav_msgsStepTarget_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Humanoid_nav_msgsStepTarget_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Humanoid_nav_msgsStepTarget_validate(roswasmc_bounded_1_humanoid_nav_msgs_StepTarget const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Humanoid_nav_msgsStepTarget_wire_size(roswasmc_bounded_1_humanoid_nav_msgs_StepTarget const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Humanoid_nav_msgsStepTarget_encode(roswasmc_bounded_1_humanoid_nav_msgs_StepTarget const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Humanoid_nav_msgsStepTarget_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_humanoid_nav_msgs_StepTarget* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Nav_msgsMapMetaData_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Nav_msgsMapMetaData_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Nav_msgsMapMetaData_validate(roswasmc_bounded_1_nav_msgs_MapMetaData const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Nav_msgsMapMetaData_wire_size(roswasmc_bounded_1_nav_msgs_MapMetaData const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Nav_msgsMapMetaData_encode(roswasmc_bounded_1_nav_msgs_MapMetaData const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Nav_msgsMapMetaData_decode(void const* input, size_t length, roswasmc_bounded_1_nav_msgs_MapMetaData* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourArgument_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourArgument_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourArgument_validate(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourArgument_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourArgument_encode(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourArgument_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_validate(
        roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_wire_size(
        roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_encode(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_validate(
        roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_wire_size(
        roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_encode(
        roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_validate(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_encode(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_validate(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_encode(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_validate(
        roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_wire_size(
        roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_encode(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationGoal_validate(roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationGoal_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationGoal_encode(roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationGoal_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationResult_validate(roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationResult_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationResult_encode(roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationResult_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationFeedback_validate(roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationFeedback_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationFeedback_encode(roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_behaviour_msgsPresentationFeedback_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableGoal_validate(roswasmc_bounded_1_pal_common_msgs_DisableGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableGoal_wire_size(roswasmc_bounded_1_pal_common_msgs_DisableGoal const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableGoal_encode(roswasmc_bounded_1_pal_common_msgs_DisableGoal const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableGoal_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_common_msgs_DisableGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableResult_validate(roswasmc_bounded_1_pal_common_msgs_DisableResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableResult_wire_size(roswasmc_bounded_1_pal_common_msgs_DisableResult const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableResult_encode(roswasmc_bounded_1_pal_common_msgs_DisableResult const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableResult_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_common_msgs_DisableResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableFeedback_validate(roswasmc_bounded_1_pal_common_msgs_DisableFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableFeedback_wire_size(roswasmc_bounded_1_pal_common_msgs_DisableFeedback const* value,
                                                                                     size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableFeedback_encode(roswasmc_bounded_1_pal_common_msgs_DisableFeedback const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsDisableFeedback_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_common_msgs_DisableFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyGoal_validate(roswasmc_bounded_1_pal_common_msgs_EmptyGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyGoal_wire_size(roswasmc_bounded_1_pal_common_msgs_EmptyGoal const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyGoal_encode(roswasmc_bounded_1_pal_common_msgs_EmptyGoal const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyGoal_decode(void const* input, size_t length, roswasmc_bounded_1_pal_common_msgs_EmptyGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyResult_validate(roswasmc_bounded_1_pal_common_msgs_EmptyResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyResult_wire_size(roswasmc_bounded_1_pal_common_msgs_EmptyResult const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyResult_encode(roswasmc_bounded_1_pal_common_msgs_EmptyResult const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyResult_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_common_msgs_EmptyResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyFeedback_validate(roswasmc_bounded_1_pal_common_msgs_EmptyFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyFeedback_wire_size(roswasmc_bounded_1_pal_common_msgs_EmptyFeedback const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyFeedback_encode(roswasmc_bounded_1_pal_common_msgs_EmptyFeedback const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsEmptyFeedback_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_common_msgs_EmptyFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringRequest_validate(roswasmc_bounded_1_pal_common_msgs_GetStringRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringRequest_wire_size(roswasmc_bounded_1_pal_common_msgs_GetStringRequest const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringRequest_encode(roswasmc_bounded_1_pal_common_msgs_GetStringRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_common_msgs_GetStringRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringResponse_validate(roswasmc_bounded_1_pal_common_msgs_GetStringResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringResponse_wire_size(roswasmc_bounded_1_pal_common_msgs_GetStringResponse const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringResponse_encode(roswasmc_bounded_1_pal_common_msgs_GetStringResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsGetStringResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_common_msgs_GetStringResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsJointCurrent_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsJointCurrent_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsJointCurrent_validate(roswasmc_bounded_1_pal_common_msgs_JointCurrent const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsJointCurrent_wire_size(roswasmc_bounded_1_pal_common_msgs_JointCurrent const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsJointCurrent_encode(roswasmc_bounded_1_pal_common_msgs_JointCurrent const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsJointCurrent_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_common_msgs_JointCurrent* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringRequest_validate(roswasmc_bounded_1_pal_common_msgs_SetStringRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringRequest_wire_size(roswasmc_bounded_1_pal_common_msgs_SetStringRequest const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringRequest_encode(roswasmc_bounded_1_pal_common_msgs_SetStringRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_common_msgs_SetStringRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringResponse_validate(roswasmc_bounded_1_pal_common_msgs_SetStringResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringResponse_wire_size(roswasmc_bounded_1_pal_common_msgs_SetStringResponse const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringResponse_encode(roswasmc_bounded_1_pal_common_msgs_SetStringResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_common_msgsSetStringResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_common_msgs_SetStringResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsActuatorCurrentLimit_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsActuatorCurrentLimit_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsActuatorCurrentLimit_validate(roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsActuatorCurrentLimit_wire_size(roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsActuatorCurrentLimit_encode(roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsActuatorCurrentLimit_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitRequest_validate(roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitRequest_wire_size(roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitRequest_encode(roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitResponse_validate(roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitResponse_wire_size(roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitResponse_encode(roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsCurrentLimitResponse_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerGoal_validate(roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerGoal_wire_size(roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerGoal_encode(roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerGoal_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerResult_validate(roswasmc_bounded_1_pal_control_msgs_MotionManagerResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerResult_wire_size(roswasmc_bounded_1_pal_control_msgs_MotionManagerResult const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerResult_encode(roswasmc_bounded_1_pal_control_msgs_MotionManagerResult const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerResult_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_control_msgs_MotionManagerResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerFeedback_validate(roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerFeedback_wire_size(roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerFeedback_encode(roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsMotionManagerFeedback_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Duration_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Duration_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Duration_validate(roswasmc_bounded_1_duration const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Duration_wire_size(roswasmc_bounded_1_duration const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Duration_encode(roswasmc_bounded_1_duration const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Duration_decode(void const* input, size_t length, roswasmc_bounded_1_duration* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsOperationalSpaceGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsOperationalSpaceGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsOperationalSpaceGoal_validate(roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsOperationalSpaceGoal_wire_size(roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsOperationalSpaceGoal_encode(roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsOperationalSpaceGoal_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_validate(
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_wire_size(
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_encode(
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_validate(
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_wire_size(
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_encode(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_validate(
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_wire_size(
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_encode(
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_validate(
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_wire_size(
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_encode(
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsImage_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsImage_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsImage_validate(roswasmc_bounded_1_sensor_msgs_Image const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsImage_wire_size(roswasmc_bounded_1_sensor_msgs_Image const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsImage_encode(roswasmc_bounded_1_sensor_msgs_Image const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsImage_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_Image* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_validate(
        roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_encode(
        roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_validate(
        roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_encode(
        roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_validate(
        roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_encode(
        roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_validate(
        roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_encode(
        roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetection2d_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetection2d_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetection2d_validate(roswasmc_bounded_1_pal_detection_msgs_Detection2d const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetection2d_wire_size(roswasmc_bounded_1_pal_detection_msgs_Detection2d const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetection2d_encode(roswasmc_bounded_1_pal_detection_msgs_Detection2d const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetection2d_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_detection_msgs_Detection2d* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetections2d_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetections2d_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetections2d_validate(roswasmc_bounded_1_pal_detection_msgs_Detections2d const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetections2d_wire_size(roswasmc_bounded_1_pal_detection_msgs_Detections2d const* value,
                                                                                     size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetections2d_encode(roswasmc_bounded_1_pal_detection_msgs_Detections2d const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsDetections2d_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_detection_msgs_Detections2d* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetection_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetection_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetection_validate(roswasmc_bounded_1_pal_detection_msgs_FaceDetection const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetection_wire_size(roswasmc_bounded_1_pal_detection_msgs_FaceDetection const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetection_encode(roswasmc_bounded_1_pal_detection_msgs_FaceDetection const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetection_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_detection_msgs_FaceDetection* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetections_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetections_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetections_validate(roswasmc_bounded_1_pal_detection_msgs_FaceDetections const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetections_wire_size(roswasmc_bounded_1_pal_detection_msgs_FaceDetections const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetections_encode(roswasmc_bounded_1_pal_detection_msgs_FaceDetections const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceDetections_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_detection_msgs_FaceDetections* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsRegionOfInterest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsRegionOfInterest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsRegionOfInterest_validate(roswasmc_bounded_1_sensor_msgs_RegionOfInterest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsRegionOfInterest_wire_size(roswasmc_bounded_1_sensor_msgs_RegionOfInterest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsRegionOfInterest_encode(roswasmc_bounded_1_sensor_msgs_RegionOfInterest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsRegionOfInterest_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_sensor_msgs_RegionOfInterest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceThermalDetections_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceThermalDetections_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceThermalDetections_validate(
        roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceThermalDetections_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceThermalDetections_encode(roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsFaceThermalDetections_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsGesture_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsGesture_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsGesture_validate(roswasmc_bounded_1_pal_detection_msgs_Gesture const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsGesture_wire_size(roswasmc_bounded_1_pal_detection_msgs_Gesture const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsGesture_encode(roswasmc_bounded_1_pal_detection_msgs_Gesture const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsGesture_decode(void const* input, size_t length, roswasmc_bounded_1_pal_detection_msgs_Gesture* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsLegDetections_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsLegDetections_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsLegDetections_validate(roswasmc_bounded_1_pal_detection_msgs_LegDetections const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsLegDetections_wire_size(roswasmc_bounded_1_pal_detection_msgs_LegDetections const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsLegDetections_encode(roswasmc_bounded_1_pal_detection_msgs_LegDetections const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsLegDetections_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_detection_msgs_LegDetections* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacle_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacle_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacle_validate(roswasmc_bounded_1_pal_detection_msgs_Obstacle const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacle_wire_size(roswasmc_bounded_1_pal_detection_msgs_Obstacle const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacle_encode(roswasmc_bounded_1_pal_detection_msgs_Obstacle const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacle_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_detection_msgs_Obstacle* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacles_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacles_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacles_validate(roswasmc_bounded_1_pal_detection_msgs_Obstacles const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacles_wire_size(roswasmc_bounded_1_pal_detection_msgs_Obstacles const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacles_encode(roswasmc_bounded_1_pal_detection_msgs_Obstacles const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsObstacles_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_detection_msgs_Obstacles* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetection_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetection_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetection_validate(roswasmc_bounded_1_pal_detection_msgs_PersonDetection const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetection_wire_size(roswasmc_bounded_1_pal_detection_msgs_PersonDetection const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetection_encode(roswasmc_bounded_1_pal_detection_msgs_PersonDetection const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetection_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_detection_msgs_PersonDetection* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetections_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetections_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetections_validate(roswasmc_bounded_1_pal_detection_msgs_PersonDetections const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetections_wire_size(roswasmc_bounded_1_pal_detection_msgs_PersonDetections const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetections_encode(roswasmc_bounded_1_pal_detection_msgs_PersonDetections const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsPersonDetections_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_detection_msgs_PersonDetections* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsCompressedImage_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsCompressedImage_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsCompressedImage_validate(roswasmc_bounded_1_sensor_msgs_CompressedImage const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsCompressedImage_wire_size(roswasmc_bounded_1_sensor_msgs_CompressedImage const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsCompressedImage_encode(roswasmc_bounded_1_sensor_msgs_CompressedImage const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Sensor_msgsCompressedImage_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_sensor_msgs_CompressedImage* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObject_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObject_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObject_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizedObject const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObject_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizedObject const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObject_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizedObject const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObject_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_detection_msgs_RecognizedObject* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObjectArray_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObjectArray_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObjectArray_validate(
        roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObjectArray_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObjectArray_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedObjectArray_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_validate(
        roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_encode(
        roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_validate(
        roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_encode(
        roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedActions_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedActions_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedActions_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizedActions const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedActions_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizedActions const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedActions_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizedActions const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizedActions_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_detection_msgs_RecognizedActions* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerRequest_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerRequest_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerRequest_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerResponse_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerResponse_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerResponse_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRecognizerResponse_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRotatedDetection2d_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRotatedDetection2d_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRotatedDetection2d_validate(roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRotatedDetection2d_wire_size(roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRotatedDetection2d_encode(roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsRotatedDetection2d_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_validate(
        roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_encode(
        roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_validate(
        roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_encode(
        roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseRequest_validate(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseRequest_wire_size(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseRequest_encode(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseResponse_validate(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseResponse_wire_size(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseResponse_encode(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsSetDatabaseResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_validate(
        roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_encode(
        roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_validate(
        roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_encode(
        roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_validate(
        roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_encode(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_validate(
        roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_encode(
        roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsTexturedObjectDetection_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsTexturedObjectDetection_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsTexturedObjectDetection_validate(
        roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsTexturedObjectDetection_wire_size(
        roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsTexturedObjectDetection_encode(
        roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsTexturedObjectDetection_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsWaveDetection_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsWaveDetection_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsWaveDetection_validate(roswasmc_bounded_1_pal_detection_msgs_WaveDetection const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsWaveDetection_wire_size(roswasmc_bounded_1_pal_detection_msgs_WaveDetection const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsWaveDetection_encode(roswasmc_bounded_1_pal_detection_msgs_WaveDetection const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_detection_msgsWaveDetection_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_detection_msgs_WaveDetection* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBatteryState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBatteryState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBatteryState_validate(roswasmc_bounded_1_pal_device_msgs_BatteryState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBatteryState_wire_size(roswasmc_bounded_1_pal_device_msgs_BatteryState const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBatteryState_encode(roswasmc_bounded_1_pal_device_msgs_BatteryState const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBatteryState_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_device_msgs_BatteryState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBumper_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBumper_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBumper_validate(roswasmc_bounded_1_pal_device_msgs_Bumper const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBumper_wire_size(roswasmc_bounded_1_pal_device_msgs_Bumper const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBumper_encode(roswasmc_bounded_1_pal_device_msgs_Bumper const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBumper_decode(void const* input, size_t length, roswasmc_bounded_1_pal_device_msgs_Bumper* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectRequest_validate(roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectRequest_wire_size(roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectRequest_encode(roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectRequest_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectResponse_validate(roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectResponse_wire_size(roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectResponse_encode(roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsCancelEffectResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsColorRGBA_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsColorRGBA_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsColorRGBA_validate(roswasmc_bounded_1_std_msgs_ColorRGBA const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsColorRGBA_wire_size(roswasmc_bounded_1_std_msgs_ColorRGBA const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsColorRGBA_encode(roswasmc_bounded_1_std_msgs_ColorRGBA const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsColorRGBA_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_ColorRGBA* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFixedColorParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFixedColorParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFixedColorParams_validate(roswasmc_bounded_1_pal_device_msgs_LedFixedColorParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFixedColorParams_wire_size(roswasmc_bounded_1_pal_device_msgs_LedFixedColorParams const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFixedColorParams_encode(roswasmc_bounded_1_pal_device_msgs_LedFixedColorParams const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFixedColorParams_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_device_msgs_LedFixedColorParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedRainbowParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedRainbowParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedRainbowParams_validate(roswasmc_bounded_1_pal_device_msgs_LedRainbowParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedRainbowParams_wire_size(roswasmc_bounded_1_pal_device_msgs_LedRainbowParams const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedRainbowParams_encode(roswasmc_bounded_1_pal_device_msgs_LedRainbowParams const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedRainbowParams_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_device_msgs_LedRainbowParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFadeParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFadeParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFadeParams_validate(roswasmc_bounded_1_pal_device_msgs_LedFadeParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFadeParams_wire_size(roswasmc_bounded_1_pal_device_msgs_LedFadeParams const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFadeParams_encode(roswasmc_bounded_1_pal_device_msgs_LedFadeParams const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFadeParams_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_device_msgs_LedFadeParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedBlinkParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedBlinkParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedBlinkParams_validate(roswasmc_bounded_1_pal_device_msgs_LedBlinkParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedBlinkParams_wire_size(roswasmc_bounded_1_pal_device_msgs_LedBlinkParams const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedBlinkParams_encode(roswasmc_bounded_1_pal_device_msgs_LedBlinkParams const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedBlinkParams_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_device_msgs_LedBlinkParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedProgressParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedProgressParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedProgressParams_validate(roswasmc_bounded_1_pal_device_msgs_LedProgressParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedProgressParams_wire_size(roswasmc_bounded_1_pal_device_msgs_LedProgressParams const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedProgressParams_encode(roswasmc_bounded_1_pal_device_msgs_LedProgressParams const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedProgressParams_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_device_msgs_LedProgressParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFlowParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFlowParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFlowParams_validate(roswasmc_bounded_1_pal_device_msgs_LedFlowParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFlowParams_wire_size(roswasmc_bounded_1_pal_device_msgs_LedFlowParams const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFlowParams_encode(roswasmc_bounded_1_pal_device_msgs_LedFlowParams const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedFlowParams_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_device_msgs_LedFlowParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedPreProgrammedParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedPreProgrammedParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedPreProgrammedParams_validate(roswasmc_bounded_1_pal_device_msgs_LedPreProgrammedParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedPreProgrammedParams_wire_size(roswasmc_bounded_1_pal_device_msgs_LedPreProgrammedParams const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedPreProgrammedParams_encode(roswasmc_bounded_1_pal_device_msgs_LedPreProgrammedParams const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedPreProgrammedParams_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_device_msgs_LedPreProgrammedParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectViaTopicParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectViaTopicParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectViaTopicParams_validate(roswasmc_bounded_1_pal_device_msgs_LedEffectViaTopicParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectViaTopicParams_wire_size(roswasmc_bounded_1_pal_device_msgs_LedEffectViaTopicParams const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectViaTopicParams_encode(roswasmc_bounded_1_pal_device_msgs_LedEffectViaTopicParams const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectViaTopicParams_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_device_msgs_LedEffectViaTopicParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedDataArrayParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedDataArrayParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedDataArrayParams_validate(roswasmc_bounded_1_pal_device_msgs_LedDataArrayParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedDataArrayParams_wire_size(roswasmc_bounded_1_pal_device_msgs_LedDataArrayParams const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedDataArrayParams_encode(roswasmc_bounded_1_pal_device_msgs_LedDataArrayParams const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedDataArrayParams_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_device_msgs_LedDataArrayParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectParams_validate(roswasmc_bounded_1_pal_device_msgs_LedEffectParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectParams_wire_size(roswasmc_bounded_1_pal_device_msgs_LedEffectParams const* value,
                                                                                     size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectParams_encode(roswasmc_bounded_1_pal_device_msgs_LedEffectParams const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedEffectParams_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_device_msgs_LedEffectParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectGoal_validate(roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectGoal_wire_size(roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectGoal_encode(roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectGoal_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectResult_validate(roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectResult_wire_size(roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectResult_encode(roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectResult_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectFeedback_validate(
        roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectFeedback_wire_size(
        roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectFeedback_encode(roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsDoTimedLedEffectFeedback_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedGroup_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedGroup_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedGroup_validate(roswasmc_bounded_1_pal_device_msgs_LedGroup const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedGroup_wire_size(roswasmc_bounded_1_pal_device_msgs_LedGroup const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedGroup_encode(roswasmc_bounded_1_pal_device_msgs_LedGroup const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsLedGroup_decode(void const* input, size_t length, roswasmc_bounded_1_pal_device_msgs_LedGroup* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest_validate(
        roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest_wire_size(
        roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest_encode(
        roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse_validate(
        roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse_wire_size(
        roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse_encode(
        roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectRequest_validate(roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectRequest_wire_size(roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectRequest_encode(roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectResponse_validate(
        roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectResponse_wire_size(
        roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectResponse_encode(roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedBlinkEffectResponse_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectRequest_validate(
        roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectRequest_wire_size(
        roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectRequest_encode(roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectRequest_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectResponse_validate(
        roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectResponse_wire_size(
        roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectResponse_encode(
        roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedColourEffectResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectRequest_validate(roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectRequest_wire_size(roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectRequest_encode(roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectRequest_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectResponse_validate(roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectResponse_wire_size(roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectResponse_encode(roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsTimedFadeEffectResponse_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRActivation_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRActivation_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRActivation_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRActivation const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRActivation_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRActivation const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRActivation_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRActivation const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRActivation_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_ASRActivation* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsActiontag_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsActiontag_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsActiontag_validate(roswasmc_bounded_1_pal_interaction_msgs_actiontag const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsActiontag_wire_size(roswasmc_bounded_1_pal_interaction_msgs_actiontag const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsActiontag_encode(roswasmc_bounded_1_pal_interaction_msgs_actiontag const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsActiontag_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_actiontag* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrresult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrresult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrresult_validate(roswasmc_bounded_1_pal_interaction_msgs_asrresult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrresult_wire_size(roswasmc_bounded_1_pal_interaction_msgs_asrresult const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrresult_encode(roswasmc_bounded_1_pal_interaction_msgs_asrresult const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrresult_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_asrresult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASREvent_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASREvent_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASREvent_validate(roswasmc_bounded_1_pal_interaction_msgs_ASREvent const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASREvent_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASREvent const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASREvent_encode(roswasmc_bounded_1_pal_interaction_msgs_ASREvent const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASREvent_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_interaction_msgs_ASREvent* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileGoal_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileGoal_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileGoal_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileGoal_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileResult_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileResult_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileResult_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileResult_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileFeedback_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileFeedback_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileFeedback_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRFileFeedback_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLanguage_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLanguage_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLanguage_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLanguage_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLanguage_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRLanguage_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvRequest_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvRequest_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvRequest_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvRequest_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceRequest_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceRequest_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceRequest_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceRequest_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_validate(
        roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_wire_size(
        roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_encode(
        roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRStatus_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRStatus_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRStatus_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRStatus const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRStatus_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRStatus const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRStatus_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRStatus const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRStatus_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_ASRStatus* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvResponse_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvResponse_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvResponse_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRSrvResponse_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceResponse_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceResponse_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceResponse_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsASRServiceResponse_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayGoal_validate(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayGoal_wire_size(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayGoal_encode(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayGoal_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayResult_validate(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayResult_wire_size(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayResult_encode(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayResult_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_validate(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_wire_size(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_encode(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayerState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayerState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayerState_validate(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayerState_wire_size(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayerState_encode(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudioPlayerState_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsDirectionOfArrival_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsDirectionOfArrival_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsDirectionOfArrival_validate(roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsDirectionOfArrival_wire_size(roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsDirectionOfArrival_encode(roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsDirectionOfArrival_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_validate(
        roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_wire_size(
        roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_encode(
        roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nArgument_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nArgument_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nArgument_validate(roswasmc_bounded_1_pal_interaction_msgs_I18nArgument const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nArgument_wire_size(roswasmc_bounded_1_pal_interaction_msgs_I18nArgument const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nArgument_encode(roswasmc_bounded_1_pal_interaction_msgs_I18nArgument const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nArgument_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_interaction_msgs_I18nArgument* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nText_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nText_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nText_validate(roswasmc_bounded_1_pal_interaction_msgs_I18nText const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nText_wire_size(roswasmc_bounded_1_pal_interaction_msgs_I18nText const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nText_encode(roswasmc_bounded_1_pal_interaction_msgs_I18nText const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsI18nText_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_interaction_msgs_I18nText* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsText_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsText_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsText_validate(roswasmc_bounded_1_pal_interaction_msgs_TtsText const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsText_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TtsText const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsText_encode(roswasmc_bounded_1_pal_interaction_msgs_TtsText const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsText_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_interaction_msgs_TtsText* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_validate(
        roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_wire_size(
        roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_encode(
        roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_validate(
        roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_wire_size(
        roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_encode(
        roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInputArgument_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInputArgument_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInputArgument_validate(roswasmc_bounded_1_pal_interaction_msgs_InputArgument const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInputArgument_wire_size(roswasmc_bounded_1_pal_interaction_msgs_InputArgument const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInputArgument_encode(roswasmc_bounded_1_pal_interaction_msgs_InputArgument const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInputArgument_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_InputArgument* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInput_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInput_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInput_validate(roswasmc_bounded_1_pal_interaction_msgs_Input const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInput_wire_size(roswasmc_bounded_1_pal_interaction_msgs_Input const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInput_encode(roswasmc_bounded_1_pal_interaction_msgs_Input const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsInput_decode(void const* input, size_t length, roswasmc_bounded_1_pal_interaction_msgs_Input* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundGoal_validate(roswasmc_bounded_1_pal_interaction_msgs_SoundGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundGoal_wire_size(roswasmc_bounded_1_pal_interaction_msgs_SoundGoal const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundGoal_encode(roswasmc_bounded_1_pal_interaction_msgs_SoundGoal const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundGoal_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_SoundGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundResult_validate(roswasmc_bounded_1_pal_interaction_msgs_SoundResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundResult_wire_size(roswasmc_bounded_1_pal_interaction_msgs_SoundResult const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundResult_encode(roswasmc_bounded_1_pal_interaction_msgs_SoundResult const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundResult_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_SoundResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundFeedback_validate(roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundFeedback_wire_size(roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundFeedback_encode(roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundFeedback_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_validate(
        roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_wire_size(
        roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_encode(
        roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_validate(
        roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_wire_size(
        roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_encode(
        roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTTSstate_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTTSstate_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTTSstate_validate(roswasmc_bounded_1_pal_interaction_msgs_TTSstate const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTTSstate_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TTSstate const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTTSstate_encode(roswasmc_bounded_1_pal_interaction_msgs_TTSstate const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTTSstate_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_interaction_msgs_TTSstate* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsGoal_validate(roswasmc_bounded_1_pal_interaction_msgs_TtsGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsGoal_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TtsGoal const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsGoal_encode(roswasmc_bounded_1_pal_interaction_msgs_TtsGoal const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsGoal_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_interaction_msgs_TtsGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsResult_validate(roswasmc_bounded_1_pal_interaction_msgs_TtsResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsResult_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TtsResult const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsResult_encode(roswasmc_bounded_1_pal_interaction_msgs_TtsResult const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsResult_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_TtsResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsMark_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsMark_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsMark_validate(roswasmc_bounded_1_pal_interaction_msgs_TtsMark const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsMark_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TtsMark const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsMark_encode(roswasmc_bounded_1_pal_interaction_msgs_TtsMark const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsMark_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_interaction_msgs_TtsMark* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsFeedback_validate(roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsFeedback_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsFeedback_encode(roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsTtsFeedback_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsVoiceActivity_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsVoiceActivity_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsVoiceActivity_validate(roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsVoiceActivity_wire_size(roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsVoiceActivity_encode(roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsVoiceActivity_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsWebGuiEvent_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsWebGuiEvent_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsWebGuiEvent_validate(roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsWebGuiEvent_wire_size(roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsWebGuiEvent_encode(roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsWebGuiEvent_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrupdate_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrupdate_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrupdate_validate(roswasmc_bounded_1_pal_interaction_msgs_asrupdate const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrupdate_wire_size(roswasmc_bounded_1_pal_interaction_msgs_asrupdate const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrupdate_encode(roswasmc_bounded_1_pal_interaction_msgs_asrupdate const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAsrupdate_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_asrupdate* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudiosignal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudiosignal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudiosignal_validate(roswasmc_bounded_1_pal_interaction_msgs_audiosignal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudiosignal_wire_size(roswasmc_bounded_1_pal_interaction_msgs_audiosignal const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudiosignal_encode(roswasmc_bounded_1_pal_interaction_msgs_audiosignal const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsAudiosignal_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_audiosignal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_validate(
        roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_wire_size(
        roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_encode(
        roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_validate(
        roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_wire_size(
        roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_encode(
        roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_validate(
        roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_wire_size(
        roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_encode(
        roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModel_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModel_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModel_validate(roswasmc_bounded_1_pal_motion_model_msgs_MotionModel const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModel_wire_size(roswasmc_bounded_1_pal_motion_model_msgs_MotionModel const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModel_encode(roswasmc_bounded_1_pal_motion_model_msgs_MotionModel const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModel_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_motion_model_msgs_MotionModel* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelList_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelList_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelList_validate(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelList_wire_size(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelList_encode(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelList_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelMap_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelMap_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelMap_validate(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelMap_wire_size(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelMap_encode(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsMotionModelMap_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_validate(
        roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_wire_size(
        roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_encode(
        roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_validate(
        roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_wire_size(
        roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_encode(roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_simulation_msgsExternalWrench_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_simulation_msgsExternalWrench_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_simulation_msgsExternalWrench_validate(roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_simulation_msgsExternalWrench_wire_size(roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_simulation_msgsExternalWrench_encode(roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_simulation_msgsExternalWrench_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsString_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsString_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsString_validate(roswasmc_bounded_1_std_msgs_String const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsString_wire_size(roswasmc_bounded_1_std_msgs_String const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Std_msgsString_encode(roswasmc_bounded_1_std_msgs_String const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsString_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_String* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsBool_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsBool_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsBool_validate(roswasmc_bounded_1_std_msgs_Bool const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsBool_wire_size(roswasmc_bounded_1_std_msgs_Bool const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsBool_encode(roswasmc_bounded_1_std_msgs_Bool const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsBool_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Bool* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsFunctionalityStatus_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsFunctionalityStatus_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsFunctionalityStatus_validate(roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsFunctionalityStatus_wire_size(roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsFunctionalityStatus_encode(roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsFunctionalityStatus_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsRobotStatus_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsRobotStatus_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsRobotStatus_validate(roswasmc_bounded_1_pal_tablet_msgs_RobotStatus const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsRobotStatus_wire_size(roswasmc_bounded_1_pal_tablet_msgs_RobotStatus const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsRobotStatus_encode(roswasmc_bounded_1_pal_tablet_msgs_RobotStatus const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_tablet_msgsRobotStatus_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_tablet_msgs_RobotStatus* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_validate(
        roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_wire_size(
        roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_encode(
        roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_validate(
        roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_wire_size(
        roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_encode(
        roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_validate(
        roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_wire_size(
        roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_encode(
        roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_validate(
        roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_wire_size(
        roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_encode(
        roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedObject_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedObject_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedObject_validate(roswasmc_bounded_1_pal_vision_msgs_DetectedObject const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedObject_wire_size(roswasmc_bounded_1_pal_vision_msgs_DetectedObject const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedObject_encode(roswasmc_bounded_1_pal_vision_msgs_DetectedObject const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedObject_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_vision_msgs_DetectedObject* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsRectangle_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsRectangle_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsRectangle_validate(roswasmc_bounded_1_pal_vision_msgs_Rectangle const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsRectangle_wire_size(roswasmc_bounded_1_pal_vision_msgs_Rectangle const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsRectangle_encode(roswasmc_bounded_1_pal_vision_msgs_Rectangle const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsRectangle_decode(void const* input, size_t length, roswasmc_bounded_1_pal_vision_msgs_Rectangle* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedPerson_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedPerson_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedPerson_validate(roswasmc_bounded_1_pal_vision_msgs_DetectedPerson const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedPerson_wire_size(roswasmc_bounded_1_pal_vision_msgs_DetectedPerson const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedPerson_encode(roswasmc_bounded_1_pal_vision_msgs_DetectedPerson const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsDetectedPerson_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_vision_msgs_DetectedPerson* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetection_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetection_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetection_validate(roswasmc_bounded_1_pal_vision_msgs_FaceDetection const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetection_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceDetection const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetection_encode(roswasmc_bounded_1_pal_vision_msgs_FaceDetection const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetection_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_vision_msgs_FaceDetection* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetections_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetections_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetections_validate(roswasmc_bounded_1_pal_vision_msgs_FaceDetections const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetections_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceDetections const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetections_encode(roswasmc_bounded_1_pal_vision_msgs_FaceDetections const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceDetections_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_vision_msgs_FaceDetections* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_validate(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_encode(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionResult_validate(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionResult_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionResult_encode(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionResult_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_validate(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_encode(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_validate(
        roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_wire_size(
        roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_encode(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_validate(
        roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_wire_size(
        roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_encode(
        roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_validate(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_encode(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_validate(
        roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_wire_size(
        roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_encode(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeResponse_validate(roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeResponse_wire_size(roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeResponse_encode(roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeResponse_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartRequest_validate(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartRequest_wire_size(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartRequest_encode(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartResponse_validate(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartResponse_wire_size(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartResponse_encode(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStartResponse_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopRequest_validate(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopRequest_wire_size(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopRequest_encode(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopRequest_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopResponse_validate(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopResponse_wire_size(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopResponse_encode(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsFollowMeStopResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsGesture_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsGesture_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsGesture_validate(roswasmc_bounded_1_pal_vision_msgs_Gesture const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsGesture_wire_size(roswasmc_bounded_1_pal_vision_msgs_Gesture const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsGesture_encode(roswasmc_bounded_1_pal_vision_msgs_Gesture const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsGesture_decode(void const* input, size_t length, roswasmc_bounded_1_pal_vision_msgs_Gesture* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHeadPanTilt_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHeadPanTilt_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHeadPanTilt_validate(roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHeadPanTilt_wire_size(roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHeadPanTilt_encode(roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHeadPanTilt_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetection_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetection_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetection_validate(roswasmc_bounded_1_pal_vision_msgs_HogDetection const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetection_wire_size(roswasmc_bounded_1_pal_vision_msgs_HogDetection const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetection_encode(roswasmc_bounded_1_pal_vision_msgs_HogDetection const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetection_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_vision_msgs_HogDetection* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetections_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetections_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetections_validate(roswasmc_bounded_1_pal_vision_msgs_HogDetections const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetections_wire_size(roswasmc_bounded_1_pal_vision_msgs_HogDetections const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetections_encode(roswasmc_bounded_1_pal_vision_msgs_HogDetections const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsHogDetections_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_vision_msgs_HogDetections* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLegDetections_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLegDetections_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLegDetections_validate(roswasmc_bounded_1_pal_vision_msgs_LegDetections const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLegDetections_wire_size(roswasmc_bounded_1_pal_vision_msgs_LegDetections const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLegDetections_encode(roswasmc_bounded_1_pal_vision_msgs_LegDetections const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLegDetections_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_vision_msgs_LegDetections* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelRequest_validate(roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelRequest_wire_size(roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelRequest_encode(roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelRequest_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelResponse_validate(roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelResponse_wire_size(roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelResponse_encode(roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_vision_msgsLookToPixelResponse_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_validate(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_wire_size(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_encode(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_validate(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_wire_size(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_encode(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_validate(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_wire_size(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_encode(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_validate(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_wire_size(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_encode(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_validate(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_wire_size(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_encode(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_validate(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_wire_size(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_encode(
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsContactState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsContactState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsContactState_validate(roswasmc_bounded_1_pal_walking_msgs_ContactState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsContactState_wire_size(roswasmc_bounded_1_pal_walking_msgs_ContactState const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsContactState_encode(roswasmc_bounded_1_pal_walking_msgs_ContactState const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsContactState_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_walking_msgs_ContactState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_validate(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_wire_size(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_encode(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_validate(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_wire_size(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_encode(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSMStatus_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSMStatus_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSMStatus_validate(roswasmc_bounded_1_pal_walking_msgs_SMStatus const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSMStatus_wire_size(roswasmc_bounded_1_pal_walking_msgs_SMStatus const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSMStatus_encode(roswasmc_bounded_1_pal_walking_msgs_SMStatus const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSMStatus_decode(void const* input, size_t length, roswasmc_bounded_1_pal_walking_msgs_SMStatus* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitRequest_validate(roswasmc_bounded_1_pal_walking_msgs_SitRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitRequest_wire_size(roswasmc_bounded_1_pal_walking_msgs_SitRequest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitRequest_encode(roswasmc_bounded_1_pal_walking_msgs_SitRequest const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitRequest_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_walking_msgs_SitRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitResponse_validate(roswasmc_bounded_1_pal_walking_msgs_SitResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitResponse_wire_size(roswasmc_bounded_1_pal_walking_msgs_SitResponse const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitResponse_encode(roswasmc_bounded_1_pal_walking_msgs_SitResponse const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsSitResponse_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_walking_msgs_SitResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverRequest_validate(roswasmc_bounded_1_pal_walking_msgs_StepOverRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverRequest_wire_size(roswasmc_bounded_1_pal_walking_msgs_StepOverRequest const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverRequest_encode(roswasmc_bounded_1_pal_walking_msgs_StepOverRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_walking_msgs_StepOverRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverResponse_validate(roswasmc_bounded_1_pal_walking_msgs_StepOverResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverResponse_wire_size(roswasmc_bounded_1_pal_walking_msgs_StepOverResponse const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverResponse_encode(roswasmc_bounded_1_pal_walking_msgs_StepOverResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsStepOverResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_walking_msgs_StepOverResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsRequest_validate(roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsRequest_wire_size(roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsRequest_encode(roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsRequest_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsResponse_validate(roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsResponse_wire_size(roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsResponse_encode(roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkStepsResponse_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStatus_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStatus_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStatus_validate(roswasmc_bounded_1_pal_walking_msgs_WalkingStatus const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStatus_wire_size(roswasmc_bounded_1_pal_walking_msgs_WalkingStatus const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStatus_encode(roswasmc_bounded_1_pal_walking_msgs_WalkingStatus const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStatus_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_walking_msgs_WalkingStatus* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsDuration_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsDuration_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsDuration_validate(roswasmc_bounded_1_std_msgs_Duration const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsDuration_wire_size(roswasmc_bounded_1_std_msgs_Duration const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsDuration_encode(roswasmc_bounded_1_std_msgs_Duration const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Std_msgsDuration_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Duration* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStep_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStep_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStep_validate(roswasmc_bounded_1_pal_walking_msgs_WalkingStep const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStep_wire_size(roswasmc_bounded_1_pal_walking_msgs_WalkingStep const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStep_encode(roswasmc_bounded_1_pal_walking_msgs_WalkingStep const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_walking_msgsWalkingStep_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_walking_msgs_WalkingStep* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_validate(
        roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_wire_size(
        roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_encode(
        roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignal_validate(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignal_wire_size(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignal_encode(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignal_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_validate(
        roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_wire_size(
        roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_encode(
        roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList const* value,
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
        uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_validate(
        roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_wire_size(
        roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_encode(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_validate(
        roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_wire_size(
        roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_encode(
        roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros1_noetic_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse* value);

#ifdef __cplusplus
}
#endif
#endif
