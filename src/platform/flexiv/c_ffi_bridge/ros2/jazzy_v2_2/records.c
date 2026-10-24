/** @file records.c
 * @brief Export full original codecs for explicitly selected C FFI callers.
 */
#include <flexiv/c_ffi_bridge/ros2/jazzy_v2_2/records.h>
#if defined(__wasm__)
# define BRIDGE_EXPORT(type, name, arguments) __attribute__((export_name(#name))) type name arguments
#else
# define BRIDGE_EXPORT(type, name, arguments) type name arguments
#endif
BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Builtin_interfacesMsgTime_size, (void))
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Builtin_interfacesMsgTime_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Builtin_interfacesMsgTime_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(wire, length, (roswasmc_bounded_2_builtin_interfaces_msg_Time*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Builtin_interfacesMsgTime_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode((roswasmc_bounded_2_builtin_interfaces_msg_Time const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Goal_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Goal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Goal_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Goal_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_encode((roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal const*)value,
                                                                           wire,
                                                                           capacity,
                                                                           length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Result_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Result_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Result_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Result_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_encode((roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result const*)value,
                                                                             wire,
                                                                             capacity,
                                                                             length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Feedback_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Feedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Feedback_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_decode(wire,
                                                                               length,
                                                                               (roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionErrorRecovery_Feedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_encode((roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback const*)value,
                                                                               wire,
                                                                               capacity,
                                                                               length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Goal_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Goal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Goal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Goal_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_encode((roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Result_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Result_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Result_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Result_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_encode((roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Feedback_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Feedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Feedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionGrasp_Feedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_encode((roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback const*)value,
                                                                       wire,
                                                                       capacity,
                                                                       length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Goal_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Goal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Goal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_action_Move_Goal*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Goal_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_encode((roswasmc_bounded_2_flexiv_msgs_action_Move_Goal const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Result_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_action_Move_Result);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Result_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Move_Result);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Result_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Move_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Move_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Move_Result_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_action_Move_Result*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Result_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Move_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Move_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Move_Result_encode((roswasmc_bounded_2_flexiv_msgs_action_Move_Result const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Feedback_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Feedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Feedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsActionMove_Feedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_encode((roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback const*)value,
                                                                      wire,
                                                                      capacity,
                                                                      length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgDigital_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_Digital);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgDigital_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_Digital);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgDigital_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_Digital) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_Digital))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_Digital_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_Digital*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgDigital_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_Digital) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_Digital))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_Digital_encode((roswasmc_bounded_2_flexiv_msgs_msg_Digital const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgGPIOStates_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgGPIOStates_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgGPIOStates_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgGPIOStates_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_encode((roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Std_msgsMsgHeader_size, (void))
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_Header);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Std_msgsMsgHeader_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_Header);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Std_msgsMsgHeader_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_Header) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_Header))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(wire, length, (roswasmc_bounded_2_std_msgs_msg_Header*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Std_msgsMsgHeader_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_Header) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_Header))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_Header_encode((roswasmc_bounded_2_std_msgs_msg_Header const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointImpedance_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointImpedance_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointImpedance_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointImpedance_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_encode((roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointInertiaScale_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointInertiaScale_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointInertiaScale_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointInertiaScale_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_encode((roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale const*)value,
                                                                       wire,
                                                                       capacity,
                                                                       length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointPosVel_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointPosVel_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointPosVel_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgJointPosVel_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode((roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgMaxContactTorque_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgMaxContactTorque_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgMaxContactTorque_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgMaxContactTorque_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_encode((roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque const*)value,
                                                                      wire,
                                                                      capacity,
                                                                      length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgMode_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_Mode);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgMode_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_Mode);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgMode_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_Mode) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_Mode))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_Mode_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_Mode*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgMode_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_Mode) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_Mode))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode((roswasmc_bounded_2_flexiv_msgs_msg_Mode const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRobotEvent_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRobotEvent_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRobotEvent_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRobotEvent_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_encode((roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgOperationalStatus_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgOperationalStatus_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgOperationalStatus_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgOperationalStatus_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_encode((roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus const*)value,
                                                                       wire,
                                                                       capacity,
                                                                       length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRecoveryPolicy_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRecoveryPolicy_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRecoveryPolicy_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRecoveryPolicy_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_encode((roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPoint_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Point);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPoint_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Point);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPoint_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Point) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Point))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Point_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Point*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPoint_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Point) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Point))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Point_encode((roswasmc_bounded_2_geometry_msgs_msg_Point const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgQuaternion_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgQuaternion_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgQuaternion_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Quaternion*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgQuaternion_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode((roswasmc_bounded_2_geometry_msgs_msg_Quaternion const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPose_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Pose);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPose_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Pose);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPose_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Pose) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Pose))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Pose*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPose_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Pose) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Pose))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_encode((roswasmc_bounded_2_geometry_msgs_msg_Pose const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPoseStamped_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPoseStamped_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPoseStamped_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_PoseStamped*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgPoseStamped_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode((roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgVector3_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgVector3_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgVector3_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Vector3*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgVector3_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode((roswasmc_bounded_2_geometry_msgs_msg_Vector3 const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgTwist_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Twist);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgTwist_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Twist);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgTwist_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Twist) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Twist))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Twist*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgTwist_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Twist) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Twist))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode((roswasmc_bounded_2_geometry_msgs_msg_Twist const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgTwistStamped_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgTwistStamped_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgTwistStamped_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_TwistStamped*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgTwistStamped_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_encode((roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgWrench_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Wrench);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgWrench_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Wrench);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgWrench_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Wrench) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Wrench))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Wrench_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Wrench*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgWrench_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Wrench) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Wrench))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode((roswasmc_bounded_2_geometry_msgs_msg_Wrench const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgWrenchStamped_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgWrenchStamped_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgWrenchStamped_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Geometry_msgsMsgWrenchStamped_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_encode((roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRobotStates_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRobotStates_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRobotStates_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_RobotStates*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsMsgRobotStates_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode((roswasmc_bounded_2_flexiv_msgs_msg_RobotStates const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvGetOperationalStatus_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvGetOperationalStatus_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvGetOperationalStatus_Request_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_decode(wire,
                                                                                  length,
                                                                                  (roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvGetOperationalStatus_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_encode((roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request const*)value,
                                                                                  wire,
                                                                                  capacity,
                                                                                  length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvGetOperationalStatus_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvGetOperationalStatus_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvGetOperationalStatus_Response_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_decode(wire,
                                                                                   length,
                                                                                   (roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvGetOperationalStatus_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_encode(
        (roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointImpedance_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointImpedance_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointImpedance_Request_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_decode(wire,
                                                                               length,
                                                                               (roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointImpedance_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_encode((roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request const*)value,
                                                                               wire,
                                                                               capacity,
                                                                               length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointImpedance_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointImpedance_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointImpedance_Response_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_decode(wire,
                                                                                length,
                                                                                (roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointImpedance_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_encode((roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response const*)value,
                                                                                wire,
                                                                                capacity,
                                                                                length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_decode(wire,
                                                                                  length,
                                                                                  (roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_encode((roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request const*)value,
                                                                                  wire,
                                                                                  capacity,
                                                                                  length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_decode(wire,
                                                                                   length,
                                                                                   (roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_encode(
        (roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_decode(wire,
                                                                                 length,
                                                                                 (roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_encode((roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request const*)value,
                                                                                 wire,
                                                                                 capacity,
                                                                                 length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_decode(wire,
                                                                                  length,
                                                                                  (roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_jazzy_v2_2_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_encode((roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response const*)value,
                                                                                  wire,
                                                                                  capacity,
                                                                                  length);
}

#undef BRIDGE_EXPORT
