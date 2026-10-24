/** @file records.c
 * @brief Export full original codecs for explicitly selected C FFI callers.
 */
#include <franka/c_ffi_bridge/ros2/records.h>
#if defined(__wasm__)
# define BRIDGE_EXPORT(type, name, arguments) __attribute__((export_name(#name))) type name arguments
#else
# define BRIDGE_EXPORT(type, name, arguments) type name arguments
#endif
BRIDGE_EXPORT(size_t, franka_ros2_Ros2Builtin_interfacesMsgTime_size, (void))
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Builtin_interfacesMsgTime_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Builtin_interfacesMsgTime_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(wire, length, (roswasmc_bounded_2_builtin_interfaces_msg_Time*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Builtin_interfacesMsgTime_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode((roswasmc_bounded_2_builtin_interfaces_msg_Time const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionErrorRecovery_Goal_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionErrorRecovery_Goal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionErrorRecovery_Goal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionErrorRecovery_Goal_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_encode((roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal const*)value,
                                                                           wire,
                                                                           capacity,
                                                                           length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionErrorRecovery_Result_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionErrorRecovery_Result_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionErrorRecovery_Result_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionErrorRecovery_Result_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_encode((roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result const*)value,
                                                                             wire,
                                                                             capacity,
                                                                             length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionErrorRecovery_Feedback_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionErrorRecovery_Feedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionErrorRecovery_Feedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_decode(wire,
                                                                               length,
                                                                               (roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionErrorRecovery_Feedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_encode((roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback const*)value,
                                                                               wire,
                                                                               capacity,
                                                                               length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgGraspEpsilon_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgGraspEpsilon_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsMsgGraspEpsilon_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_decode(wire, length, (roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsMsgGraspEpsilon_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_encode((roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionGrasp_Goal_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionGrasp_Goal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionGrasp_Goal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_Grasp_Goal*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionGrasp_Goal_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_encode((roswasmc_bounded_2_franka_msgs_action_Grasp_Goal const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionGrasp_Result_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_Grasp_Result);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionGrasp_Result_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_Grasp_Result);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionGrasp_Result_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Grasp_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Grasp_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Grasp_Result_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_Grasp_Result*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionGrasp_Result_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Grasp_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Grasp_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Grasp_Result_encode((roswasmc_bounded_2_franka_msgs_action_Grasp_Result const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionGrasp_Feedback_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionGrasp_Feedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionGrasp_Feedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionGrasp_Feedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_encode((roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback const*)value,
                                                                       wire,
                                                                       capacity,
                                                                       length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionHoming_Goal_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_Homing_Goal);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionHoming_Goal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_Homing_Goal);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionHoming_Goal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Homing_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Homing_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Homing_Goal_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_Homing_Goal*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionHoming_Goal_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Homing_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Homing_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Homing_Goal_encode((roswasmc_bounded_2_franka_msgs_action_Homing_Goal const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionHoming_Result_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_Homing_Result);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionHoming_Result_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_Homing_Result);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionHoming_Result_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Homing_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Homing_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Homing_Result_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_Homing_Result*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionHoming_Result_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Homing_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Homing_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Homing_Result_encode((roswasmc_bounded_2_franka_msgs_action_Homing_Result const*)value,
                                                                      wire,
                                                                      capacity,
                                                                      length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionHoming_Feedback_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_Homing_Feedback);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionHoming_Feedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_Homing_Feedback);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionHoming_Feedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Homing_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Homing_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_Homing_Feedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionHoming_Feedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Homing_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Homing_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_encode((roswasmc_bounded_2_franka_msgs_action_Homing_Feedback const*)value,
                                                                        wire,
                                                                        capacity,
                                                                        length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionMove_Goal_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_Move_Goal);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionMove_Goal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_Move_Goal);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionMove_Goal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Move_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Move_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Move_Goal_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_Move_Goal*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionMove_Goal_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Move_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Move_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Move_Goal_encode((roswasmc_bounded_2_franka_msgs_action_Move_Goal const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionMove_Result_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_Move_Result);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionMove_Result_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_Move_Result);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionMove_Result_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Move_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Move_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Move_Result_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_Move_Result*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionMove_Result_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Move_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Move_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Move_Result_encode((roswasmc_bounded_2_franka_msgs_action_Move_Result const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionMove_Feedback_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_Move_Feedback);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionMove_Feedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_Move_Feedback);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionMove_Feedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Move_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Move_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Move_Feedback_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_Move_Feedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionMove_Feedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_Move_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_Move_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_Move_Feedback_encode((roswasmc_bounded_2_franka_msgs_action_Move_Feedback const*)value,
                                                                      wire,
                                                                      capacity,
                                                                      length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionPTPMotion_Goal_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionPTPMotion_Goal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionPTPMotion_Goal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionPTPMotion_Goal_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_encode((roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal const*)value,
                                                                       wire,
                                                                       capacity,
                                                                       length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgTargetStatus_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_msg_TargetStatus);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgTargetStatus_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_msg_TargetStatus);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsMsgTargetStatus_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_TargetStatus) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_TargetStatus))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_TargetStatus_decode(wire, length, (roswasmc_bounded_2_franka_msgs_msg_TargetStatus*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsMsgTargetStatus_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_TargetStatus) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_TargetStatus))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_TargetStatus_encode((roswasmc_bounded_2_franka_msgs_msg_TargetStatus const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionPTPMotion_Result_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionPTPMotion_Result_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionPTPMotion_Result_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionPTPMotion_Result_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_encode((roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result const*)value,
                                                                         wire,
                                                                         capacity,
                                                                         length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionPTPMotion_Feedback_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsActionPTPMotion_Feedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsActionPTPMotion_Feedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_decode(wire, length, (roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsActionPTPMotion_Feedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_encode((roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback const*)value,
                                                                           wire,
                                                                           capacity,
                                                                           length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgVector3_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgVector3_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgVector3_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Vector3*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgVector3_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode((roswasmc_bounded_2_geometry_msgs_msg_Vector3 const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgCollisionIndicators_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgCollisionIndicators_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsMsgCollisionIndicators_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_decode(wire, length, (roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsMsgCollisionIndicators_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_encode((roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators const*)value,
                                                                         wire,
                                                                         capacity,
                                                                         length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgElbow_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_msg_Elbow);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgElbow_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_msg_Elbow);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsMsgElbow_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_Elbow) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_Elbow))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_Elbow_decode(wire, length, (roswasmc_bounded_2_franka_msgs_msg_Elbow*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsMsgElbow_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_Elbow) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_Elbow))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_Elbow_encode((roswasmc_bounded_2_franka_msgs_msg_Elbow const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgErrors_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_msg_Errors);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgErrors_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_msg_Errors);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsMsgErrors_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_Errors) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_Errors))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_Errors_decode(wire, length, (roswasmc_bounded_2_franka_msgs_msg_Errors*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsMsgErrors_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_Errors) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_Errors))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_Errors_encode((roswasmc_bounded_2_franka_msgs_msg_Errors const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Std_msgsMsgHeader_size, (void))
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_Header);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Std_msgsMsgHeader_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_Header);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Std_msgsMsgHeader_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_Header) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_Header))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(wire, length, (roswasmc_bounded_2_std_msgs_msg_Header*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Std_msgsMsgHeader_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_Header) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_Header))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_Header_encode((roswasmc_bounded_2_std_msgs_msg_Header const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Sensor_msgsMsgJointState_size, (void))
{
    return sizeof(roswasmc_bounded_2_sensor_msgs_msg_JointState);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Sensor_msgsMsgJointState_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_sensor_msgs_msg_JointState);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Sensor_msgsMsgJointState_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_sensor_msgs_msg_JointState) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_sensor_msgs_msg_JointState))
    {
        return 22;
    }
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(wire, length, (roswasmc_bounded_2_sensor_msgs_msg_JointState*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Sensor_msgsMsgJointState_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_sensor_msgs_msg_JointState) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_sensor_msgs_msg_JointState))
    {
        return 22;
    }
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_encode((roswasmc_bounded_2_sensor_msgs_msg_JointState const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgWrench_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Wrench);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgWrench_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Wrench);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgWrench_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Wrench) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Wrench))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Wrench_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Wrench*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgWrench_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Wrench) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Wrench))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode((roswasmc_bounded_2_geometry_msgs_msg_Wrench const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgWrenchStamped_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgWrenchStamped_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgWrenchStamped_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Geometry_msgsMsgWrenchStamped_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_encode((roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgInertia_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Inertia);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgInertia_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Inertia);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgInertia_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Inertia) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Inertia))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Inertia_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Inertia*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgInertia_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Inertia) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Inertia))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Inertia_encode((roswasmc_bounded_2_geometry_msgs_msg_Inertia const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgInertiaStamped_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgInertiaStamped_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgInertiaStamped_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Geometry_msgsMsgInertiaStamped_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_encode((roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped const*)value,
                                                                      wire,
                                                                      capacity,
                                                                      length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgPoint_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Point);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgPoint_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Point);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgPoint_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Point) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Point))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Point_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Point*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgPoint_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Point) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Point))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Point_encode((roswasmc_bounded_2_geometry_msgs_msg_Point const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgQuaternion_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgQuaternion_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgQuaternion_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Quaternion*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgQuaternion_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode((roswasmc_bounded_2_geometry_msgs_msg_Quaternion const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgPose_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Pose);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgPose_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Pose);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgPose_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Pose) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Pose))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Pose*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgPose_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Pose) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Pose))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_encode((roswasmc_bounded_2_geometry_msgs_msg_Pose const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgPoseStamped_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgPoseStamped_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgPoseStamped_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_PoseStamped*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Geometry_msgsMsgPoseStamped_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode((roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgTwist_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Twist);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgTwist_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Twist);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgTwist_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Twist) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Twist))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Twist*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgTwist_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Twist) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Twist))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode((roswasmc_bounded_2_geometry_msgs_msg_Twist const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgTwistStamped_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgTwistStamped_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgTwistStamped_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_TwistStamped*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Geometry_msgsMsgTwistStamped_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_encode((roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgAccel_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Accel);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgAccel_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Accel);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgAccel_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Accel) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Accel))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Accel_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Accel*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgAccel_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Accel) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Accel))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Accel_encode((roswasmc_bounded_2_geometry_msgs_msg_Accel const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgAccelStamped_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_AccelStamped);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgAccelStamped_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_AccelStamped);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgAccelStamped_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_AccelStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_AccelStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_AccelStamped*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Geometry_msgsMsgAccelStamped_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_AccelStamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_AccelStamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_encode((roswasmc_bounded_2_geometry_msgs_msg_AccelStamped const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgVector3Stamped_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Geometry_msgsMsgVector3Stamped_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Geometry_msgsMsgVector3Stamped_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Geometry_msgsMsgVector3Stamped_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_encode((roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped const*)value,
                                                                      wire,
                                                                      capacity,
                                                                      length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgFrankaRobotState_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsMsgFrankaRobotState_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsMsgFrankaRobotState_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_decode(wire, length, (roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsMsgFrankaRobotState_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_encode((roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState const*)value,
                                                                      wire,
                                                                      capacity,
                                                                      length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_decode(wire,
                                                                                   length,
                                                                                   (roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_encode(
        (roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_decode(wire,
                                                                                    length,
                                                                                    (roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetCartesianStiffness_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_encode(
        (roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_decode(
        wire,
        length,
        (roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_encode(
        (roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_decode(
        wire,
        length,
        (roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_encode(
        (roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_decode(
        wire,
        length,
        (roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_encode(
        (roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_decode(
        wire,
        length,
        (roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_encode(
        (roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_decode(wire,
                                                                               length,
                                                                               (roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_encode((roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request const*)value,
                                                                               wire,
                                                                               capacity,
                                                                               length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_decode(wire,
                                                                                length,
                                                                                (roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetJointStiffness_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_encode((roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response const*)value,
                                                                                wire,
                                                                                capacity,
                                                                                length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetLoad_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetLoad_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsSrvSetLoad_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_decode(wire, length, (roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetLoad_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_encode((roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetLoad_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetLoad_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsSrvSetLoad_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_decode(wire, length, (roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetLoad_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_encode((roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response const*)value,
                                                                      wire,
                                                                      capacity,
                                                                      length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_decode(wire,
                                                                               length,
                                                                               (roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_encode((roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request const*)value,
                                                                               wire,
                                                                               capacity,
                                                                               length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_decode(wire,
                                                                                length,
                                                                                (roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetStiffnessFrame_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_encode((roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response const*)value,
                                                                                wire,
                                                                                capacity,
                                                                                length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_decode(wire, length, (roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_encode((roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request const*)value,
                                                                         wire,
                                                                         capacity,
                                                                         length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_decode(wire, length, (roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_msgsSrvSetTCPFrame_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_encode((roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response const*)value,
                                                                          wire,
                                                                          capacity,
                                                                          length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Goal_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Goal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Goal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_decode(wire,
                                                                                length,
                                                                                (roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Goal_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_encode((roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal const*)value,
                                                                                wire,
                                                                                capacity,
                                                                                length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Result_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Result_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Result_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_decode(wire,
                                                                                  length,
                                                                                  (roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Result_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_encode((roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result const*)value,
                                                                                  wire,
                                                                                  capacity,
                                                                                  length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_decode(wire,
                                                                                    length,
                                                                                    (roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_encode(
        (roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsMsgUserLimits_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsMsgUserLimits_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsMsgUserLimits_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_decode(wire, length, (roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsMsgUserLimits_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_encode((roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits const*)value,
                                                                      wire,
                                                                      capacity,
                                                                      length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsMsgSpineParameters_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsMsgSpineParameters_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsMsgSpineParameters_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_decode(wire, length, (roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsMsgSpineParameters_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_encode((roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters const*)value,
                                                                           wire,
                                                                           capacity,
                                                                           length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsMsgSpinePosition_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsMsgSpinePosition_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsMsgSpinePosition_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_decode(wire, length, (roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsMsgSpinePosition_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_encode((roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition const*)value,
                                                                         wire,
                                                                         capacity,
                                                                         length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsMsgSpineState_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineState);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsMsgSpineState_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineState);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsMsgSpineState_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineState) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineState))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_decode(wire, length, (roswasmc_bounded_2_franka_spine_msgs_msg_SpineState*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsMsgSpineState_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineState) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_msg_SpineState))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_encode((roswasmc_bounded_2_franka_spine_msgs_msg_SpineState const*)value,
                                                                      wire,
                                                                      capacity,
                                                                      length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_decode(wire,
                                                                              length,
                                                                              (roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_encode((roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request const*)value,
                                                                              wire,
                                                                              capacity,
                                                                              length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_decode(wire,
                                                                               length,
                                                                               (roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvFaultReset_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_encode((roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response const*)value,
                                                                               wire,
                                                                               capacity,
                                                                               length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_decode(wire,
                                                                                 length,
                                                                                 (roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_encode((roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request const*)value,
                                                                                 wire,
                                                                                 capacity,
                                                                                 length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_decode(wire,
                                                                                  length,
                                                                                  (roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvGetParameters_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_encode((roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response const*)value,
                                                                                  wire,
                                                                                  capacity,
                                                                                  length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_decode(wire,
                                                                               length,
                                                                               (roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_encode((roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request const*)value,
                                                                               wire,
                                                                               capacity,
                                                                               length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_decode(wire,
                                                                                length,
                                                                                (roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvGetPosition_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_encode((roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response const*)value,
                                                                                wire,
                                                                                capacity,
                                                                                length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_decode(wire,
                                                                                 length,
                                                                                 (roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_encode((roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request const*)value,
                                                                                 wire,
                                                                                 capacity,
                                                                                 length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_decode(wire,
                                                                                  length,
                                                                                  (roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvGetSpineState_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_encode((roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response const*)value,
                                                                                  wire,
                                                                                  capacity,
                                                                                  length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvHalt_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvHalt_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvHalt_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_decode(wire, length, (roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvHalt_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_encode((roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request const*)value,
                                                                        wire,
                                                                        capacity,
                                                                        length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvHalt_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvHalt_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvHalt_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_decode(wire, length, (roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvHalt_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_encode((roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response const*)value,
                                                                         wire,
                                                                         capacity,
                                                                         length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_decode(wire, length, (roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_encode((roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request const*)value,
                                                                             wire,
                                                                             capacity,
                                                                             length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_decode(wire,
                                                                              length,
                                                                              (roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvSwitchOff_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_encode((roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response const*)value,
                                                                              wire,
                                                                              capacity,
                                                                              length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Request_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Request_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Request_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_decode(wire, length, (roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Request_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_encode((roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request const*)value,
                                                                            wire,
                                                                            capacity,
                                                                            length);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Response_size, (void))
{
    return sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response);
}

BRIDGE_EXPORT(size_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Response_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response);
}

BRIDGE_EXPORT(uint32_t, franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Response_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_decode(wire, length, (roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros2_Ros2Franka_spine_msgsSrvSwitchOn_Response_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response))
    {
        return 22;
    }
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_encode((roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response const*)value,
                                                                             wire,
                                                                             capacity,
                                                                             length);
}

#undef BRIDGE_EXPORT
