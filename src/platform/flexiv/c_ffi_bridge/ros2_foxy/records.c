/** @file records.c
 * @brief Export full original codecs for explicitly selected C FFI callers.
 */
#include <flexiv/c_ffi_bridge/ros2_foxy/records.h>
#if defined(__wasm__)
# define BRIDGE_EXPORT(type, name, arguments) __attribute__((export_name(#name))) type name arguments
#else
# define BRIDGE_EXPORT(type, name, arguments) type name arguments
#endif
BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Flexiv_msgsMsgJointPosVel_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Flexiv_msgsMsgJointPosVel_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Flexiv_msgsMsgJointPosVel_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_foxy_Ros2Flexiv_msgsMsgJointPosVel_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode((roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Flexiv_msgsMsgMode_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_Mode);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Flexiv_msgsMsgMode_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_Mode);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Flexiv_msgsMsgMode_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_Mode) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_Mode))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_Mode_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_Mode*)value);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Flexiv_msgsMsgMode_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_Mode) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_Mode))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode((roswasmc_bounded_2_flexiv_msgs_msg_Mode const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgPoint_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Point);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgPoint_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Point);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgPoint_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Point) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Point))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Point_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Point*)value);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgPoint_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Point) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Point))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Point_encode((roswasmc_bounded_2_geometry_msgs_msg_Point const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgQuaternion_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgQuaternion_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgQuaternion_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Quaternion*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_foxy_Ros2Geometry_msgsMsgQuaternion_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode((roswasmc_bounded_2_geometry_msgs_msg_Quaternion const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgPose_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Pose);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgPose_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Pose);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgPose_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Pose) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Pose))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Pose*)value);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgPose_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Pose) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Pose))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_encode((roswasmc_bounded_2_geometry_msgs_msg_Pose const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgVector3_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgVector3_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgVector3_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Vector3*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_foxy_Ros2Geometry_msgsMsgVector3_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode((roswasmc_bounded_2_geometry_msgs_msg_Vector3 const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgAccel_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Accel);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgAccel_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Accel);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgAccel_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Accel) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Accel))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Accel_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Accel*)value);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgAccel_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Accel) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Accel))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Accel_encode((roswasmc_bounded_2_geometry_msgs_msg_Accel const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgWrench_size, (void))
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Wrench);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgWrench_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Wrench);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Geometry_msgsMsgWrench_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Wrench) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Wrench))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Wrench_decode(wire, length, (roswasmc_bounded_2_geometry_msgs_msg_Wrench*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_foxy_Ros2Geometry_msgsMsgWrench_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_geometry_msgs_msg_Wrench) || (uintptr_t)value % _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Wrench))
    {
        return 22;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode((roswasmc_bounded_2_geometry_msgs_msg_Wrench const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Flexiv_msgsMsgRobotStates_size, (void))
{
    return sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates);
}

BRIDGE_EXPORT(size_t, flexiv_ros2_foxy_Ros2Flexiv_msgsMsgRobotStates_alignment, (void))
{
    return _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros2_foxy_Ros2Flexiv_msgsMsgRobotStates_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_decode(wire, length, (roswasmc_bounded_2_flexiv_msgs_msg_RobotStates*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros2_foxy_Ros2Flexiv_msgsMsgRobotStates_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates))
    {
        return 22;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode((roswasmc_bounded_2_flexiv_msgs_msg_RobotStates const*)value, wire, capacity, length);
}

#undef BRIDGE_EXPORT
