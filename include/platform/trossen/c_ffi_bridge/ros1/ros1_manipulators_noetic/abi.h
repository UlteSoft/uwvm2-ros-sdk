/**
 * @file abi.h
 * @brief Expose every complete trossen/ros1_manipulators_noetic record through linkable C ABI functions.
 * @details All pointers refer to live, correctly aligned guest memory. Sizes use
 * the selected guest size_t width. No host pointer, ROS capability, allocator or
 * foreign runtime is created here. A profile is a wire contract, never a grant.
 * Keep record, input/output and size-result storage disjoint for each call.
 */
#ifndef UWVM_C_FFI_B5994ABADC16230F20293ADC1F4C751650C3A2D4A431335CA01D185959D7E1C1
#define UWVM_C_FFI_B5994ABADC16230F20293ADC1F4C751650C3A2D4A431335CA01D185959D7E1C1
#include <trossen/c/ros1/trossen-ros1-manipulators-noetic-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_validate(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_wire_size(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy const* value,
                                                                                            size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_encode(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy* value);

#ifdef __cplusplus
}
#endif
#endif
