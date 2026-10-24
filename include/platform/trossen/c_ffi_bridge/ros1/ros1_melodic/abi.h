/**
 * @file abi.h
 * @brief Expose every complete trossen/ros1_melodic record through linkable C ABI functions.
 * @details All pointers refer to live, correctly aligned guest memory. Sizes use
 * the selected guest size_t width. No host pointer, ROS capability, allocator or
 * foreign runtime is created here. A profile is a wire contract, never a grant.
 * Keep record, input/output and size-result storage disjoint for each call.
 */
#ifndef UWVM_C_FFI_9A7DFD87043506353476B07FAFEAE5166965BA26037A26CAF97DBB3C88ED7591
#define UWVM_C_FFI_9A7DFD87043506353476B07FAFEAE5166965BA26037A26CAF97DBB3C88ED7591
#include <trossen/c/ros1/trossen-ros1-melodic-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsArmJoy_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsArmJoy_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsArmJoy_validate(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsArmJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsArmJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy const* value,
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
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsArmJoy_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsHexJoy_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsHexJoy_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsHexJoy_validate(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsHexJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsHexJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy const* value,
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
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsHexJoy_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_HexJoy* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointGroupCommand_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointGroupCommand_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointGroupCommand_validate(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointGroupCommand_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointGroupCommand_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointGroupCommand_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointSingleCommand_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointSingleCommand_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointSingleCommand_validate(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointSingleCommand_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointSingleCommand_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointSingleCommand_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTemps_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTemps_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTemps_validate(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTemps_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps const* value,
                                                                                  size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTemps_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTemps_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_interbotix_xs_msgs_JointTemps* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Time_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Time_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Time_validate(roswasmc_bounded_1_time const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Time_wire_size(roswasmc_bounded_1_time const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Time_encode(roswasmc_bounded_1_time const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Time_decode(void const* input, size_t length, roswasmc_bounded_1_time* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Std_msgsHeader_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Std_msgsHeader_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Std_msgsHeader_validate(roswasmc_bounded_1_std_msgs_Header const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Std_msgsHeader_wire_size(roswasmc_bounded_1_std_msgs_Header const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Std_msgsHeader_encode(roswasmc_bounded_1_std_msgs_Header const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Std_msgsHeader_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Header* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Duration_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Duration_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Duration_validate(roswasmc_bounded_1_duration const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Duration_wire_size(roswasmc_bounded_1_duration const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Duration_encode(roswasmc_bounded_1_duration const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Duration_decode(void const* input, size_t length, roswasmc_bounded_1_duration* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectoryPoint_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectoryPoint_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectoryPoint_validate(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectoryPoint_wire_size(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectoryPoint_encode(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectoryPoint_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectory_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectory_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectory_validate(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectory_wire_size(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectory_encode(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Trajectory_msgsJointTrajectory_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_trajectory_msgs_JointTrajectory* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTrajectoryCommand_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTrajectoryCommand_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTrajectoryCommand_validate(
        roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTrajectoryCommand_wire_size(
        roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTrajectoryCommand_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsJointTrajectoryCommand_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsLocobotJoy_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsLocobotJoy_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsLocobotJoy_validate(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsLocobotJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy const* value,
                                                                                  size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsLocobotJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsLocobotJoy_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsRequest_validate(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsRequest_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsResponse_validate(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsMotorGainsResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesRequest_validate(
        roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesRequest_wire_size(
        roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesResponse_validate(
        roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesResponse_wire_size(
        roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsOperatingModesResponse_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootRequest_validate(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest const* value,
                                                                                     size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootRequest_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootResponse_validate(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRebootResponse_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesRequest_validate(
        roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesRequest_wire_size(
        roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesResponse_validate(
        roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesResponse_wire_size(
        roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRegisterValuesResponse_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoRequest_validate(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoRequest_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoResponse_validate(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsRobotInfoResponse_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableRequest_validate(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableResponse_validate(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTorqueEnableResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTurretJoy_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTurretJoy_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTurretJoy_validate(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTurretJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTurretJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Interbotix_xs_msgsTurretJoy_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrRequest_validate(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrRequest_wire_size(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrRequest_encode(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value,
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
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_ClearErrRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrResponse_validate(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrResponse_wire_size(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrResponse_encode(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value,
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
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsClearErrResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_ClearErrResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusRequest_validate(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusRequest_wire_size(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusRequest_encode(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusResponse_validate(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusResponse_wire_size(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusResponse_encode(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsConfigToolModbusResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIORequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIORequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIORequest_validate(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIORequest_encode(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIORequest_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIOResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIOResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIOResponse_validate(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value,
                                                                                  size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIOResponse_encode(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetAnalogIOResponse_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIORequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIORequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIORequest_validate(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIORequest_encode(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIORequest_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIOResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIOResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIOResponse_validate(
        roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIOResponse_wire_size(
        roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIOResponse_encode(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetControllerDigitalIOResponse_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIORequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIORequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIORequest_validate(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value,
                                                                                  size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIORequest_encode(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIORequest_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIOResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIOResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIOResponse_validate(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIOResponse_encode(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetDigitalIOResponse_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrRequest_validate(roswasmc_bounded_1_xarm_msgs_GetErrRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetErrRequest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrRequest_encode(roswasmc_bounded_1_xarm_msgs_GetErrRequest const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetErrRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrResponse_validate(roswasmc_bounded_1_xarm_msgs_GetErrResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetErrResponse const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrResponse_encode(roswasmc_bounded_1_xarm_msgs_GetErrResponse const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGetErrResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetErrResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigRequest_validate(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigRequest_encode(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigRequest_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_xarm_msgs_GripperConfigRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigResponse_validate(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigResponse_encode(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperConfigResponse_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_xarm_msgs_GripperConfigResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveRequest_validate(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveRequest_encode(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveRequest_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_xarm_msgs_GripperMoveRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveResponse_validate(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse const* value,
                                                                                  size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveResponse_encode(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperMoveResponse_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_xarm_msgs_GripperMoveResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateRequest_validate(roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* value,
                                                                                  size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateRequest_encode(roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateRequest_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_xarm_msgs_GripperStateRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateResponse_validate(roswasmc_bounded_1_xarm_msgs_GripperStateResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GripperStateResponse const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateResponse_encode(roswasmc_bounded_1_xarm_msgs_GripperStateResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsGripperStateResponse_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_xarm_msgs_GripperStateResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsIOState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsIOState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsIOState_validate(roswasmc_bounded_1_xarm_msgs_IOState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsIOState_wire_size(roswasmc_bounded_1_xarm_msgs_IOState const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsIOState_encode(roswasmc_bounded_1_xarm_msgs_IOState const* value, void* output, size_t capacity, size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsIOState_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_IOState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveRequest_validate(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveRequest_wire_size(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveRequest_encode(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_MoveRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveResponse_validate(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveResponse_wire_size(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveResponse_encode(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsMoveResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_MoveResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsRobotMsg_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsRobotMsg_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsRobotMsg_validate(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsRobotMsg_wire_size(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsRobotMsg_encode(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsRobotMsg_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_RobotMsg* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisRequest_validate(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisRequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisRequest_encode(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetAxisRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisResponse_validate(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisResponse_encode(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value,
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
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetAxisResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetAxisResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIORequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIORequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIORequest_validate(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value,
                                                                                  size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIORequest_encode(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIORequest_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIOResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIOResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIOResponse_validate(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIOResponse_encode(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetDigitalIOResponse_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Request_validate(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Request_wire_size(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Request_encode(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value,
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
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Request_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetInt16Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Response_validate(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Response_wire_size(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Response_encode(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value,
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
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetInt16Response_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetInt16Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadRequest_validate(roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadRequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadRequest_encode(roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetLoadRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadResponse_validate(roswasmc_bounded_1_xarm_msgs_SetLoadResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetLoadResponse const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadResponse_encode(roswasmc_bounded_1_xarm_msgs_SetLoadResponse const* value,
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
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetLoadResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetLoadResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusRequest_validate(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusRequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusRequest_encode(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusRequest_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusResponse_validate(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusResponse_encode(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsSetToolModbusResponse_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetRequest_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetRequest_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetRequest_validate(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetRequest_wire_size(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetRequest_encode(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value,
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
        uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetResponse_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetResponse_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetResponse_validate(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetResponse_wire_size(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetResponse_encode(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_melodic_Ros1Xarm_msgsTCPOffsetResponse_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse* value);

#ifdef __cplusplus
}
#endif
#endif
