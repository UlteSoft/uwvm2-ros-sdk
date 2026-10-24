/**
 * @file abi.c
 * @brief Delegate the complete pal/ros2_humble_devel foreign ABI to the canonical C codecs.
 * @details No field, bound, default, malformed-wire rule or outcome is synthesized.
 * Link this source into the same application as the foreign-language caller.
 */
#include <pal/c_ffi_bridge/ros2/ros2_humble_devel/abi.h>

size_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Duration);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Duration);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_validate(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgDuration_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_builtin_interfaces_msg_Duration* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_validate(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Builtin_interfacesMsgTime_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_ColorRGBA);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_ColorRGBA);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_validate(roswasmc_bounded_2_std_msgs_msg_ColorRGBA const* value)
{
    return roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_wire_size(roswasmc_bounded_2_std_msgs_msg_ColorRGBA const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_encode(roswasmc_bounded_2_std_msgs_msg_ColorRGBA const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_2_std_msgs_msg_ColorRGBA_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgColorRGBA_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_ColorRGBA* value)
{
    return roswasmc_bounded_2_std_msgs_msg_ColorRGBA_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFixedColorParams_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedRainbowParams_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFadeParams_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedBlinkParams_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedProgressParams_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedFlowParams_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_wire_size(
    roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedPreProgrammedParams_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_validate(
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_wire_size(
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectViaTopicParams_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedDataArrayParams_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedEffectParams_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_validate(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_wire_size(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_encode(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal* value)
{
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_validate(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_wire_size(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_encode(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Result_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result* value)
{
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_validate(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_wire_size(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_encode(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback* value)
{
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_validate(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState const* value,
                                                                                 size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_encode(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBatteryState_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_pal_device_msgs_msg_BatteryState* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_Header);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_Header);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_validate(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_std_msgs_msg_Header_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Std_msgsMsgHeader_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_Bumper);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_Bumper);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_validate(roswasmc_bounded_2_pal_device_msgs_msg_Bumper const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_Bumper_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_Bumper const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_Bumper_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_Bumper_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_encode(roswasmc_bounded_2_pal_device_msgs_msg_Bumper const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_Bumper_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgBumper_decode(void const* input, size_t length, roswasmc_bounded_2_pal_device_msgs_msg_Bumper* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_Bumper_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_validate(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsMsgLedGroup_decode(void const* input, size_t length, roswasmc_bounded_2_pal_device_msgs_msg_LedGroup* value)
{
    return roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_validate(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_wire_size(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_encode(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Request_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_validate(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_wire_size(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_encode(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvCancelEffect_Response_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_validate(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_wire_size(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_encode(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_validate(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_wire_size(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_encode(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_validate(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_wire_size(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_encode(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_validate(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_wire_size(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_encode(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_validate(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_wire_size(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_encode(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Request_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_validate(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_wire_size(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_encode(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedColourEffect_Response_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_validate(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_wire_size(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_encode(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Request_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_decode(input, length, value);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response);
}

size_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response);
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_validate(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response const* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_wire_size(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_encode(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros2_humble_devel_Ros2Pal_device_msgsSrvTimedFadeEffect_Response_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_decode(input, length, value);
}
