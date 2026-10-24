/** @file records.c
 * @brief Export full original codecs for explicitly selected C FFI callers.
 */
#include <flexiv/c_ffi_bridge/controller_core_humble/records.h>
#if defined(__wasm__)
# define BRIDGE_EXPORT(type, name, arguments) __attribute__((export_name(#name))) type name arguments
#else
# define BRIDGE_EXPORT(type, name, arguments) type name arguments
#endif
BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Builtin_interfacesMsgTime_size, (void))
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Builtin_interfacesMsgTime_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

BRIDGE_EXPORT(uint32_t, flexiv_controller_core_humble_Ros2Builtin_interfacesMsgTime_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(wire, length, (roswasmc_bounded_2_builtin_interfaces_msg_Time*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Builtin_interfacesMsgTime_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode((roswasmc_bounded_2_builtin_interfaces_msg_Time const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Builtin_interfacesMsgDuration_size, (void))
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Duration);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Builtin_interfacesMsgDuration_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Duration);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Builtin_interfacesMsgDuration_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Duration) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Duration))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(wire, length, (roswasmc_bounded_2_builtin_interfaces_msg_Duration*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Builtin_interfacesMsgDuration_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Duration) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Duration))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode((roswasmc_bounded_2_builtin_interfaces_msg_Duration const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Std_msgsMsgHeader_size, (void))
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_Header);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Std_msgsMsgHeader_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_Header);
}

BRIDGE_EXPORT(uint32_t, flexiv_controller_core_humble_Ros2Std_msgsMsgHeader_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_Header) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_Header))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(wire, length, (roswasmc_bounded_2_std_msgs_msg_Header*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Std_msgsMsgHeader_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_Header) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_Header))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_Header_encode((roswasmc_bounded_2_std_msgs_msg_Header const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Sensor_msgsMsgJointState_size, (void))
{
    return sizeof(roswasmc_bounded_2_sensor_msgs_msg_JointState);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Sensor_msgsMsgJointState_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_sensor_msgs_msg_JointState);
}

BRIDGE_EXPORT(uint32_t, flexiv_controller_core_humble_Ros2Sensor_msgsMsgJointState_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_sensor_msgs_msg_JointState) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_sensor_msgs_msg_JointState))
    {
        return 22;
    }
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(wire, length, (roswasmc_bounded_2_sensor_msgs_msg_JointState*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Sensor_msgsMsgJointState_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_sensor_msgs_msg_JointState) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_sensor_msgs_msg_JointState))
    {
        return 22;
    }
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_encode((roswasmc_bounded_2_sensor_msgs_msg_JointState const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_size, (void))
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint))
    {
        return 22;
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(wire,
                                                                              length,
                                                                              (roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint))
    {
        return 22;
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_encode((roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const*)value,
                                                                              wire,
                                                                              capacity,
                                                                              length);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Trajectory_msgsMsgJointTrajectory_size, (void))
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Trajectory_msgsMsgJointTrajectory_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Trajectory_msgsMsgJointTrajectory_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory))
    {
        return 22;
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(wire, length, (roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Trajectory_msgsMsgJointTrajectory_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory))
    {
        return 22;
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode((roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const*)value,
                                                                         wire,
                                                                         capacity,
                                                                         length);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Std_msgsMsgMultiArrayDimension_size, (void))
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Std_msgsMsgMultiArrayDimension_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Std_msgsMsgMultiArrayDimension_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension_decode(wire, length, (roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Std_msgsMsgMultiArrayDimension_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension_encode((roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension const*)value,
                                                                      wire,
                                                                      capacity,
                                                                      length);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Std_msgsMsgMultiArrayLayout_size, (void))
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Std_msgsMsgMultiArrayLayout_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Std_msgsMsgMultiArrayLayout_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout_decode(wire, length, (roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Std_msgsMsgMultiArrayLayout_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout_encode((roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Std_msgsMsgFloat64MultiArray_size, (void))
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_Float64MultiArray);
}

BRIDGE_EXPORT(size_t, flexiv_controller_core_humble_Ros2Std_msgsMsgFloat64MultiArray_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_Float64MultiArray);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Std_msgsMsgFloat64MultiArray_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_Float64MultiArray) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_Float64MultiArray))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_Float64MultiArray_decode(wire, length, (roswasmc_bounded_2_std_msgs_msg_Float64MultiArray*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_controller_core_humble_Ros2Std_msgsMsgFloat64MultiArray_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_Float64MultiArray) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_Float64MultiArray))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_Float64MultiArray_encode((roswasmc_bounded_2_std_msgs_msg_Float64MultiArray const*)value, wire, capacity, length);
}

#undef BRIDGE_EXPORT
