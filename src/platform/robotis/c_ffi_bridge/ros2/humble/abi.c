/**
 * @file abi.c
 * @brief Delegate the complete robotis/humble foreign ABI to the canonical C codecs.
 * @details No field, bound, default, malformed-wire rule or outcome is synthesized.
 * Link this source into the same application as the foreign-language caller.
 */
#include <robotis/c_ffi_bridge/ros2/humble/abi.h>

size_t uwvm_robotis_humble_Ros2Builtin_interfacesMsgTime_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

size_t uwvm_robotis_humble_Ros2Builtin_interfacesMsgTime_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_builtin_interfaces_msg_Time);
}

uint32_t uwvm_robotis_humble_Ros2Builtin_interfacesMsgTime_validate(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Builtin_interfacesMsgTime_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                  void* output,
                                                                  size_t capacity,
                                                                  size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Builtin_interfacesMsgTime_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPoint_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Point);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPoint_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Point);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPoint_validate(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPoint_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Point const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_robotis_humble_Ros2Geometry_msgsMsgPoint_encode(roswasmc_bounded_2_geometry_msgs_msg_Point const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPoint_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgQuaternion_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgQuaternion_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgQuaternion_validate(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgQuaternion_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgQuaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgQuaternion_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPose_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Pose);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPose_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Pose);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPose_validate(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPose_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_robotis_humble_Ros2Geometry_msgsMsgPose_encode(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPose_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPoseWithCovariance_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPoseWithCovariance_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPoseWithCovariance_validate(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPoseWithCovariance_wire_size(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value,
                                                                              size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPoseWithCovariance_encode(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgPoseWithCovariance_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgVector3_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgVector3_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Vector3);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgVector3_validate(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgVector3_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgVector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value,
                                                                void* output,
                                                                size_t capacity,
                                                                size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgVector3_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Vector3* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransform_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Transform);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransform_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Transform);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransform_validate(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransform_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_Transform_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransform_encode(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value,
                                                                  void* output,
                                                                  size_t capacity,
                                                                  size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransform_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Transform* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Std_msgsMsgHeader_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_std_msgs_msg_Header);
}

size_t uwvm_robotis_humble_Ros2Std_msgsMsgHeader_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_std_msgs_msg_Header);
}

uint32_t uwvm_robotis_humble_Ros2Std_msgsMsgHeader_validate(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Std_msgsMsgHeader_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_std_msgs_msg_Header_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Std_msgsMsgHeader_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransformStamped_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransformStamped_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransformStamped_validate(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransformStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransformStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTransformStamped_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_geometry_msgs_msg_TransformStamped* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwist_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_Twist);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwist_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_Twist);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwist_validate(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwist_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_robotis_humble_Ros2Geometry_msgsMsgTwist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwist_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Twist* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistStamped_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistStamped_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistStamped_validate(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistStamped_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_TwistStamped* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistWithCovariance_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance);
}

size_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistWithCovariance_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistWithCovariance_validate(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistWithCovariance_wire_size(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance const* value,
                                                                               size_t* length)
{
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistWithCovariance_encode(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Geometry_msgsMsgTwistWithCovariance_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Nav_msgsMsgOdometry_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_nav_msgs_msg_Odometry);
}

size_t uwvm_robotis_humble_Ros2Nav_msgsMsgOdometry_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_nav_msgs_msg_Odometry);
}

uint32_t uwvm_robotis_humble_Ros2Nav_msgsMsgOdometry_validate(roswasmc_bounded_2_nav_msgs_msg_Odometry const* value)
{
    return roswasmc_bounded_2_nav_msgs_msg_Odometry_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Nav_msgsMsgOdometry_wire_size(roswasmc_bounded_2_nav_msgs_msg_Odometry const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_nav_msgs_msg_Odometry_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_nav_msgs_msg_Odometry_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_robotis_humble_Ros2Nav_msgsMsgOdometry_encode(roswasmc_bounded_2_nav_msgs_msg_Odometry const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_nav_msgs_msg_Odometry_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Nav_msgsMsgOdometry_decode(void const* input, size_t length, roswasmc_bounded_2_nav_msgs_msg_Odometry* value)
{
    return roswasmc_bounded_2_nav_msgs_msg_Odometry_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Sensor_msgsMsgBatteryState_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_sensor_msgs_msg_BatteryState);
}

size_t uwvm_robotis_humble_Ros2Sensor_msgsMsgBatteryState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_sensor_msgs_msg_BatteryState);
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgBatteryState_validate(roswasmc_bounded_2_sensor_msgs_msg_BatteryState const* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_BatteryState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgBatteryState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_BatteryState const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_BatteryState_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_sensor_msgs_msg_BatteryState_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgBatteryState_encode(roswasmc_bounded_2_sensor_msgs_msg_BatteryState const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_2_sensor_msgs_msg_BatteryState_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgBatteryState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_BatteryState* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_BatteryState_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Sensor_msgsMsgImu_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_sensor_msgs_msg_Imu);
}

size_t uwvm_robotis_humble_Ros2Sensor_msgsMsgImu_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_sensor_msgs_msg_Imu);
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgImu_validate(roswasmc_bounded_2_sensor_msgs_msg_Imu const* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_Imu_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgImu_wire_size(roswasmc_bounded_2_sensor_msgs_msg_Imu const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_Imu_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_sensor_msgs_msg_Imu_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgImu_encode(roswasmc_bounded_2_sensor_msgs_msg_Imu const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_sensor_msgs_msg_Imu_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgImu_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_Imu* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_Imu_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Sensor_msgsMsgJointState_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_sensor_msgs_msg_JointState);
}

size_t uwvm_robotis_humble_Ros2Sensor_msgsMsgJointState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_sensor_msgs_msg_JointState);
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgJointState_validate(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgJointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgJointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value,
                                                                 void* output,
                                                                 size_t capacity,
                                                                 size_t* length)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgJointState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Sensor_msgsMsgLaserScan_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_sensor_msgs_msg_LaserScan);
}

