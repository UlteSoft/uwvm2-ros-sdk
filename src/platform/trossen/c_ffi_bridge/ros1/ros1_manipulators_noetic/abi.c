/**
 * @file abi.c
 * @brief Delegate the complete trossen/ros1_manipulators_noetic foreign ABI to the canonical C codecs.
 * @details No field, bound, default, malformed-wire rule or outcome is synthesized.
 * Link this source into the same application as the foreign-language caller.
 */
#include <trossen/c_ffi_bridge/ros1/ros1_manipulators_noetic/abi.h>

size_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy);
}

size_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy);
}

uint32_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_validate(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy const* value)
{
    return roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_wire_size(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_encode(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_manipulators_noetic_Ros1Interbotix_uxarm_joyArmJoy_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy* value)
{
    return roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_decode(input, length, value);
}
