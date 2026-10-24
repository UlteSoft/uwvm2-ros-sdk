/**
 * @file abi.h
 * @brief Expose every complete pal/ros2_humble_devel record through linkable C ABI functions.
 * @details All pointers refer to live, correctly aligned guest memory. Sizes use
 * the selected guest size_t width. No host pointer, ROS capability, allocator or
 * foreign runtime is created here. A profile is a wire contract, never a grant.
 * Keep record, input/output and size-result storage disjoint for each call.
 */
#ifndef UWVM_C_FFI_D26284503DB715D72E0343C7F2300E2FAC0FE2B42182D07DA6074577174CE2D0
#define UWVM_C_FFI_D26284503DB715D72E0343C7F2300E2FAC0FE2B42182D07DA6074577174CE2D0
#include <pal/c/ros2/pal-ros2-humble-devel-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_validate(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_builtin_interfaces_msg_Duration* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_validate(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_builtin_interfaces_msg_Time* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_validate(roswasmc_bounded_2_std_msgs_msg_ColorRGBA const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_wire_size(roswasmc_bounded_2_std_msgs_msg_ColorRGBA const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_encode(roswasmc_bounded_2_std_msgs_msg_ColorRGBA const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_ColorRGBA* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams const* value,
                                                                                       size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams const* value,
                                                                                          size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_validate(
        roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_wire_size(
        roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_encode(
        roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams const* value,
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
        uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_validate(
        roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_wire_size(
        roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_encode(
        roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams const* value,
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
        uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_validate(
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_wire_size(
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_encode(
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_validate(
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_wire_size(
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_encode(
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_validate(
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_wire_size(
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_encode(
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_validate(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState const* value,
                                                                                     size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_encode(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_pal_device_msgs_msg_BatteryState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_validate(roswasmc_bounded_2_std_msgs_msg_Header const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_validate(roswasmc_bounded_2_pal_device_msgs_msg_Bumper const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_Bumper const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_encode(roswasmc_bounded_2_pal_device_msgs_msg_Bumper const* value,
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
        uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_decode(void const* input, size_t length, roswasmc_bounded_2_pal_device_msgs_msg_Bumper* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_pal_device_msgs_msg_LedGroup* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_validate(
        roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_wire_size(
        roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_encode(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_validate(
        roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_wire_size(
        roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_encode(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_validate(
        roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_wire_size(
        roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_encode(
        roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_validate(
        roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_wire_size(
        roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_encode(
        roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_validate(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_wire_size(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_encode(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_validate(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_wire_size(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_encode(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_validate(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_wire_size(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_encode(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_validate(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_wire_size(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_encode(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_validate(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_wire_size(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_encode(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request const* value,
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
        uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_validate(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_wire_size(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_encode(
        roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response* value);

#ifdef __cplusplus
}
#endif
#endif
