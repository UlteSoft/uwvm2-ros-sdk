/** @file records.c
 * @brief Export full original codecs for explicitly selected C FFI callers.
 */
#include <kinova/c_ffi_bridge/ros2/humble/records.h>
#if defined(__wasm__)
# define BRIDGE_EXPORT(type, name, arguments) __attribute__((export_name(#name))) type name arguments
#else
# define BRIDGE_EXPORT(type, name, arguments) type name arguments
#endif
BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Builtin_interfacesMsgDuration_size, (void))
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Duration);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Builtin_interfacesMsgDuration_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Duration);
}

BRIDGE_EXPORT(uint32_t, kinova_ros2_humble_Ros2Builtin_interfacesMsgDuration_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Duration) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Duration))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(wire, length, (roswasmc_bounded_2_builtin_interfaces_msg_Duration*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Builtin_interfacesMsgDuration_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Duration) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Duration))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode((roswasmc_bounded_2_builtin_interfaces_msg_Duration const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Builtin_interfacesMsgTime_size, (void))
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Builtin_interfacesMsgTime_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

BRIDGE_EXPORT(uint32_t, kinova_ros2_humble_Ros2Builtin_interfacesMsgTime_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(wire, length, (roswasmc_bounded_2_builtin_interfaces_msg_Time*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Builtin_interfacesMsgTime_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time))
    {
        return 22;
    }
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode((roswasmc_bounded_2_builtin_interfaces_msg_Time const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Std_msgsMsgHeader_size, (void))
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_Header);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Std_msgsMsgHeader_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_Header);
}

BRIDGE_EXPORT(uint32_t, kinova_ros2_humble_Ros2Std_msgsMsgHeader_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_Header) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_Header))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(wire, length, (roswasmc_bounded_2_std_msgs_msg_Header*)value);
}

BRIDGE_EXPORT(uint32_t, kinova_ros2_humble_Ros2Std_msgsMsgHeader_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_std_msgs_msg_Header) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_std_msgs_msg_Header))
    {
        return 22;
    }
    return roswasmc_bounded_2_std_msgs_msg_Header_encode((roswasmc_bounded_2_std_msgs_msg_Header const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_size, (void))
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_decode,
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
              kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_encode,
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

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_size, (void))
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory);
}

BRIDGE_EXPORT(uint32_t, kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory))
    {
        return 22;
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(wire, length, (roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_encode,
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

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Geometry_msgsMsgVector3_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Geometry_msgsMsgVector3_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

BRIDGE_EXPORT(uint32_t, kinova_ros2_humble_Ros2Geometry_msgsMsgVector3_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Vector3*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Geometry_msgsMsgVector3_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode((roswasmc_bounded_2_geometry_msgs_msg_Vector3 const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Geometry_msgsMsgQuaternion_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Geometry_msgsMsgQuaternion_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

BRIDGE_EXPORT(uint32_t, kinova_ros2_humble_Ros2Geometry_msgsMsgQuaternion_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Quaternion*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Geometry_msgsMsgQuaternion_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode((roswasmc_bounded_2_geometry_msgs_msg_Quaternion const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Geometry_msgsMsgTransform_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Transform);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Geometry_msgsMsgTransform_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Transform);
}

BRIDGE_EXPORT(uint32_t, kinova_ros2_humble_Ros2Geometry_msgsMsgTransform_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Transform) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Transform))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Transform*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Geometry_msgsMsgTransform_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Transform) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Transform))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_encode((roswasmc_bounded_2_geometry_msgs_msg_Transform const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Geometry_msgsMsgTwist_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Twist);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Geometry_msgsMsgTwist_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Twist);
}

BRIDGE_EXPORT(uint32_t, kinova_ros2_humble_Ros2Geometry_msgsMsgTwist_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Twist) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Twist))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Twist*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Geometry_msgsMsgTwist_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Twist) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Twist))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode((roswasmc_bounded_2_geometry_msgs_msg_Twist const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_size, (void))
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint))
    {
        return 22;
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_decode(
        wire,
        length,
        (roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint))
    {
        return 22;
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_encode(
        (roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_size, (void))
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory))
    {
        return 22;
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_decode(wire,
                                                                                 length,
                                                                                 (roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory))
    {
        return 22;
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_encode((roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const*)value,
                                                                                 wire,
                                                                                 capacity,
                                                                                 length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Control_msgsMsgJointTolerance_size, (void))
{
    return sizeof(roswasmc_bounded_2_control_msgs_msg_JointTolerance);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Control_msgsMsgJointTolerance_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_control_msgs_msg_JointTolerance);
}

BRIDGE_EXPORT(uint32_t, kinova_ros2_humble_Ros2Control_msgsMsgJointTolerance_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_control_msgs_msg_JointTolerance) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_control_msgs_msg_JointTolerance))
    {
        return 22;
    }
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_decode(wire, length, (roswasmc_bounded_2_control_msgs_msg_JointTolerance*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Control_msgsMsgJointTolerance_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_control_msgs_msg_JointTolerance) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_control_msgs_msg_JointTolerance))
    {
        return 22;
    }
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_encode((roswasmc_bounded_2_control_msgs_msg_JointTolerance const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Control_msgsMsgJointComponentTolerance_size, (void))
{
    return sizeof(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Control_msgsMsgJointComponentTolerance_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Control_msgsMsgJointComponentTolerance_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance))
    {
        return 22;
    }
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_decode(wire,
                                                                              length,
                                                                              (roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Control_msgsMsgJointComponentTolerance_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance))
    {
        return 22;
    }
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_encode((roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const*)value,
                                                                              wire,
                                                                              capacity,
                                                                              length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_size, (void))
{
    return sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(wire,
                                                                                    length,
                                                                                    (roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal))
    {
        return 22;
    }
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(
        (roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_size, (void))
{
    return sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_decode(
        wire,
        length,
        (roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result))
    {
        return 22;
    }
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_encode(
        (roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_size, (void))
{
    return sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_decode(
        wire,
        length,
        (roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback))
    {
        return 22;
    }
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(
        (roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Sensor_msgsMsgJointState_size, (void))
{
    return sizeof(roswasmc_bounded_2_sensor_msgs_msg_JointState);
}

BRIDGE_EXPORT(size_t, kinova_ros2_humble_Ros2Sensor_msgsMsgJointState_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_sensor_msgs_msg_JointState);
}

BRIDGE_EXPORT(uint32_t, kinova_ros2_humble_Ros2Sensor_msgsMsgJointState_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_sensor_msgs_msg_JointState) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_sensor_msgs_msg_JointState))
    {
        return 22;
    }
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(wire, length, (roswasmc_bounded_2_sensor_msgs_msg_JointState*)value);
}

BRIDGE_EXPORT(uint32_t,
              kinova_ros2_humble_Ros2Sensor_msgsMsgJointState_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_sensor_msgs_msg_JointState) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_sensor_msgs_msg_JointState))
    {
        return 22;
    }
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_encode((roswasmc_bounded_2_sensor_msgs_msg_JointState const*)value, wire, capacity, length);
}

#undef BRIDGE_EXPORT