size_t uwvm_robotis_humble_Ros2Sensor_msgsMsgLaserScan_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_sensor_msgs_msg_LaserScan);
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgLaserScan_validate(roswasmc_bounded_2_sensor_msgs_msg_LaserScan const* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_LaserScan_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgLaserScan_wire_size(roswasmc_bounded_2_sensor_msgs_msg_LaserScan const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_LaserScan_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_sensor_msgs_msg_LaserScan_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgLaserScan_encode(roswasmc_bounded_2_sensor_msgs_msg_LaserScan const* value,
                                                                void* output,
                                                                size_t capacity,
                                                                size_t* length)
{
    return roswasmc_bounded_2_sensor_msgs_msg_LaserScan_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgLaserScan_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_LaserScan* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_LaserScan_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Sensor_msgsMsgMagneticField_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_sensor_msgs_msg_MagneticField);
}

size_t uwvm_robotis_humble_Ros2Sensor_msgsMsgMagneticField_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_sensor_msgs_msg_MagneticField);
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgMagneticField_validate(roswasmc_bounded_2_sensor_msgs_msg_MagneticField const* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_MagneticField_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgMagneticField_wire_size(roswasmc_bounded_2_sensor_msgs_msg_MagneticField const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_MagneticField_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_sensor_msgs_msg_MagneticField_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgMagneticField_encode(roswasmc_bounded_2_sensor_msgs_msg_MagneticField const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_2_sensor_msgs_msg_MagneticField_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Sensor_msgsMsgMagneticField_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_MagneticField* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_MagneticField_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_std_srvs_srv_SetBool_Request);
}

size_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_std_srvs_srv_SetBool_Request);
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Request_validate(roswasmc_bounded_2_std_srvs_srv_SetBool_Request const* value)
{
    return roswasmc_bounded_2_std_srvs_srv_SetBool_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Request_wire_size(roswasmc_bounded_2_std_srvs_srv_SetBool_Request const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_std_srvs_srv_SetBool_Request_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_std_srvs_srv_SetBool_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Request_encode(roswasmc_bounded_2_std_srvs_srv_SetBool_Request const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_2_std_srvs_srv_SetBool_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Request_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_SetBool_Request* value)
{
    return roswasmc_bounded_2_std_srvs_srv_SetBool_Request_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_std_srvs_srv_SetBool_Response);
}

size_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_std_srvs_srv_SetBool_Response);
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Response_validate(roswasmc_bounded_2_std_srvs_srv_SetBool_Response const* value)
{
    return roswasmc_bounded_2_std_srvs_srv_SetBool_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Response_wire_size(roswasmc_bounded_2_std_srvs_srv_SetBool_Response const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_std_srvs_srv_SetBool_Response_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_std_srvs_srv_SetBool_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Response_encode(roswasmc_bounded_2_std_srvs_srv_SetBool_Response const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_2_std_srvs_srv_SetBool_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvSetBool_Response_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_SetBool_Response* value)
{
    return roswasmc_bounded_2_std_srvs_srv_SetBool_Response_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_std_srvs_srv_Trigger_Request);
}

size_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_std_srvs_srv_Trigger_Request);
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Request_validate(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Request_wire_size(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_std_srvs_srv_Trigger_Request_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_std_srvs_srv_Trigger_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Request_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Request_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_Trigger_Request* value)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Request_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_std_srvs_srv_Trigger_Response);
}

size_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_std_srvs_srv_Trigger_Response);
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Response_validate(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Response_wire_size(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_std_srvs_srv_Trigger_Response_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_std_srvs_srv_Trigger_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Response_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Std_srvsSrvTrigger_Response_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_Trigger_Response* value)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Response_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Goal_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Goal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Goal_validate(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Goal_wire_size(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Goal_encode(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Goal_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Result_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Result_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Result_validate(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Result_wire_size(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result const* value,
                                                                              size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Result_encode(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Result_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Feedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Feedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Feedback_validate(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Feedback_wire_size(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback const* value,
                                                                                size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Feedback_encode(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsActionPatrol_Feedback_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSensorState_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSensorState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSensorState_validate(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSensorState_wire_size(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSensorState_encode(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_encode(value, output, capacity, length);
}

uint32_t
    uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSensorState_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSound_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSound_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSound_validate(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSound_wire_size(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSound_encode(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound const* value,
                                                                void* output,
                                                                size_t capacity,
                                                                size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgSound_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_msg_Sound* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgVersionInfo_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgVersionInfo_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgVersionInfo_validate(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgVersionInfo_wire_size(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgVersionInfo_encode(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_encode(value, output, capacity, length);
}

uint32_t
    uwvm_robotis_humble_Ros2Turtlebot3_msgsMsgVersionInfo_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Request_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Request_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Request_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_encode(value, output, capacity, length);
}

uint32_t
    uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Request_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Response_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Response_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Response_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_encode(value, output, capacity, length);
}

uint32_t
    uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvDqn_Response_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Request_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Request_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Request_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_encode(value, output, capacity, length);
}

uint32_t
    uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Request_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Response_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Response_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Response_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvGoal_Response_decode(void const* input,
                                                                        size_t length,
                                                                        roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Request_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Request_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Request_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Request_decode(void const* input,
                                                                        size_t length,
                                                                        roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_decode(input, length, value);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response);
}

size_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Response_validate(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response const* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Response_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Response_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_humble_Ros2Turtlebot3_msgsSrvSound_Response_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_decode(input, length, value);
}
