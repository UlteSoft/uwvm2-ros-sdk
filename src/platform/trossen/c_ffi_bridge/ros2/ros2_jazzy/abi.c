/**
 * @file abi.c
 * @brief Delegate the complete trossen/ros2_jazzy foreign ABI to the canonical C codecs.
 * @details No field, bound, default, malformed-wire rule or outcome is synthesized.
 * Link this source into the same application as the foreign-language caller.
 */
#include <trossen/c_ffi_bridge/ros2/ros2_jazzy/abi.h>

size_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgDuration_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Duration);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgDuration_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Duration);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgDuration_validate(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgDuration_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgDuration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgDuration_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_builtin_interfaces_msg_Duration* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgTime_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgTime_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgTime_validate(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgTime_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Builtin_interfacesMsgTime_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Std_msgsMsgHeader_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_Header);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Std_msgsMsgHeader_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_Header);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Std_msgsMsgHeader_validate(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Std_msgsMsgHeader_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_std_msgs_msg_Header_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Std_msgsMsgHeader_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_footswitch_msgsMsgFootswitchState_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_footswitch_msgsMsgFootswitchState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_footswitch_msgsMsgFootswitchState_validate(
    roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState const* value)
{
    return roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_footswitch_msgsMsgFootswitchState_wire_size(
    roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_footswitch_msgsMsgFootswitchState_encode(
    roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_footswitch_msgsMsgFootswitchState_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState* value)
{
    return roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Request_validate(
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request const* value)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Request_wire_size(
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Request_encode(
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Request_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request* value)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Response_validate(
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response const* value)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Response_wire_size(
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Response_encode(
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetLightState_Response_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response* value)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request);
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Request_validate(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request const* value)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Request_wire_size(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Request_encode(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Request_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request* value)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Response_validate(
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response const* value)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Response_wire_size(
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Response_encode(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_slate_msgsSrvSetString_Response_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response* value)
{
    return roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgArmJoy_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgArmJoy_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgArmJoy_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgArmJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgArmJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgArmJoy_decode(void const* input, size_t length, roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgHexJoy_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgHexJoy_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgHexJoy_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgHexJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgHexJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgHexJoy_decode(void const* input, size_t length, roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointGroupCommand_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointGroupCommand_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointGroupCommand_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointGroupCommand_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointGroupCommand_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointGroupCommand_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointSingleCommand_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointSingleCommand_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointSingleCommand_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointSingleCommand_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointSingleCommand_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointSingleCommand_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTemps_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTemps_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTemps_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTemps_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps const* value,
                                                                               size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTemps_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTemps_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectoryPoint_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectoryPoint_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectoryPoint_validate(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectoryPoint_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectoryPoint_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectory_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectory_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectory_validate(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectory_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                 size_t* length)
{
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Trajectory_msgsMsgJointTrajectory_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_validate(
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_wire_size(
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_encode(
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgLocobotJoy_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgLocobotJoy_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgLocobotJoy_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgLocobotJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy const* value,
                                                                               size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgLocobotJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgLocobotJoy_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgTurretJoy_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgTurretJoy_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgTurretJoy_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgTurretJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgTurretJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsMsgTurretJoy_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Request_validate(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Request_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response);
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Response_validate(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Response_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvMotorGains_Response_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_validate(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_wire_size(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_encode(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_validate(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_wire_size(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_encode(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Request_validate(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Request_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Response_validate(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Response_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvReboot_Response_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_validate(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_wire_size(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_encode(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_validate(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_wire_size(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_encode(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_validate(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_validate(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request);
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_validate(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_decode(input, length, value);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response);
}

size_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_validate(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response const* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_wire_size(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros2_jazzy_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_decode(input, length, value);
}
