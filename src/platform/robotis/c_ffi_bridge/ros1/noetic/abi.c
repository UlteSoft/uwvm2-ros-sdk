/**
 * @file abi.c
 * @brief Delegate the complete robotis/noetic foreign ABI to the canonical C codecs.
 * @details No field, bound, default, malformed-wire rule or outcome is synthesized.
 * Link this source into the same application as the foreign-language caller.
 */
#include <robotis/c_ffi_bridge/ros1/noetic/abi.h>

size_t uwvm_robotis_noetic_Ros1Geometry_msgsPoint_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Point);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsPoint_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Point);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoint_validate(roswasmc_bounded_1_geometry_msgs_Point const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Point_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoint_wire_size(roswasmc_bounded_1_geometry_msgs_Point const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Point_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Point_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoint_encode(roswasmc_bounded_1_geometry_msgs_Point const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Point_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoint_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Point* value)
{
    return roswasmc_bounded_1_geometry_msgs_Point_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Quaternion);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Quaternion);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_validate(roswasmc_bounded_1_geometry_msgs_Quaternion const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_wire_size(roswasmc_bounded_1_geometry_msgs_Quaternion const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Quaternion_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_encode(roswasmc_bounded_1_geometry_msgs_Quaternion const* value,
                                                                void* output,
                                                                size_t capacity,
                                                                size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsQuaternion_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Quaternion* value)
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsPose_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Pose);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsPose_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Pose);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPose_validate(roswasmc_bounded_1_geometry_msgs_Pose const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Pose_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPose_wire_size(roswasmc_bounded_1_geometry_msgs_Pose const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Pose_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Pose_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPose_encode(roswasmc_bounded_1_geometry_msgs_Pose const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Pose_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPose_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Pose* value)
{
    return roswasmc_bounded_1_geometry_msgs_Pose_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_validate(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value)
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_wire_size(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_encode(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_encode(value, output, capacity, length);
}

uint32_t
    uwvm_robotis_noetic_Ros1Geometry_msgsPoseWithCovariance_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_PoseWithCovariance* value)
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsVector3_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Vector3);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsVector3_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Vector3);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsVector3_validate(roswasmc_bounded_1_geometry_msgs_Vector3 const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsVector3_wire_size(roswasmc_bounded_1_geometry_msgs_Vector3 const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Vector3_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_robotis_noetic_Ros1Geometry_msgsVector3_encode(roswasmc_bounded_1_geometry_msgs_Vector3 const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsVector3_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Vector3* value)
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Transform);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Transform);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_validate(roswasmc_bounded_1_geometry_msgs_Transform const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Transform_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_wire_size(roswasmc_bounded_1_geometry_msgs_Transform const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Transform_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Transform_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_encode(roswasmc_bounded_1_geometry_msgs_Transform const* value,
                                                               void* output,
                                                               size_t capacity,
                                                               size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Transform_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransform_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Transform* value)
{
    return roswasmc_bounded_1_geometry_msgs_Transform_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Time_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_time);
}

size_t uwvm_robotis_noetic_Ros1Time_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_time);
}

uint32_t uwvm_robotis_noetic_Ros1Time_validate(roswasmc_bounded_1_time const* value)
{
    return roswasmc_bounded_1_time_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Time_wire_size(roswasmc_bounded_1_time const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_time_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_time_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Time_encode(roswasmc_bounded_1_time const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_time_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Time_decode(void const* input, size_t length, roswasmc_bounded_1_time* value)
{
    return roswasmc_bounded_1_time_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Std_msgsHeader_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_msgs_Header);
}

size_t uwvm_robotis_noetic_Ros1Std_msgsHeader_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_msgs_Header);
}

uint32_t uwvm_robotis_noetic_Ros1Std_msgsHeader_validate(roswasmc_bounded_1_std_msgs_Header const* value)
{
    return roswasmc_bounded_1_std_msgs_Header_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Std_msgsHeader_wire_size(roswasmc_bounded_1_std_msgs_Header const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_msgs_Header_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_msgs_Header_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Std_msgsHeader_encode(roswasmc_bounded_1_std_msgs_Header const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_std_msgs_Header_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Std_msgsHeader_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Header* value)
{
    return roswasmc_bounded_1_std_msgs_Header_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_TransformStamped);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_TransformStamped);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_validate(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value)
{
    return roswasmc_bounded_1_geometry_msgs_TransformStamped_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_wire_size(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_TransformStamped_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_TransformStamped_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_encode(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_TransformStamped_encode(value, output, capacity, length);
}

uint32_t
    uwvm_robotis_noetic_Ros1Geometry_msgsTransformStamped_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_TransformStamped* value)
{
    return roswasmc_bounded_1_geometry_msgs_TransformStamped_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwist_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Twist);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwist_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Twist);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwist_validate(roswasmc_bounded_1_geometry_msgs_Twist const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Twist_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwist_wire_size(roswasmc_bounded_1_geometry_msgs_Twist const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Twist_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Twist_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwist_encode(roswasmc_bounded_1_geometry_msgs_Twist const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Twist_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwist_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Twist* value)
{
    return roswasmc_bounded_1_geometry_msgs_Twist_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_TwistStamped);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_TwistStamped);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_validate(roswasmc_bounded_1_geometry_msgs_TwistStamped const* value)
{
    return roswasmc_bounded_1_geometry_msgs_TwistStamped_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_wire_size(roswasmc_bounded_1_geometry_msgs_TwistStamped const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_TwistStamped_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_TwistStamped_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_encode(roswasmc_bounded_1_geometry_msgs_TwistStamped const* value,
                                                                  void* output,
                                                                  size_t capacity,
                                                                  size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_TwistStamped_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistStamped_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_TwistStamped* value)
{
    return roswasmc_bounded_1_geometry_msgs_TwistStamped_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance);
}

size_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_validate(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance const* value)
{
    return roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_wire_size(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_encode(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Geometry_msgsTwistWithCovariance_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_geometry_msgs_TwistWithCovariance* value)
{
    return roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_nav_msgs_Odometry);
}

size_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_nav_msgs_Odometry);
}

uint32_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_validate(roswasmc_bounded_1_nav_msgs_Odometry const* value)
{
    return roswasmc_bounded_1_nav_msgs_Odometry_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_wire_size(roswasmc_bounded_1_nav_msgs_Odometry const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_nav_msgs_Odometry_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_nav_msgs_Odometry_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_encode(roswasmc_bounded_1_nav_msgs_Odometry const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_nav_msgs_Odometry_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Nav_msgsOdometry_decode(void const* input, size_t length, roswasmc_bounded_1_nav_msgs_Odometry* value)
{
    return roswasmc_bounded_1_nav_msgs_Odometry_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_sensor_msgs_BatteryState);
}

size_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_sensor_msgs_BatteryState);
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_validate(roswasmc_bounded_1_sensor_msgs_BatteryState const* value)
{
    return roswasmc_bounded_1_sensor_msgs_BatteryState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_wire_size(roswasmc_bounded_1_sensor_msgs_BatteryState const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_sensor_msgs_BatteryState_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_sensor_msgs_BatteryState_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_encode(roswasmc_bounded_1_sensor_msgs_BatteryState const* value,
                                                                void* output,
                                                                size_t capacity,
                                                                size_t* length)
{
    return roswasmc_bounded_1_sensor_msgs_BatteryState_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsBatteryState_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_BatteryState* value)
{
    return roswasmc_bounded_1_sensor_msgs_BatteryState_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_sensor_msgs_Imu);
}

size_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_sensor_msgs_Imu);
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_validate(roswasmc_bounded_1_sensor_msgs_Imu const* value)
{
    return roswasmc_bounded_1_sensor_msgs_Imu_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_wire_size(roswasmc_bounded_1_sensor_msgs_Imu const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_sensor_msgs_Imu_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_sensor_msgs_Imu_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_encode(roswasmc_bounded_1_sensor_msgs_Imu const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_sensor_msgs_Imu_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsImu_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_Imu* value)
{
    return roswasmc_bounded_1_sensor_msgs_Imu_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Sensor_msgsJointState_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_sensor_msgs_JointState);
}

size_t uwvm_robotis_noetic_Ros1Sensor_msgsJointState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_sensor_msgs_JointState);
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsJointState_validate(roswasmc_bounded_1_sensor_msgs_JointState const* value)
{
    return roswasmc_bounded_1_sensor_msgs_JointState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsJointState_wire_size(roswasmc_bounded_1_sensor_msgs_JointState const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_sensor_msgs_JointState_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_sensor_msgs_JointState_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_robotis_noetic_Ros1Sensor_msgsJointState_encode(roswasmc_bounded_1_sensor_msgs_JointState const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_sensor_msgs_JointState_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsJointState_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_JointState* value)
{
    return roswasmc_bounded_1_sensor_msgs_JointState_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_sensor_msgs_LaserScan);
}

size_t uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_sensor_msgs_LaserScan);
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_validate(roswasmc_bounded_1_sensor_msgs_LaserScan const* value)
{
    return roswasmc_bounded_1_sensor_msgs_LaserScan_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_wire_size(roswasmc_bounded_1_sensor_msgs_LaserScan const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_sensor_msgs_LaserScan_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_sensor_msgs_LaserScan_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_encode(roswasmc_bounded_1_sensor_msgs_LaserScan const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_sensor_msgs_LaserScan_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsLaserScan_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_LaserScan* value)
{
    return roswasmc_bounded_1_sensor_msgs_LaserScan_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_sensor_msgs_MagneticField);
}

size_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_sensor_msgs_MagneticField);
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_validate(roswasmc_bounded_1_sensor_msgs_MagneticField const* value)
{
    return roswasmc_bounded_1_sensor_msgs_MagneticField_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_wire_size(roswasmc_bounded_1_sensor_msgs_MagneticField const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_sensor_msgs_MagneticField_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_sensor_msgs_MagneticField_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_encode(roswasmc_bounded_1_sensor_msgs_MagneticField const* value,
                                                                 void* output,
                                                                 size_t capacity,
                                                                 size_t* length)
{
    return roswasmc_bounded_1_sensor_msgs_MagneticField_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Sensor_msgsMagneticField_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_MagneticField* value)
{
    return roswasmc_bounded_1_sensor_msgs_MagneticField_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_srvs_SetBoolRequest);
}

size_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_srvs_SetBoolRequest);
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_validate(roswasmc_bounded_1_std_srvs_SetBoolRequest const* value)
{
    return roswasmc_bounded_1_std_srvs_SetBoolRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_wire_size(roswasmc_bounded_1_std_srvs_SetBoolRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_srvs_SetBoolRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_srvs_SetBoolRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_encode(roswasmc_bounded_1_std_srvs_SetBoolRequest const* value,
                                                               void* output,
                                                               size_t capacity,
                                                               size_t* length)
{
    return roswasmc_bounded_1_std_srvs_SetBoolRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolRequest_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_SetBoolRequest* value)
{
    return roswasmc_bounded_1_std_srvs_SetBoolRequest_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_srvs_SetBoolResponse);
}

size_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_srvs_SetBoolResponse);
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_validate(roswasmc_bounded_1_std_srvs_SetBoolResponse const* value)
{
    return roswasmc_bounded_1_std_srvs_SetBoolResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_wire_size(roswasmc_bounded_1_std_srvs_SetBoolResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_srvs_SetBoolResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_srvs_SetBoolResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_encode(roswasmc_bounded_1_std_srvs_SetBoolResponse const* value,
                                                                void* output,
                                                                size_t capacity,
                                                                size_t* length)
{
    return roswasmc_bounded_1_std_srvs_SetBoolResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsSetBoolResponse_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_SetBoolResponse* value)
{
    return roswasmc_bounded_1_std_srvs_SetBoolResponse_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_srvs_TriggerRequest);
}

size_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_srvs_TriggerRequest);
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_validate(roswasmc_bounded_1_std_srvs_TriggerRequest const* value)
{
    return roswasmc_bounded_1_std_srvs_TriggerRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_wire_size(roswasmc_bounded_1_std_srvs_TriggerRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_srvs_TriggerRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_srvs_TriggerRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_encode(roswasmc_bounded_1_std_srvs_TriggerRequest const* value,
                                                               void* output,
                                                               size_t capacity,
                                                               size_t* length)
{
    return roswasmc_bounded_1_std_srvs_TriggerRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerRequest_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_TriggerRequest* value)
{
    return roswasmc_bounded_1_std_srvs_TriggerRequest_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_srvs_TriggerResponse);
}

size_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_srvs_TriggerResponse);
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_validate(roswasmc_bounded_1_std_srvs_TriggerResponse const* value)
{
    return roswasmc_bounded_1_std_srvs_TriggerResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_wire_size(roswasmc_bounded_1_std_srvs_TriggerResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_srvs_TriggerResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_srvs_TriggerResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_encode(roswasmc_bounded_1_std_srvs_TriggerResponse const* value,
                                                                void* output,
                                                                size_t capacity,
                                                                size_t* length)
{
    return roswasmc_bounded_1_std_srvs_TriggerResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Std_srvsTriggerResponse_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_TriggerResponse* value)
{
    return roswasmc_bounded_1_std_srvs_TriggerResponse_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_validate(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal const* value)
{
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_wire_size(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_encode(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Goal_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal* value)
{
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_validate(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result const* value)
{
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_wire_size(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result const* value,
                                                                              size_t* length)
{
    if(!length || !roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_encode(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Result_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result* value)
{
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_validate(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback const* value)
{
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_wire_size(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback const* value,
                                                                                size_t* length)
{
    if(!length || !roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_encode(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_exampleTurtlebot3Feedback_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback* value)
{
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_turtlebot3_msgs_SensorState);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_turtlebot3_msgs_SensorState);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_validate(roswasmc_bounded_1_turtlebot3_msgs_SensorState const* value)
{
    return roswasmc_bounded_1_turtlebot3_msgs_SensorState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_wire_size(roswasmc_bounded_1_turtlebot3_msgs_SensorState const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_turtlebot3_msgs_SensorState_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_turtlebot3_msgs_SensorState_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_encode(roswasmc_bounded_1_turtlebot3_msgs_SensorState const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_1_turtlebot3_msgs_SensorState_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSensorState_decode(void const* input, size_t length, roswasmc_bounded_1_turtlebot3_msgs_SensorState* value)
{
    return roswasmc_bounded_1_turtlebot3_msgs_SensorState_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_turtlebot3_msgs_Sound);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_turtlebot3_msgs_Sound);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_validate(roswasmc_bounded_1_turtlebot3_msgs_Sound const* value)
{
    return roswasmc_bounded_1_turtlebot3_msgs_Sound_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_wire_size(roswasmc_bounded_1_turtlebot3_msgs_Sound const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_turtlebot3_msgs_Sound_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_turtlebot3_msgs_Sound_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_encode(roswasmc_bounded_1_turtlebot3_msgs_Sound const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_turtlebot3_msgs_Sound_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsSound_decode(void const* input, size_t length, roswasmc_bounded_1_turtlebot3_msgs_Sound* value)
{
    return roswasmc_bounded_1_turtlebot3_msgs_Sound_decode(input, length, value);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo);
}

size_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_validate(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo const* value)
{
    return roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_wire_size(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_wire_size(value);
    return 0u;
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_encode(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_encode(value, output, capacity, length);
}

uint32_t uwvm_robotis_noetic_Ros1Turtlebot3_msgsVersionInfo_decode(void const* input, size_t length, roswasmc_bounded_1_turtlebot3_msgs_VersionInfo* value)
{
    return roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_decode(input, length, value);
}
