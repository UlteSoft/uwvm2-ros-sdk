/**
 * @file abi.c
 * @brief Delegate the complete hello_robot/mobile_fjt_humble foreign ABI to the canonical C codecs.
 * @details No field, bound, default, malformed-wire rule or outcome is synthesized.
 * Link this source into the same application as the foreign-language caller.
 */
#include <hello_robot/c_ffi_bridge/ros2/mobile_fjt_humble/abi.h>

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Duration);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Duration);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_validate(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgDuration_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_builtin_interfaces_msg_Duration* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_validate(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Builtin_interfacesMsgTime_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_Header);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_Header);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_validate(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_std_msgs_msg_Header_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Std_msgsMsgHeader_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_validate(
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_wire_size(
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_encode(
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_encode(value, output, capacity, length);
}

uint32_t
    uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_validate(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                            size_t* length)
{
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                         void* output,
                                                                                         size_t capacity,
                                                                                         size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_validate(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(value, output, capacity, length);
}

uint32_t
    uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgVector3_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Vector3* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_validate(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgQuaternion_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Transform);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Transform);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_validate(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_Transform_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_encode(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTransform_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_geometry_msgs_msg_Transform* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Twist);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Twist);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_validate(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(value, output, capacity, length);
}

uint32_t
    uwvm_hello_robot_mobile_fjt_humble_Ros2Geometry_msgsMsgTwist_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Twist* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_validate(
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_wire_size(
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_encode(
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_validate(
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_wire_size(
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_encode(
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory* value)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_control_msgs_msg_JointTolerance);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_control_msgs_msg_JointTolerance);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_validate(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value)
{
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_wire_size(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_control_msgs_msg_JointTolerance_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointTolerance_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_control_msgs_msg_JointTolerance* value)
{
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_validate(
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value)
{
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_wire_size(
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_encode(
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_encode(value, output, capacity, length);
}

uint32_t
    uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsMsgJointComponentTolerance_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance* value)
{
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_validate(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_wire_size(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_encode(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Goal_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* value)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_validate(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_wire_size(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_encode(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Result_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result* value)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_validate(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_wire_size(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_encode(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Control_msgsActionFollowJointTrajectory_Feedback_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* value)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_decode(input, length, value);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_sensor_msgs_msg_JointState);
}

size_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_sensor_msgs_msg_JointState);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_validate(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(value);
    return 0u;
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(value, output, capacity, length);
}

uint32_t uwvm_hello_robot_mobile_fjt_humble_Ros2Sensor_msgsMsgJointState_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(input, length, value);
}
