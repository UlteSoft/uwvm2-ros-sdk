/** @file records.c
 * @brief Export full original codecs for explicitly selected C FFI callers.
 */
#include <flexiv/c_ffi_bridge/ros1/noetic/records.h>
#if defined(__wasm__)
# define BRIDGE_EXPORT(type, name, arguments) __attribute__((export_name(#name))) type name arguments
#else
# define BRIDGE_EXPORT(type, name, arguments) type name arguments
#endif
BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Flexiv_msgsJointPosVel_size, (void))
{
    return sizeof(roswasmc_bounded_1_flexiv_msgs_JointPosVel);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Flexiv_msgsJointPosVel_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_flexiv_msgs_JointPosVel);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Flexiv_msgsJointPosVel_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_flexiv_msgs_JointPosVel) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_flexiv_msgs_JointPosVel))
    {
        return 22;
    }
    return roswasmc_bounded_1_flexiv_msgs_JointPosVel_decode(wire, length, (roswasmc_bounded_1_flexiv_msgs_JointPosVel*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros1_noetic_Ros1Flexiv_msgsJointPosVel_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_flexiv_msgs_JointPosVel) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_flexiv_msgs_JointPosVel))
    {
        return 22;
    }
    return roswasmc_bounded_1_flexiv_msgs_JointPosVel_encode((roswasmc_bounded_1_flexiv_msgs_JointPosVel const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Flexiv_msgsMode_size, (void))
{
    return sizeof(roswasmc_bounded_1_flexiv_msgs_Mode);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Flexiv_msgsMode_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_flexiv_msgs_Mode);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Flexiv_msgsMode_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_flexiv_msgs_Mode) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_flexiv_msgs_Mode))
    {
        return 22;
    }
    return roswasmc_bounded_1_flexiv_msgs_Mode_decode(wire, length, (roswasmc_bounded_1_flexiv_msgs_Mode*)value);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Flexiv_msgsMode_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_flexiv_msgs_Mode) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_flexiv_msgs_Mode))
    {
        return 22;
    }
    return roswasmc_bounded_1_flexiv_msgs_Mode_encode((roswasmc_bounded_1_flexiv_msgs_Mode const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsPoint_size, (void))
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Point);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsPoint_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Point);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Geometry_msgsPoint_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Point) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Point))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Point_decode(wire, length, (roswasmc_bounded_1_geometry_msgs_Point*)value);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Geometry_msgsPoint_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Point) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Point))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Point_encode((roswasmc_bounded_1_geometry_msgs_Point const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsQuaternion_size, (void))
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Quaternion);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsQuaternion_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Quaternion);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Geometry_msgsQuaternion_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Quaternion) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Quaternion))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Quaternion_decode(wire, length, (roswasmc_bounded_1_geometry_msgs_Quaternion*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros1_noetic_Ros1Geometry_msgsQuaternion_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Quaternion) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Quaternion))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Quaternion_encode((roswasmc_bounded_1_geometry_msgs_Quaternion const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsPose_size, (void))
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Pose);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsPose_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Pose);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Geometry_msgsPose_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Pose) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Pose))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Pose_decode(wire, length, (roswasmc_bounded_1_geometry_msgs_Pose*)value);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Geometry_msgsPose_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Pose) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Pose))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Pose_encode((roswasmc_bounded_1_geometry_msgs_Pose const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsVector3_size, (void))
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Vector3);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsVector3_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Vector3);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Geometry_msgsVector3_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Vector3) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Vector3))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Vector3_decode(wire, length, (roswasmc_bounded_1_geometry_msgs_Vector3*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros1_noetic_Ros1Geometry_msgsVector3_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Vector3) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Vector3))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Vector3_encode((roswasmc_bounded_1_geometry_msgs_Vector3 const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsAccel_size, (void))
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Accel);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsAccel_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Accel);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Geometry_msgsAccel_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Accel) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Accel))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Accel_decode(wire, length, (roswasmc_bounded_1_geometry_msgs_Accel*)value);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Geometry_msgsAccel_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Accel) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Accel))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Accel_encode((roswasmc_bounded_1_geometry_msgs_Accel const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsWrench_size, (void))
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Wrench);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Geometry_msgsWrench_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Wrench);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Geometry_msgsWrench_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Wrench) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Wrench))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Wrench_decode(wire, length, (roswasmc_bounded_1_geometry_msgs_Wrench*)value);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Geometry_msgsWrench_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_geometry_msgs_Wrench) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_geometry_msgs_Wrench))
    {
        return 22;
    }
    return roswasmc_bounded_1_geometry_msgs_Wrench_encode((roswasmc_bounded_1_geometry_msgs_Wrench const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Flexiv_msgsRobotStates_size, (void))
{
    return sizeof(roswasmc_bounded_1_flexiv_msgs_RobotStates);
}

BRIDGE_EXPORT(size_t, flexiv_ros1_noetic_Ros1Flexiv_msgsRobotStates_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_flexiv_msgs_RobotStates);
}

BRIDGE_EXPORT(uint32_t, flexiv_ros1_noetic_Ros1Flexiv_msgsRobotStates_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_flexiv_msgs_RobotStates) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_flexiv_msgs_RobotStates))
    {
        return 22;
    }
    return roswasmc_bounded_1_flexiv_msgs_RobotStates_decode(wire, length, (roswasmc_bounded_1_flexiv_msgs_RobotStates*)value);
}

BRIDGE_EXPORT(uint32_t,
              flexiv_ros1_noetic_Ros1Flexiv_msgsRobotStates_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_flexiv_msgs_RobotStates) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_flexiv_msgs_RobotStates))
    {
        return 22;
    }
    return roswasmc_bounded_1_flexiv_msgs_RobotStates_encode((roswasmc_bounded_1_flexiv_msgs_RobotStates const*)value, wire, capacity, length);
}

#undef BRIDGE_EXPORT
