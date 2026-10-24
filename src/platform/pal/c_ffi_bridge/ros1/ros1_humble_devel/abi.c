/**
 * @file abi.c
 * @brief Delegate the complete pal/ros1_humble_devel foreign ABI to the canonical C codecs.
 * @details No field, bound, default, malformed-wire rule or outcome is synthesized.
 * Link this source into the same application as the foreign-language caller.
 */
#include <pal/c_ffi_bridge/ros1/ros1_humble_devel/abi.h>

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsVector3_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Vector3);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsVector3_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Vector3);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsVector3_validate(roswasmc_bounded_1_geometry_msgs_Vector3 const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsVector3_wire_size(roswasmc_bounded_1_geometry_msgs_Vector3 const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Vector3_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsVector3_encode(roswasmc_bounded_1_geometry_msgs_Vector3 const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsVector3_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Vector3* value)
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsAccel_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Accel);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsAccel_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Accel);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsAccel_validate(roswasmc_bounded_1_geometry_msgs_Accel const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Accel_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsAccel_wire_size(roswasmc_bounded_1_geometry_msgs_Accel const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Accel_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Accel_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsAccel_encode(roswasmc_bounded_1_geometry_msgs_Accel const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Accel_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsAccel_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Accel* value)
{
    return roswasmc_bounded_1_geometry_msgs_Accel_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Point);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Point);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint_validate(roswasmc_bounded_1_geometry_msgs_Point const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Point_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint_wire_size(roswasmc_bounded_1_geometry_msgs_Point const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Point_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Point_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint_encode(roswasmc_bounded_1_geometry_msgs_Point const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Point_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Point* value)
{
    return roswasmc_bounded_1_geometry_msgs_Point_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint32_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Point32);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint32_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Point32);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint32_validate(roswasmc_bounded_1_geometry_msgs_Point32 const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Point32_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint32_wire_size(roswasmc_bounded_1_geometry_msgs_Point32 const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Point32_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Point32_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint32_encode(roswasmc_bounded_1_geometry_msgs_Point32 const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Point32_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoint32_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Point32* value)
{
    return roswasmc_bounded_1_geometry_msgs_Point32_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Time_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_time);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Time_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_time);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Time_validate(roswasmc_bounded_1_time const* value)
{
    return roswasmc_bounded_1_time_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Time_wire_size(roswasmc_bounded_1_time const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_time_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_time_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Time_encode(roswasmc_bounded_1_time const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_time_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Time_decode(void const* input, size_t length, roswasmc_bounded_1_time* value)
{
    return roswasmc_bounded_1_time_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsHeader_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_msgs_Header);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsHeader_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_msgs_Header);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsHeader_validate(roswasmc_bounded_1_std_msgs_Header const* value)
{
    return roswasmc_bounded_1_std_msgs_Header_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsHeader_wire_size(roswasmc_bounded_1_std_msgs_Header const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_msgs_Header_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_msgs_Header_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsHeader_encode(roswasmc_bounded_1_std_msgs_Header const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_std_msgs_Header_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsHeader_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Header* value)
{
    return roswasmc_bounded_1_std_msgs_Header_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPointStamped_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_PointStamped);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPointStamped_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_PointStamped);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPointStamped_validate(roswasmc_bounded_1_geometry_msgs_PointStamped const* value)
{
    return roswasmc_bounded_1_geometry_msgs_PointStamped_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPointStamped_wire_size(roswasmc_bounded_1_geometry_msgs_PointStamped const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_PointStamped_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_PointStamped_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPointStamped_encode(roswasmc_bounded_1_geometry_msgs_PointStamped const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_PointStamped_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPointStamped_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_PointStamped* value)
{
    return roswasmc_bounded_1_geometry_msgs_PointStamped_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsQuaternion_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Quaternion);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsQuaternion_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Quaternion);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsQuaternion_validate(roswasmc_bounded_1_geometry_msgs_Quaternion const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsQuaternion_wire_size(roswasmc_bounded_1_geometry_msgs_Quaternion const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Quaternion_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsQuaternion_encode(roswasmc_bounded_1_geometry_msgs_Quaternion const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsQuaternion_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Quaternion* value)
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Pose);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Pose);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose_validate(roswasmc_bounded_1_geometry_msgs_Pose const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Pose_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose_wire_size(roswasmc_bounded_1_geometry_msgs_Pose const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Pose_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Pose_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose_encode(roswasmc_bounded_1_geometry_msgs_Pose const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Pose_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Pose* value)
{
    return roswasmc_bounded_1_geometry_msgs_Pose_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose2D_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Pose2D);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose2D_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Pose2D);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose2D_validate(roswasmc_bounded_1_geometry_msgs_Pose2D const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Pose2D_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose2D_wire_size(roswasmc_bounded_1_geometry_msgs_Pose2D const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Pose2D_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Pose2D_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose2D_encode(roswasmc_bounded_1_geometry_msgs_Pose2D const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Pose2D_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPose2D_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Pose2D* value)
{
    return roswasmc_bounded_1_geometry_msgs_Pose2D_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseArray_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_PoseArray);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseArray_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_PoseArray);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseArray_validate(roswasmc_bounded_1_geometry_msgs_PoseArray const* value)
{
    return roswasmc_bounded_1_geometry_msgs_PoseArray_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseArray_wire_size(roswasmc_bounded_1_geometry_msgs_PoseArray const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_PoseArray_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_PoseArray_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseArray_encode(roswasmc_bounded_1_geometry_msgs_PoseArray const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_PoseArray_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseArray_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_PoseArray* value)
{
    return roswasmc_bounded_1_geometry_msgs_PoseArray_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseStamped_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_PoseStamped);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseStamped_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_PoseStamped);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseStamped_validate(roswasmc_bounded_1_geometry_msgs_PoseStamped const* value)
{
    return roswasmc_bounded_1_geometry_msgs_PoseStamped_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseStamped_wire_size(roswasmc_bounded_1_geometry_msgs_PoseStamped const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_PoseStamped_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_PoseStamped_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseStamped_encode(roswasmc_bounded_1_geometry_msgs_PoseStamped const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_PoseStamped_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseStamped_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_PoseStamped* value)
{
    return roswasmc_bounded_1_geometry_msgs_PoseStamped_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovariance_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovariance_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovariance_validate(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value)
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovariance_wire_size(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovariance_encode(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovariance_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_geometry_msgs_PoseWithCovariance* value)
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_validate(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped const* value)
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_wire_size(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_encode(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsPoseWithCovarianceStamped_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped* value)
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransform_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Transform);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransform_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Transform);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransform_validate(roswasmc_bounded_1_geometry_msgs_Transform const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Transform_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransform_wire_size(roswasmc_bounded_1_geometry_msgs_Transform const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Transform_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Transform_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransform_encode(roswasmc_bounded_1_geometry_msgs_Transform const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Transform_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransform_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Transform* value)
{
    return roswasmc_bounded_1_geometry_msgs_Transform_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransformStamped_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_TransformStamped);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransformStamped_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_TransformStamped);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransformStamped_validate(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value)
{
    return roswasmc_bounded_1_geometry_msgs_TransformStamped_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransformStamped_wire_size(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_TransformStamped_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_TransformStamped_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransformStamped_encode(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_TransformStamped_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTransformStamped_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_geometry_msgs_TransformStamped* value)
{
    return roswasmc_bounded_1_geometry_msgs_TransformStamped_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTwist_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Twist);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTwist_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Twist);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTwist_validate(roswasmc_bounded_1_geometry_msgs_Twist const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Twist_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTwist_wire_size(roswasmc_bounded_1_geometry_msgs_Twist const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Twist_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Twist_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTwist_encode(roswasmc_bounded_1_geometry_msgs_Twist const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Twist_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsTwist_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Twist* value)
{
    return roswasmc_bounded_1_geometry_msgs_Twist_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsWrench_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_geometry_msgs_Wrench);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsWrench_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_geometry_msgs_Wrench);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsWrench_validate(roswasmc_bounded_1_geometry_msgs_Wrench const* value)
{
    return roswasmc_bounded_1_geometry_msgs_Wrench_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsWrench_wire_size(roswasmc_bounded_1_geometry_msgs_Wrench const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_geometry_msgs_Wrench_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_geometry_msgs_Wrench_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsWrench_encode(roswasmc_bounded_1_geometry_msgs_Wrench const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Wrench_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Geometry_msgsWrench_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Wrench* value)
{
    return roswasmc_bounded_1_geometry_msgs_Wrench_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Humanoid_nav_msgsStepTarget_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_humanoid_nav_msgs_StepTarget);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Humanoid_nav_msgsStepTarget_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_humanoid_nav_msgs_StepTarget);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Humanoid_nav_msgsStepTarget_validate(roswasmc_bounded_1_humanoid_nav_msgs_StepTarget const* value)
{
    return roswasmc_bounded_1_humanoid_nav_msgs_StepTarget_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Humanoid_nav_msgsStepTarget_wire_size(roswasmc_bounded_1_humanoid_nav_msgs_StepTarget const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_humanoid_nav_msgs_StepTarget_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_humanoid_nav_msgs_StepTarget_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Humanoid_nav_msgsStepTarget_encode(roswasmc_bounded_1_humanoid_nav_msgs_StepTarget const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_humanoid_nav_msgs_StepTarget_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Humanoid_nav_msgsStepTarget_decode(void const* input, size_t length, roswasmc_bounded_1_humanoid_nav_msgs_StepTarget* value)
{
    return roswasmc_bounded_1_humanoid_nav_msgs_StepTarget_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsMapMetaData_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_nav_msgs_MapMetaData);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsMapMetaData_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_nav_msgs_MapMetaData);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsMapMetaData_validate(roswasmc_bounded_1_nav_msgs_MapMetaData const* value)
{
    return roswasmc_bounded_1_nav_msgs_MapMetaData_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsMapMetaData_wire_size(roswasmc_bounded_1_nav_msgs_MapMetaData const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_nav_msgs_MapMetaData_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_nav_msgs_MapMetaData_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsMapMetaData_encode(roswasmc_bounded_1_nav_msgs_MapMetaData const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_1_nav_msgs_MapMetaData_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsMapMetaData_decode(void const* input, size_t length, roswasmc_bounded_1_nav_msgs_MapMetaData* value)
{
    return roswasmc_bounded_1_nav_msgs_MapMetaData_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsOccupancyGrid_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_nav_msgs_OccupancyGrid);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsOccupancyGrid_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_nav_msgs_OccupancyGrid);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsOccupancyGrid_validate(roswasmc_bounded_1_nav_msgs_OccupancyGrid const* value)
{
    return roswasmc_bounded_1_nav_msgs_OccupancyGrid_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsOccupancyGrid_wire_size(roswasmc_bounded_1_nav_msgs_OccupancyGrid const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_nav_msgs_OccupancyGrid_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_nav_msgs_OccupancyGrid_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsOccupancyGrid_encode(roswasmc_bounded_1_nav_msgs_OccupancyGrid const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length)
{
    return roswasmc_bounded_1_nav_msgs_OccupancyGrid_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Nav_msgsOccupancyGrid_decode(void const* input, size_t length, roswasmc_bounded_1_nav_msgs_OccupancyGrid* value)
{
    return roswasmc_bounded_1_nav_msgs_OccupancyGrid_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourArgument_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourArgument_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourArgument_validate(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument const* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourArgument_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourArgument_encode(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourArgument_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_validate(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest const* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_encode(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_validate(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse const* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_encode(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourEventResponse_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_validate(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal const* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_encode(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskGoal_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_validate(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult const* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_encode(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskResult_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_validate(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback const* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_encode(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsBehaviourTaskFeedback_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationGoal_validate(roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal const* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationGoal_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationGoal_encode(roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationGoal_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationResult_validate(roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult const* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationResult_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationResult_encode(roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationResult_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationFeedback_validate(roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback const* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationFeedback_wire_size(roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationFeedback_encode(roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_behaviour_msgsPresentationFeedback_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback* value)
{
    return roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_common_msgs_DisableGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_common_msgs_DisableGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableGoal_validate(roswasmc_bounded_1_pal_common_msgs_DisableGoal const* value)
{
    return roswasmc_bounded_1_pal_common_msgs_DisableGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableGoal_wire_size(roswasmc_bounded_1_pal_common_msgs_DisableGoal const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_common_msgs_DisableGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_common_msgs_DisableGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableGoal_encode(roswasmc_bounded_1_pal_common_msgs_DisableGoal const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_pal_common_msgs_DisableGoal_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableGoal_decode(void const* input, size_t length, roswasmc_bounded_1_pal_common_msgs_DisableGoal* value)
{
    return roswasmc_bounded_1_pal_common_msgs_DisableGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_common_msgs_DisableResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_common_msgs_DisableResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableResult_validate(roswasmc_bounded_1_pal_common_msgs_DisableResult const* value)
{
    return roswasmc_bounded_1_pal_common_msgs_DisableResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableResult_wire_size(roswasmc_bounded_1_pal_common_msgs_DisableResult const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_common_msgs_DisableResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_common_msgs_DisableResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableResult_encode(roswasmc_bounded_1_pal_common_msgs_DisableResult const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_common_msgs_DisableResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableResult_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_common_msgs_DisableResult* value)
{
    return roswasmc_bounded_1_pal_common_msgs_DisableResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_common_msgs_DisableFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_common_msgs_DisableFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableFeedback_validate(roswasmc_bounded_1_pal_common_msgs_DisableFeedback const* value)
{
    return roswasmc_bounded_1_pal_common_msgs_DisableFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableFeedback_wire_size(roswasmc_bounded_1_pal_common_msgs_DisableFeedback const* value,
                                                                                 size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_common_msgs_DisableFeedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_common_msgs_DisableFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableFeedback_encode(roswasmc_bounded_1_pal_common_msgs_DisableFeedback const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    return roswasmc_bounded_1_pal_common_msgs_DisableFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsDisableFeedback_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_common_msgs_DisableFeedback* value)
{
    return roswasmc_bounded_1_pal_common_msgs_DisableFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_common_msgs_EmptyGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_common_msgs_EmptyGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyGoal_validate(roswasmc_bounded_1_pal_common_msgs_EmptyGoal const* value)
{
    return roswasmc_bounded_1_pal_common_msgs_EmptyGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyGoal_wire_size(roswasmc_bounded_1_pal_common_msgs_EmptyGoal const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_common_msgs_EmptyGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_common_msgs_EmptyGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyGoal_encode(roswasmc_bounded_1_pal_common_msgs_EmptyGoal const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_pal_common_msgs_EmptyGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyGoal_decode(void const* input, size_t length, roswasmc_bounded_1_pal_common_msgs_EmptyGoal* value)
{
    return roswasmc_bounded_1_pal_common_msgs_EmptyGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_common_msgs_EmptyResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_common_msgs_EmptyResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyResult_validate(roswasmc_bounded_1_pal_common_msgs_EmptyResult const* value)
{
    return roswasmc_bounded_1_pal_common_msgs_EmptyResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyResult_wire_size(roswasmc_bounded_1_pal_common_msgs_EmptyResult const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_common_msgs_EmptyResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_common_msgs_EmptyResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyResult_encode(roswasmc_bounded_1_pal_common_msgs_EmptyResult const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_pal_common_msgs_EmptyResult_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyResult_decode(void const* input, size_t length, roswasmc_bounded_1_pal_common_msgs_EmptyResult* value)
{
    return roswasmc_bounded_1_pal_common_msgs_EmptyResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_common_msgs_EmptyFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_common_msgs_EmptyFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyFeedback_validate(roswasmc_bounded_1_pal_common_msgs_EmptyFeedback const* value)
{
    return roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyFeedback_wire_size(roswasmc_bounded_1_pal_common_msgs_EmptyFeedback const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyFeedback_encode(roswasmc_bounded_1_pal_common_msgs_EmptyFeedback const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsEmptyFeedback_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_common_msgs_EmptyFeedback* value)
{
    return roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_common_msgs_GetStringRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_common_msgs_GetStringRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringRequest_validate(roswasmc_bounded_1_pal_common_msgs_GetStringRequest const* value)
{
    return roswasmc_bounded_1_pal_common_msgs_GetStringRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringRequest_wire_size(roswasmc_bounded_1_pal_common_msgs_GetStringRequest const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_common_msgs_GetStringRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_common_msgs_GetStringRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringRequest_encode(roswasmc_bounded_1_pal_common_msgs_GetStringRequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_common_msgs_GetStringRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringRequest_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_common_msgs_GetStringRequest* value)
{
    return roswasmc_bounded_1_pal_common_msgs_GetStringRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_common_msgs_GetStringResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_common_msgs_GetStringResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringResponse_validate(roswasmc_bounded_1_pal_common_msgs_GetStringResponse const* value)
{
    return roswasmc_bounded_1_pal_common_msgs_GetStringResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringResponse_wire_size(roswasmc_bounded_1_pal_common_msgs_GetStringResponse const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_common_msgs_GetStringResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_common_msgs_GetStringResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringResponse_encode(roswasmc_bounded_1_pal_common_msgs_GetStringResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_common_msgs_GetStringResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsGetStringResponse_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_common_msgs_GetStringResponse* value)
{
    return roswasmc_bounded_1_pal_common_msgs_GetStringResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsJointCurrent_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_common_msgs_JointCurrent);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsJointCurrent_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_common_msgs_JointCurrent);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsJointCurrent_validate(roswasmc_bounded_1_pal_common_msgs_JointCurrent const* value)
{
    return roswasmc_bounded_1_pal_common_msgs_JointCurrent_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsJointCurrent_wire_size(roswasmc_bounded_1_pal_common_msgs_JointCurrent const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_common_msgs_JointCurrent_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_common_msgs_JointCurrent_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsJointCurrent_encode(roswasmc_bounded_1_pal_common_msgs_JointCurrent const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_pal_common_msgs_JointCurrent_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsJointCurrent_decode(void const* input, size_t length, roswasmc_bounded_1_pal_common_msgs_JointCurrent* value)
{
    return roswasmc_bounded_1_pal_common_msgs_JointCurrent_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_common_msgs_SetStringRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_common_msgs_SetStringRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringRequest_validate(roswasmc_bounded_1_pal_common_msgs_SetStringRequest const* value)
{
    return roswasmc_bounded_1_pal_common_msgs_SetStringRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringRequest_wire_size(roswasmc_bounded_1_pal_common_msgs_SetStringRequest const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_common_msgs_SetStringRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_common_msgs_SetStringRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringRequest_encode(roswasmc_bounded_1_pal_common_msgs_SetStringRequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_common_msgs_SetStringRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringRequest_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_common_msgs_SetStringRequest* value)
{
    return roswasmc_bounded_1_pal_common_msgs_SetStringRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_common_msgs_SetStringResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_common_msgs_SetStringResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringResponse_validate(roswasmc_bounded_1_pal_common_msgs_SetStringResponse const* value)
{
    return roswasmc_bounded_1_pal_common_msgs_SetStringResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringResponse_wire_size(roswasmc_bounded_1_pal_common_msgs_SetStringResponse const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_common_msgs_SetStringResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_common_msgs_SetStringResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringResponse_encode(roswasmc_bounded_1_pal_common_msgs_SetStringResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_common_msgs_SetStringResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_common_msgsSetStringResponse_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_common_msgs_SetStringResponse* value)
{
    return roswasmc_bounded_1_pal_common_msgs_SetStringResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsActuatorCurrentLimit_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsActuatorCurrentLimit_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsActuatorCurrentLimit_validate(roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit const* value)
{
    return roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsActuatorCurrentLimit_wire_size(roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsActuatorCurrentLimit_encode(roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsActuatorCurrentLimit_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit* value)
{
    return roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitRequest_validate(roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest const* value)
{
    return roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitRequest_wire_size(roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitRequest_encode(roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest* value)
{
    return roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitResponse_validate(roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse const* value)
{
    return roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitResponse_wire_size(roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitResponse_encode(roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsCurrentLimitResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse* value)
{
    return roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerGoal_validate(roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal const* value)
{
    return roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerGoal_wire_size(roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerGoal_encode(roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerGoal_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal* value)
{
    return roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_control_msgs_MotionManagerResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_control_msgs_MotionManagerResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerResult_validate(roswasmc_bounded_1_pal_control_msgs_MotionManagerResult const* value)
{
    return roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerResult_wire_size(roswasmc_bounded_1_pal_control_msgs_MotionManagerResult const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerResult_encode(roswasmc_bounded_1_pal_control_msgs_MotionManagerResult const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerResult_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_control_msgs_MotionManagerResult* value)
{
    return roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerFeedback_validate(roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback const* value)
{
    return roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerFeedback_wire_size(roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerFeedback_encode(roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsMotionManagerFeedback_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback* value)
{
    return roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Duration_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_duration);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Duration_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_duration);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Duration_validate(roswasmc_bounded_1_duration const* value)
{
    return roswasmc_bounded_1_duration_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Duration_wire_size(roswasmc_bounded_1_duration const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_duration_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_duration_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Duration_encode(roswasmc_bounded_1_duration const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_duration_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Duration_decode(void const* input, size_t length, roswasmc_bounded_1_duration* value)
{
    return roswasmc_bounded_1_duration_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsOperationalSpaceGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsOperationalSpaceGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsOperationalSpaceGoal_validate(roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal const* value)
{
    return roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsOperationalSpaceGoal_wire_size(roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsOperationalSpaceGoal_encode(roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsOperationalSpaceGoal_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal* value)
{
    return roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_validate(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint const* value)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_wire_size(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_encode(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryPoint_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint* value)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_validate(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal const* value)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_wire_size(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_encode(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryGoal_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal* value)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_validate(
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult const* value)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_wire_size(
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_encode(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryResult_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult* value)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_validate(
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback const* value)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_wire_size(
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_encode(
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback* value)
{
    return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsImage_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_sensor_msgs_Image);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsImage_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_sensor_msgs_Image);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsImage_validate(roswasmc_bounded_1_sensor_msgs_Image const* value)
{
    return roswasmc_bounded_1_sensor_msgs_Image_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsImage_wire_size(roswasmc_bounded_1_sensor_msgs_Image const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_sensor_msgs_Image_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_sensor_msgs_Image_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsImage_encode(roswasmc_bounded_1_sensor_msgs_Image const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_sensor_msgs_Image_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsImage_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_Image* value)
{
    return roswasmc_bounded_1_sensor_msgs_Image_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_validate(
    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_wire_size(
    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_encode(
    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_validate(
    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_wire_size(
    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_encode(
    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsAddTexturedObjectResponse_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_validate(
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_wire_size(
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_encode(
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_validate(
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_wire_size(
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_encode(
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetection2d_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_Detection2d);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetection2d_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_Detection2d);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetection2d_validate(roswasmc_bounded_1_pal_detection_msgs_Detection2d const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_Detection2d_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetection2d_wire_size(roswasmc_bounded_1_pal_detection_msgs_Detection2d const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_Detection2d_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_Detection2d_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetection2d_encode(roswasmc_bounded_1_pal_detection_msgs_Detection2d const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_Detection2d_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetection2d_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_detection_msgs_Detection2d* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_Detection2d_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetections2d_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_Detections2d);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetections2d_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_Detections2d);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetections2d_validate(roswasmc_bounded_1_pal_detection_msgs_Detections2d const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_Detections2d_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetections2d_wire_size(roswasmc_bounded_1_pal_detection_msgs_Detections2d const* value,
                                                                                 size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_Detections2d_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_Detections2d_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetections2d_encode(roswasmc_bounded_1_pal_detection_msgs_Detections2d const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_Detections2d_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsDetections2d_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_detection_msgs_Detections2d* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_Detections2d_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetection_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_FaceDetection);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetection_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_FaceDetection);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetection_validate(roswasmc_bounded_1_pal_detection_msgs_FaceDetection const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_FaceDetection_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetection_wire_size(roswasmc_bounded_1_pal_detection_msgs_FaceDetection const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_FaceDetection_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_FaceDetection_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetection_encode(roswasmc_bounded_1_pal_detection_msgs_FaceDetection const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_FaceDetection_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetection_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_detection_msgs_FaceDetection* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_FaceDetection_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetections_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_FaceDetections);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetections_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_FaceDetections);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetections_validate(roswasmc_bounded_1_pal_detection_msgs_FaceDetections const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_FaceDetections_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetections_wire_size(roswasmc_bounded_1_pal_detection_msgs_FaceDetections const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_FaceDetections_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_FaceDetections_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetections_encode(roswasmc_bounded_1_pal_detection_msgs_FaceDetections const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_FaceDetections_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceDetections_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_detection_msgs_FaceDetections* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_FaceDetections_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsRegionOfInterest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_sensor_msgs_RegionOfInterest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsRegionOfInterest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_sensor_msgs_RegionOfInterest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsRegionOfInterest_validate(roswasmc_bounded_1_sensor_msgs_RegionOfInterest const* value)
{
    return roswasmc_bounded_1_sensor_msgs_RegionOfInterest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsRegionOfInterest_wire_size(roswasmc_bounded_1_sensor_msgs_RegionOfInterest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_sensor_msgs_RegionOfInterest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_sensor_msgs_RegionOfInterest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsRegionOfInterest_encode(roswasmc_bounded_1_sensor_msgs_RegionOfInterest const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_sensor_msgs_RegionOfInterest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsRegionOfInterest_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_RegionOfInterest* value)
{
    return roswasmc_bounded_1_sensor_msgs_RegionOfInterest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceThermalDetections_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceThermalDetections_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceThermalDetections_validate(roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceThermalDetections_wire_size(roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceThermalDetections_encode(roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsFaceThermalDetections_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsGesture_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_Gesture);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsGesture_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_Gesture);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsGesture_validate(roswasmc_bounded_1_pal_detection_msgs_Gesture const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_Gesture_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsGesture_wire_size(roswasmc_bounded_1_pal_detection_msgs_Gesture const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_Gesture_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_Gesture_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsGesture_encode(roswasmc_bounded_1_pal_detection_msgs_Gesture const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_Gesture_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsGesture_decode(void const* input, size_t length, roswasmc_bounded_1_pal_detection_msgs_Gesture* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_Gesture_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsLegDetections_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_LegDetections);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsLegDetections_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_LegDetections);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsLegDetections_validate(roswasmc_bounded_1_pal_detection_msgs_LegDetections const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_LegDetections_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsLegDetections_wire_size(roswasmc_bounded_1_pal_detection_msgs_LegDetections const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_LegDetections_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_LegDetections_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsLegDetections_encode(roswasmc_bounded_1_pal_detection_msgs_LegDetections const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_LegDetections_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsLegDetections_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_detection_msgs_LegDetections* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_LegDetections_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacle_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_Obstacle);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacle_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_Obstacle);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacle_validate(roswasmc_bounded_1_pal_detection_msgs_Obstacle const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_Obstacle_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacle_wire_size(roswasmc_bounded_1_pal_detection_msgs_Obstacle const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_Obstacle_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_Obstacle_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacle_encode(roswasmc_bounded_1_pal_detection_msgs_Obstacle const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_Obstacle_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacle_decode(void const* input, size_t length, roswasmc_bounded_1_pal_detection_msgs_Obstacle* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_Obstacle_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacles_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_Obstacles);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacles_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_Obstacles);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacles_validate(roswasmc_bounded_1_pal_detection_msgs_Obstacles const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_Obstacles_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacles_wire_size(roswasmc_bounded_1_pal_detection_msgs_Obstacles const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_Obstacles_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_Obstacles_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacles_encode(roswasmc_bounded_1_pal_detection_msgs_Obstacles const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_Obstacles_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsObstacles_decode(void const* input, size_t length, roswasmc_bounded_1_pal_detection_msgs_Obstacles* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_Obstacles_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetection_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_PersonDetection);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetection_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_PersonDetection);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetection_validate(roswasmc_bounded_1_pal_detection_msgs_PersonDetection const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_PersonDetection_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetection_wire_size(roswasmc_bounded_1_pal_detection_msgs_PersonDetection const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_PersonDetection_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_PersonDetection_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetection_encode(roswasmc_bounded_1_pal_detection_msgs_PersonDetection const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_PersonDetection_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetection_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_detection_msgs_PersonDetection* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_PersonDetection_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetections_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_PersonDetections);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetections_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_PersonDetections);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetections_validate(roswasmc_bounded_1_pal_detection_msgs_PersonDetections const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_PersonDetections_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetections_wire_size(roswasmc_bounded_1_pal_detection_msgs_PersonDetections const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_PersonDetections_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_PersonDetections_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetections_encode(roswasmc_bounded_1_pal_detection_msgs_PersonDetections const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_PersonDetections_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsPersonDetections_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_detection_msgs_PersonDetections* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_PersonDetections_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsCompressedImage_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_sensor_msgs_CompressedImage);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsCompressedImage_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_sensor_msgs_CompressedImage);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsCompressedImage_validate(roswasmc_bounded_1_sensor_msgs_CompressedImage const* value)
{
    return roswasmc_bounded_1_sensor_msgs_CompressedImage_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsCompressedImage_wire_size(roswasmc_bounded_1_sensor_msgs_CompressedImage const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_sensor_msgs_CompressedImage_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_sensor_msgs_CompressedImage_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsCompressedImage_encode(roswasmc_bounded_1_sensor_msgs_CompressedImage const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_sensor_msgs_CompressedImage_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsCompressedImage_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_CompressedImage* value)
{
    return roswasmc_bounded_1_sensor_msgs_CompressedImage_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsGoal_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObject_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_RecognizedObject);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObject_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_RecognizedObject);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObject_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizedObject const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizedObject_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObject_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizedObject const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_RecognizedObject_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_RecognizedObject_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObject_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizedObject const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizedObject_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObject_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_detection_msgs_RecognizedObject* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizedObject_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObjectArray_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObjectArray_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObjectArray_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObjectArray_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObjectArray_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedObjectArray_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsResult_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_validate(
    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_wire_size(
    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_encode(
    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizeObjectsFeedback_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedActions_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_RecognizedActions);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedActions_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_RecognizedActions);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedActions_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizedActions const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizedActions_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedActions_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizedActions const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_RecognizedActions_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_RecognizedActions_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedActions_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizedActions const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizedActions_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizedActions_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_detection_msgs_RecognizedActions* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizedActions_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerRequest_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerRequest_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerRequest_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerResponse_validate(roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerResponse_wire_size(roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerResponse_encode(roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRecognizerResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRotatedDetection2d_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRotatedDetection2d_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRotatedDetection2d_validate(roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRotatedDetection2d_wire_size(roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRotatedDetection2d_encode(roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsRotatedDetection2d_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_validate(
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_wire_size(
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_encode(
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectRequest_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_validate(
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_wire_size(
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_encode(
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSelectTexturedObjectResponse_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseRequest_validate(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseRequest_wire_size(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseRequest_encode(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseRequest_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseResponse_validate(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseResponse_wire_size(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseResponse_encode(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsSetDatabaseResponse_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_validate(roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_wire_size(roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_encode(roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_validate(
    roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_wire_size(
    roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_encode(roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStartEnrollmentResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_validate(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_wire_size(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_encode(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_validate(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_wire_size(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_encode(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsStopEnrollmentResponse_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsTexturedObjectDetection_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsTexturedObjectDetection_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsTexturedObjectDetection_validate(
    roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsTexturedObjectDetection_wire_size(
    roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsTexturedObjectDetection_encode(roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsTexturedObjectDetection_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsWaveDetection_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_detection_msgs_WaveDetection);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsWaveDetection_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_detection_msgs_WaveDetection);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsWaveDetection_validate(roswasmc_bounded_1_pal_detection_msgs_WaveDetection const* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_WaveDetection_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsWaveDetection_wire_size(roswasmc_bounded_1_pal_detection_msgs_WaveDetection const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_detection_msgs_WaveDetection_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_detection_msgs_WaveDetection_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsWaveDetection_encode(roswasmc_bounded_1_pal_detection_msgs_WaveDetection const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_detection_msgs_WaveDetection_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_detection_msgsWaveDetection_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_detection_msgs_WaveDetection* value)
{
    return roswasmc_bounded_1_pal_detection_msgs_WaveDetection_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRActivation_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASRActivation);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRActivation_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASRActivation);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRActivation_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRActivation const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRActivation_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRActivation_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRActivation const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASRActivation_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASRActivation_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRActivation_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRActivation const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRActivation_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRActivation_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_ASRActivation* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRActivation_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsActiontag_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_actiontag);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsActiontag_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_actiontag);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsActiontag_validate(roswasmc_bounded_1_pal_interaction_msgs_actiontag const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_actiontag_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsActiontag_wire_size(roswasmc_bounded_1_pal_interaction_msgs_actiontag const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_actiontag_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_actiontag_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsActiontag_encode(roswasmc_bounded_1_pal_interaction_msgs_actiontag const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_actiontag_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsActiontag_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_interaction_msgs_actiontag* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_actiontag_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrresult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_asrresult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrresult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_asrresult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrresult_validate(roswasmc_bounded_1_pal_interaction_msgs_asrresult const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_asrresult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrresult_wire_size(roswasmc_bounded_1_pal_interaction_msgs_asrresult const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_asrresult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_asrresult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrresult_encode(roswasmc_bounded_1_pal_interaction_msgs_asrresult const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_asrresult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrresult_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_interaction_msgs_asrresult* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_asrresult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASREvent_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASREvent);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASREvent_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASREvent);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASREvent_validate(roswasmc_bounded_1_pal_interaction_msgs_ASREvent const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASREvent_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASREvent_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASREvent const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASREvent_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASREvent_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASREvent_encode(roswasmc_bounded_1_pal_interaction_msgs_ASREvent const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASREvent_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASREvent_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_interaction_msgs_ASREvent* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASREvent_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileGoal_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileGoal_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileGoal_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileGoal_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileResult_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileResult_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileResult_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileResult_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileFeedback_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileFeedback_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileFeedback_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRFileFeedback_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLangModelMngmt_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLanguage_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLanguage_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLanguage_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLanguage_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLanguage_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRLanguage_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvRequest_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvRequest_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvRequest_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvRequest_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceRequest_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceRequest_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceRequest_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceRequest_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_validate(
    roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_wire_size(
    roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_encode(
    roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioDeviceDescription_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRStatus_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASRStatus);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRStatus_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASRStatus);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRStatus_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRStatus const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRStatus_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRStatus_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRStatus const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASRStatus_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASRStatus_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRStatus_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRStatus const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRStatus_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRStatus_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_interaction_msgs_ASRStatus* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRStatus_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvResponse_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvResponse_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvResponse_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRSrvResponse_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceResponse_validate(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceResponse_wire_size(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceResponse_encode(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsASRServiceResponse_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayGoal_validate(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayGoal_wire_size(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayGoal_encode(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayGoal_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayResult_validate(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayResult_wire_size(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayResult_encode(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayResult_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_validate(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_wire_size(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_encode(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayFeedback_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayerState_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayerState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayerState_validate(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayerState_wire_size(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayerState_encode(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudioPlayerState_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsDirectionOfArrival_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsDirectionOfArrival_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsDirectionOfArrival_validate(roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsDirectionOfArrival_wire_size(roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsDirectionOfArrival_encode(roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsDirectionOfArrival_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_validate(
    roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_wire_size(
    roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_encode(
    roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsEnablingSoundLocalisation_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nArgument_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_I18nArgument);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nArgument_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_I18nArgument);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nArgument_validate(roswasmc_bounded_1_pal_interaction_msgs_I18nArgument const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_I18nArgument_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nArgument_wire_size(roswasmc_bounded_1_pal_interaction_msgs_I18nArgument const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_I18nArgument_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_I18nArgument_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nArgument_encode(roswasmc_bounded_1_pal_interaction_msgs_I18nArgument const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_I18nArgument_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nArgument_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_interaction_msgs_I18nArgument* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_I18nArgument_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nText_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_I18nText);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nText_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_I18nText);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nText_validate(roswasmc_bounded_1_pal_interaction_msgs_I18nText const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_I18nText_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nText_wire_size(roswasmc_bounded_1_pal_interaction_msgs_I18nText const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_I18nText_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_I18nText_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nText_encode(roswasmc_bounded_1_pal_interaction_msgs_I18nText const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_I18nText_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsI18nText_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_interaction_msgs_I18nText* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_I18nText_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsText_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_TtsText);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsText_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_TtsText);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsText_validate(roswasmc_bounded_1_pal_interaction_msgs_TtsText const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsText_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsText_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TtsText const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_TtsText_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_TtsText_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsText_encode(roswasmc_bounded_1_pal_interaction_msgs_TtsText const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsText_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsText_decode(void const* input, size_t length, roswasmc_bounded_1_pal_interaction_msgs_TtsText* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsText_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_validate(
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_wire_size(
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_encode(
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_validate(
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_wire_size(
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_encode(
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsGetSpeechDurationResponse_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInputArgument_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_InputArgument);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInputArgument_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_InputArgument);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInputArgument_validate(roswasmc_bounded_1_pal_interaction_msgs_InputArgument const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_InputArgument_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInputArgument_wire_size(roswasmc_bounded_1_pal_interaction_msgs_InputArgument const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_InputArgument_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_InputArgument_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInputArgument_encode(roswasmc_bounded_1_pal_interaction_msgs_InputArgument const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_InputArgument_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInputArgument_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_InputArgument* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_InputArgument_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInput_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_Input);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInput_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_Input);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInput_validate(roswasmc_bounded_1_pal_interaction_msgs_Input const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_Input_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInput_wire_size(roswasmc_bounded_1_pal_interaction_msgs_Input const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_Input_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_Input_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInput_encode(roswasmc_bounded_1_pal_interaction_msgs_Input const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_Input_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsInput_decode(void const* input, size_t length, roswasmc_bounded_1_pal_interaction_msgs_Input* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_Input_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_SoundGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_SoundGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundGoal_validate(roswasmc_bounded_1_pal_interaction_msgs_SoundGoal const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundGoal_wire_size(roswasmc_bounded_1_pal_interaction_msgs_SoundGoal const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_SoundGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_SoundGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundGoal_encode(roswasmc_bounded_1_pal_interaction_msgs_SoundGoal const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundGoal_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_interaction_msgs_SoundGoal* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_SoundResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_SoundResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundResult_validate(roswasmc_bounded_1_pal_interaction_msgs_SoundResult const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundResult_wire_size(roswasmc_bounded_1_pal_interaction_msgs_SoundResult const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_SoundResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_SoundResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundResult_encode(roswasmc_bounded_1_pal_interaction_msgs_SoundResult const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundResult_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_interaction_msgs_SoundResult* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundFeedback_validate(roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundFeedback_wire_size(roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundFeedback_encode(roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundFeedback_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_validate(
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_wire_size(
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_encode(
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_validate(
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_wire_size(
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_encode(
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTTSstate_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_TTSstate);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTTSstate_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_TTSstate);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTTSstate_validate(roswasmc_bounded_1_pal_interaction_msgs_TTSstate const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TTSstate_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTTSstate_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TTSstate const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_TTSstate_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_TTSstate_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTTSstate_encode(roswasmc_bounded_1_pal_interaction_msgs_TTSstate const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TTSstate_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTTSstate_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_interaction_msgs_TTSstate* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TTSstate_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_TtsGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_TtsGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsGoal_validate(roswasmc_bounded_1_pal_interaction_msgs_TtsGoal const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsGoal_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TtsGoal const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_TtsGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_TtsGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsGoal_encode(roswasmc_bounded_1_pal_interaction_msgs_TtsGoal const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsGoal_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsGoal_decode(void const* input, size_t length, roswasmc_bounded_1_pal_interaction_msgs_TtsGoal* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_TtsResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_TtsResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsResult_validate(roswasmc_bounded_1_pal_interaction_msgs_TtsResult const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsResult_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TtsResult const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_TtsResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_TtsResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsResult_encode(roswasmc_bounded_1_pal_interaction_msgs_TtsResult const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsResult_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_interaction_msgs_TtsResult* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsMark_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_TtsMark);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsMark_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_TtsMark);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsMark_validate(roswasmc_bounded_1_pal_interaction_msgs_TtsMark const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsMark_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsMark_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TtsMark const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_TtsMark_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_TtsMark_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsMark_encode(roswasmc_bounded_1_pal_interaction_msgs_TtsMark const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsMark_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsMark_decode(void const* input, size_t length, roswasmc_bounded_1_pal_interaction_msgs_TtsMark* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsMark_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsFeedback_validate(roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsFeedback_wire_size(roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsFeedback_encode(roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsTtsFeedback_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsVoiceActivity_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsVoiceActivity_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsVoiceActivity_validate(roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsVoiceActivity_wire_size(roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsVoiceActivity_encode(roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsVoiceActivity_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsWebGuiEvent_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsWebGuiEvent_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsWebGuiEvent_validate(roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsWebGuiEvent_wire_size(roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsWebGuiEvent_encode(roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsWebGuiEvent_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrupdate_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_asrupdate);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrupdate_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_asrupdate);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrupdate_validate(roswasmc_bounded_1_pal_interaction_msgs_asrupdate const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_asrupdate_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrupdate_wire_size(roswasmc_bounded_1_pal_interaction_msgs_asrupdate const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_asrupdate_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_asrupdate_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrupdate_encode(roswasmc_bounded_1_pal_interaction_msgs_asrupdate const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_asrupdate_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAsrupdate_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_interaction_msgs_asrupdate* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_asrupdate_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudiosignal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_audiosignal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudiosignal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_audiosignal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudiosignal_validate(roswasmc_bounded_1_pal_interaction_msgs_audiosignal const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_audiosignal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudiosignal_wire_size(roswasmc_bounded_1_pal_interaction_msgs_audiosignal const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_audiosignal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_audiosignal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudiosignal_encode(roswasmc_bounded_1_pal_interaction_msgs_audiosignal const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_audiosignal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsAudiosignal_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_interaction_msgs_audiosignal* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_audiosignal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_validate(
    roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_wire_size(
    roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_encode(
    roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_validate(
    roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse const* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_wire_size(
    roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_encode(
    roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_interaction_msgsRecognizerServiceResponse_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse* value)
{
    return roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_validate(roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest const* value)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_wire_size(roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_encode(roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest* value)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModel_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_motion_model_msgs_MotionModel);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModel_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_motion_model_msgs_MotionModel);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModel_validate(roswasmc_bounded_1_pal_motion_model_msgs_MotionModel const* value)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_MotionModel_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModel_wire_size(roswasmc_bounded_1_pal_motion_model_msgs_MotionModel const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_motion_model_msgs_MotionModel_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_motion_model_msgs_MotionModel_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModel_encode(roswasmc_bounded_1_pal_motion_model_msgs_MotionModel const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_MotionModel_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModel_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_motion_model_msgs_MotionModel* value)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_MotionModel_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelList_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelList_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelList_validate(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList const* value)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelList_wire_size(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelList_encode(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelList_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList* value)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelMap_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelMap_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelMap_validate(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap const* value)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelMap_wire_size(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelMap_encode(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsMotionModelMap_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap* value)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_validate(
    roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse const* value)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_wire_size(
    roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_encode(roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_motion_model_msgsGetMotionMapResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse* value)
{
    return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_validate(roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection const* value)
{
    return roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_wire_size(roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_encode(roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_multirobot_msgsWifiServiceDetection_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection* value)
{
    return roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentResponse_validate(
    roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentResponse_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAcknowledgmentResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsString_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_msgs_String);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsString_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_msgs_String);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsString_validate(roswasmc_bounded_1_std_msgs_String const* value)
{
    return roswasmc_bounded_1_std_msgs_String_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsString_wire_size(roswasmc_bounded_1_std_msgs_String const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_msgs_String_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_msgs_String_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsString_encode(roswasmc_bounded_1_std_msgs_String const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_std_msgs_String_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsString_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_String* value)
{
    return roswasmc_bounded_1_std_msgs_String_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAvailableMaps_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_AvailableMaps);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAvailableMaps_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_AvailableMaps);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAvailableMaps_validate(roswasmc_bounded_1_pal_navigation_msgs_AvailableMaps const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_AvailableMaps_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAvailableMaps_wire_size(roswasmc_bounded_1_pal_navigation_msgs_AvailableMaps const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_AvailableMaps_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_AvailableMaps_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAvailableMaps_encode(roswasmc_bounded_1_pal_navigation_msgs_AvailableMaps const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_AvailableMaps_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsAvailableMaps_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_navigation_msgs_AvailableMaps* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_AvailableMaps_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingResponse_validate(
    roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingResponse_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeBuildingResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapResponse_validate(roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapResponse_wire_size(roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeMapResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapResponse_validate(roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapResponse_wire_size(roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsChangeSyncMapResponse_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyRequest_validate(
    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyRequest_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyRequest_encode(
    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyResponse_validate(
    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyResponse_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyResponse_encode(
    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsDisableEmergencyResponse_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEmergency_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_Emergency);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEmergency_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_Emergency);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEmergency_validate(roswasmc_bounded_1_pal_navigation_msgs_Emergency const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_Emergency_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEmergency_wire_size(roswasmc_bounded_1_pal_navigation_msgs_Emergency const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_Emergency_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_Emergency_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEmergency_encode(roswasmc_bounded_1_pal_navigation_msgs_Emergency const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_Emergency_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEmergency_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_navigation_msgs_Emergency* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_Emergency_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAngles_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_EulerAngles);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAngles_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_EulerAngles);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAngles_validate(roswasmc_bounded_1_pal_navigation_msgs_EulerAngles const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_EulerAngles_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAngles_wire_size(roswasmc_bounded_1_pal_navigation_msgs_EulerAngles const* value,
                                                                                 size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_EulerAngles_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_EulerAngles_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAngles_encode(roswasmc_bounded_1_pal_navigation_msgs_EulerAngles const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_EulerAngles_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAngles_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_navigation_msgs_EulerAngles* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_EulerAngles_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAnglesStamped_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_EulerAnglesStamped);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAnglesStamped_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_EulerAnglesStamped);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAnglesStamped_validate(roswasmc_bounded_1_pal_navigation_msgs_EulerAnglesStamped const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_EulerAnglesStamped_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAnglesStamped_wire_size(roswasmc_bounded_1_pal_navigation_msgs_EulerAnglesStamped const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_EulerAnglesStamped_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_EulerAnglesStamped_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAnglesStamped_encode(roswasmc_bounded_1_pal_navigation_msgs_EulerAnglesStamped const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_EulerAnglesStamped_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsEulerAnglesStamped_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_navigation_msgs_EulerAnglesStamped* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_EulerAnglesStamped_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingGoal_validate(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingGoal_wire_size(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingGoal_encode(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingGoal_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingResult_validate(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingResult_wire_size(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingResult_encode(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingResult_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingFeedback_validate(
    roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingFeedback_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingFeedback_encode(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsExecuteParkingFeedback_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseRequest_validate(
    roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseRequest_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseRequest_encode(
    roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseRequest_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsBool_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_msgs_Bool);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsBool_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_msgs_Bool);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsBool_validate(roswasmc_bounded_1_std_msgs_Bool const* value)
{
    return roswasmc_bounded_1_std_msgs_Bool_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsBool_wire_size(roswasmc_bounded_1_std_msgs_Bool const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_msgs_Bool_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_msgs_Bool_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsBool_encode(roswasmc_bounded_1_std_msgs_Bool const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_std_msgs_Bool_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsBool_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Bool* value)
{
    return roswasmc_bounded_1_std_msgs_Bool_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseResponse_validate(
    roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseResponse_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseResponse_encode(
    roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsFinalApproachPoseResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationRequest_validate(
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationRequest_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationRequest_encode(
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationRequest_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsFloat32_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_msgs_Float32);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsFloat32_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_msgs_Float32);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsFloat32_validate(roswasmc_bounded_1_std_msgs_Float32 const* value)
{
    return roswasmc_bounded_1_std_msgs_Float32_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsFloat32_wire_size(roswasmc_bounded_1_std_msgs_Float32 const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_msgs_Float32_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_msgs_Float32_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsFloat32_encode(roswasmc_bounded_1_std_msgs_Float32 const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_std_msgs_Float32_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsFloat32_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Float32* value)
{
    return roswasmc_bounded_1_std_msgs_Float32_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsHighways_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_Highways);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsHighways_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_Highways);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsHighways_validate(roswasmc_bounded_1_pal_navigation_msgs_Highways const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_Highways_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsHighways_wire_size(roswasmc_bounded_1_pal_navigation_msgs_Highways const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_Highways_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_Highways_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsHighways_encode(roswasmc_bounded_1_pal_navigation_msgs_Highways const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_Highways_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsHighways_decode(void const* input, size_t length, roswasmc_bounded_1_pal_navigation_msgs_Highways* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_Highways_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsChannelFloat32_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_sensor_msgs_ChannelFloat32);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsChannelFloat32_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_sensor_msgs_ChannelFloat32);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsChannelFloat32_validate(roswasmc_bounded_1_sensor_msgs_ChannelFloat32 const* value)
{
    return roswasmc_bounded_1_sensor_msgs_ChannelFloat32_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsChannelFloat32_wire_size(roswasmc_bounded_1_sensor_msgs_ChannelFloat32 const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_sensor_msgs_ChannelFloat32_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_sensor_msgs_ChannelFloat32_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsChannelFloat32_encode(roswasmc_bounded_1_sensor_msgs_ChannelFloat32 const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_sensor_msgs_ChannelFloat32_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsChannelFloat32_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_ChannelFloat32* value)
{
    return roswasmc_bounded_1_sensor_msgs_ChannelFloat32_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsPointCloud_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_sensor_msgs_PointCloud);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsPointCloud_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_sensor_msgs_PointCloud);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsPointCloud_validate(roswasmc_bounded_1_sensor_msgs_PointCloud const* value)
{
    return roswasmc_bounded_1_sensor_msgs_PointCloud_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsPointCloud_wire_size(roswasmc_bounded_1_sensor_msgs_PointCloud const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_sensor_msgs_PointCloud_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_sensor_msgs_PointCloud_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsPointCloud_encode(roswasmc_bounded_1_sensor_msgs_PointCloud const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length)
{
    return roswasmc_bounded_1_sensor_msgs_PointCloud_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Sensor_msgsPointCloud_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_PointCloud* value)
{
    return roswasmc_bounded_1_sensor_msgs_PointCloud_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOI_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_POI);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOI_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_POI);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOI_validate(roswasmc_bounded_1_pal_navigation_msgs_POI const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_POI_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOI_wire_size(roswasmc_bounded_1_pal_navigation_msgs_POI const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_POI_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_POI_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOI_encode(roswasmc_bounded_1_pal_navigation_msgs_POI const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_POI_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOI_decode(void const* input, size_t length, roswasmc_bounded_1_pal_navigation_msgs_POI* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_POI_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOIGroup_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_POIGroup);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOIGroup_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_POIGroup);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOIGroup_validate(roswasmc_bounded_1_pal_navigation_msgs_POIGroup const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_POIGroup_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOIGroup_wire_size(roswasmc_bounded_1_pal_navigation_msgs_POIGroup const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_POIGroup_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_POIGroup_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOIGroup_encode(roswasmc_bounded_1_pal_navigation_msgs_POIGroup const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_POIGroup_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPOIGroup_decode(void const* input, size_t length, roswasmc_bounded_1_pal_navigation_msgs_POIGroup* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_POIGroup_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocDB_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_VisualLocDB);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocDB_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_VisualLocDB);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocDB_validate(roswasmc_bounded_1_pal_navigation_msgs_VisualLocDB const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualLocDB_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocDB_wire_size(roswasmc_bounded_1_pal_navigation_msgs_VisualLocDB const* value,
                                                                                 size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_VisualLocDB_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_VisualLocDB_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocDB_encode(roswasmc_bounded_1_pal_navigation_msgs_VisualLocDB const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualLocDB_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocDB_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_navigation_msgs_VisualLocDB* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualLocDB_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNiceMapTransformation_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_NiceMapTransformation);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNiceMapTransformation_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_NiceMapTransformation);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNiceMapTransformation_validate(roswasmc_bounded_1_pal_navigation_msgs_NiceMapTransformation const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_NiceMapTransformation_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNiceMapTransformation_wire_size(roswasmc_bounded_1_pal_navigation_msgs_NiceMapTransformation const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_NiceMapTransformation_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_NiceMapTransformation_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNiceMapTransformation_encode(roswasmc_bounded_1_pal_navigation_msgs_NiceMapTransformation const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_NiceMapTransformation_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNiceMapTransformation_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_navigation_msgs_NiceMapTransformation* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_NiceMapTransformation_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsMapConfiguration_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_MapConfiguration);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsMapConfiguration_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_MapConfiguration);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsMapConfiguration_validate(roswasmc_bounded_1_pal_navigation_msgs_MapConfiguration const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_MapConfiguration_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsMapConfiguration_wire_size(roswasmc_bounded_1_pal_navigation_msgs_MapConfiguration const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_MapConfiguration_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_MapConfiguration_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsMapConfiguration_encode(roswasmc_bounded_1_pal_navigation_msgs_MapConfiguration const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_MapConfiguration_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsMapConfiguration_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_MapConfiguration* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_MapConfiguration_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationResponse_validate(
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationResponse_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationResponse_encode(
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetMapConfigurationResponse_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesRequest_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesResponse_validate(roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesResponse_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetNodesResponse_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIRequest_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIResponse_validate(roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIResponse_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetPOIResponse_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapResponse_validate(roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapResponse_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGetSubMapResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GoToGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GoToGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToGoal_validate(roswasmc_bounded_1_pal_navigation_msgs_GoToGoal const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToGoal_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GoToGoal const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GoToGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GoToGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToGoal_encode(roswasmc_bounded_1_pal_navigation_msgs_GoToGoal const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToGoal_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToGoal_decode(void const* input, size_t length, roswasmc_bounded_1_pal_navigation_msgs_GoToGoal* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GoToResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GoToResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToResult_validate(roswasmc_bounded_1_pal_navigation_msgs_GoToResult const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToResult_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GoToResult const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GoToResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GoToResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToResult_encode(roswasmc_bounded_1_pal_navigation_msgs_GoToResult const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToResult_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_navigation_msgs_GoToResult* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToFeedback_validate(roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToFeedback_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToFeedback_encode(roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToFeedback_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIGoal_validate(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIGoal_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal const* value,
                                                                                 size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIGoal_encode(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIGoal_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIResult_validate(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIResult_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIResult_encode(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIResult_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIFeedback_validate(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIFeedback_wire_size(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIFeedback_encode(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsGoToPOIFeedback_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityGoal_validate(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityGoal_wire_size(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityGoal_encode(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityGoal_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityResult_validate(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityResult_wire_size(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityResult_encode(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityResult_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityFeedback_validate(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityFeedback_wire_size(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityFeedback_encode(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyPriorityFeedback_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboGoal_validate(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboGoal_wire_size(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboGoal_encode(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboGoal_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboResult_validate(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboResult_wire_size(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboResult_encode(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboResult_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboFeedback_validate(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboFeedback_wire_size(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboFeedback_encode(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsJoyTurboFeedback_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsLaserImage_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_LaserImage);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsLaserImage_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_LaserImage);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsLaserImage_validate(roswasmc_bounded_1_pal_navigation_msgs_LaserImage const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_LaserImage_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsLaserImage_wire_size(roswasmc_bounded_1_pal_navigation_msgs_LaserImage const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_LaserImage_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_LaserImage_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsLaserImage_encode(roswasmc_bounded_1_pal_navigation_msgs_LaserImage const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_LaserImage_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsLaserImage_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_navigation_msgs_LaserImage* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_LaserImage_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsRequest_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsResponse_validate(roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsResponse_wire_size(roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsListMapsResponse_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNavigationStatus_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_NavigationStatus);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNavigationStatus_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_NavigationStatus);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNavigationStatus_validate(roswasmc_bounded_1_pal_navigation_msgs_NavigationStatus const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_NavigationStatus_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNavigationStatus_wire_size(roswasmc_bounded_1_pal_navigation_msgs_NavigationStatus const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_NavigationStatus_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_NavigationStatus_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNavigationStatus_encode(roswasmc_bounded_1_pal_navigation_msgs_NavigationStatus const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_NavigationStatus_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsNavigationStatus_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_NavigationStatus* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_NavigationStatus_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReading_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_PolarReading);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReading_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_PolarReading);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReading_validate(roswasmc_bounded_1_pal_navigation_msgs_PolarReading const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_PolarReading_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReading_wire_size(roswasmc_bounded_1_pal_navigation_msgs_PolarReading const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_PolarReading_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_PolarReading_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReading_encode(roswasmc_bounded_1_pal_navigation_msgs_PolarReading const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_PolarReading_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReading_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_navigation_msgs_PolarReading* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_PolarReading_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReadingScan_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_PolarReadingScan);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReadingScan_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_PolarReadingScan);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReadingScan_validate(roswasmc_bounded_1_pal_navigation_msgs_PolarReadingScan const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_PolarReadingScan_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReadingScan_wire_size(roswasmc_bounded_1_pal_navigation_msgs_PolarReadingScan const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_PolarReadingScan_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_PolarReadingScan_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReadingScan_encode(roswasmc_bounded_1_pal_navigation_msgs_PolarReadingScan const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_PolarReadingScan_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsPolarReadingScan_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_PolarReadingScan* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_PolarReadingScan_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapResponse_validate(roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapResponse_wire_size(roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsRenameMapResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneRequest_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneResponse_validate(roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneResponse_wire_size(roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSafetyZoneResponse_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapRequest_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapResponse_validate(roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapResponse_wire_size(roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSaveMapResponse_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsServiceStatus_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_ServiceStatus);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsServiceStatus_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_ServiceStatus);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsServiceStatus_validate(roswasmc_bounded_1_pal_navigation_msgs_ServiceStatus const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ServiceStatus_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsServiceStatus_wire_size(roswasmc_bounded_1_pal_navigation_msgs_ServiceStatus const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_ServiceStatus_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_ServiceStatus_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsServiceStatus_encode(roswasmc_bounded_1_pal_navigation_msgs_ServiceStatus const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ServiceStatus_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsServiceStatus_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_navigation_msgs_ServiceStatus* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_ServiceStatus_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationRequest_validate(
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationRequest_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationRequest_encode(
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationRequest_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationResponse_validate(
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationResponse_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationResponse_encode(
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetMapConfigurationResponse_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIRequest_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIResponse_validate(roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIResponse_wire_size(roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetPOIResponse_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorRequest_validate(roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorRequest_wire_size(roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorRequest_encode(roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorResponse_validate(
    roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorResponse_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorResponse_encode(roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsSetSubMapFloorResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsTabletPOI_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_TabletPOI);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsTabletPOI_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_TabletPOI);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsTabletPOI_validate(roswasmc_bounded_1_pal_navigation_msgs_TabletPOI const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_TabletPOI_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsTabletPOI_wire_size(roswasmc_bounded_1_pal_navigation_msgs_TabletPOI const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_TabletPOI_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_TabletPOI_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsTabletPOI_encode(roswasmc_bounded_1_pal_navigation_msgs_TabletPOI const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_TabletPOI_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsTabletPOI_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_navigation_msgs_TabletPOI* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_TabletPOI_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeRequest_validate(
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeRequest_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeRequest_encode(
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeResponse_validate(
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeResponse_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeResponse_encode(
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualLocRecognizeResponse_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingGoal_validate(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingGoal_wire_size(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal const* value,
                                                                                        size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingGoal_encode(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingGoal_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingResult_validate(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingResult_wire_size(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingResult_encode(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingResult_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingFeedback_validate(
    roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback const* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingFeedback_wire_size(
    roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingFeedback_encode(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_navigation_msgsVisualTrainingFeedback_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback* value)
{
    return roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_simulation_msgsExternalWrench_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_simulation_msgsExternalWrench_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_simulation_msgsExternalWrench_validate(roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench const* value)
{
    return roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_simulation_msgsExternalWrench_wire_size(roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_simulation_msgsExternalWrench_encode(roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_simulation_msgsExternalWrench_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench* value)
{
    return roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsFunctionalityStatus_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsFunctionalityStatus_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsFunctionalityStatus_validate(roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus const* value)
{
    return roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsFunctionalityStatus_wire_size(roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsFunctionalityStatus_encode(roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsFunctionalityStatus_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus* value)
{
    return roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsRobotStatus_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_tablet_msgs_RobotStatus);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsRobotStatus_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_tablet_msgs_RobotStatus);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsRobotStatus_validate(roswasmc_bounded_1_pal_tablet_msgs_RobotStatus const* value)
{
    return roswasmc_bounded_1_pal_tablet_msgs_RobotStatus_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsRobotStatus_wire_size(roswasmc_bounded_1_pal_tablet_msgs_RobotStatus const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_tablet_msgs_RobotStatus_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_tablet_msgs_RobotStatus_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsRobotStatus_encode(roswasmc_bounded_1_pal_tablet_msgs_RobotStatus const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_pal_tablet_msgs_RobotStatus_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_tablet_msgsRobotStatus_decode(void const* input, size_t length, roswasmc_bounded_1_pal_tablet_msgs_RobotStatus* value)
{
    return roswasmc_bounded_1_pal_tablet_msgs_RobotStatus_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_validate(
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest const* value)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_wire_size(
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_encode(
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingRequest_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest* value)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_validate(
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse const* value)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_wire_size(
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_encode(
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStartRecordingResponse_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse* value)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_validate(
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest const* value)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_wire_size(
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_encode(
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest* value)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_validate(
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse const* value)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_wire_size(
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_encode(
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_video_recording_msgsStopRecordingResponse_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse* value)
{
    return roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedObject_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_DetectedObject);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedObject_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_DetectedObject);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedObject_validate(roswasmc_bounded_1_pal_vision_msgs_DetectedObject const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_DetectedObject_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedObject_wire_size(roswasmc_bounded_1_pal_vision_msgs_DetectedObject const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_DetectedObject_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_DetectedObject_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedObject_encode(roswasmc_bounded_1_pal_vision_msgs_DetectedObject const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_DetectedObject_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedObject_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_vision_msgs_DetectedObject* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_DetectedObject_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsColorRGBA_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_msgs_ColorRGBA);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsColorRGBA_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_msgs_ColorRGBA);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsColorRGBA_validate(roswasmc_bounded_1_std_msgs_ColorRGBA const* value)
{
    return roswasmc_bounded_1_std_msgs_ColorRGBA_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsColorRGBA_wire_size(roswasmc_bounded_1_std_msgs_ColorRGBA const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_msgs_ColorRGBA_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_msgs_ColorRGBA_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Std_msgsColorRGBA_encode(roswasmc_bounded_1_std_msgs_ColorRGBA const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_std_msgs_ColorRGBA_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsColorRGBA_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_ColorRGBA* value)
{
    return roswasmc_bounded_1_std_msgs_ColorRGBA_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsRectangle_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_Rectangle);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsRectangle_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_Rectangle);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsRectangle_validate(roswasmc_bounded_1_pal_vision_msgs_Rectangle const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_Rectangle_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsRectangle_wire_size(roswasmc_bounded_1_pal_vision_msgs_Rectangle const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_Rectangle_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_Rectangle_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsRectangle_encode(roswasmc_bounded_1_pal_vision_msgs_Rectangle const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_Rectangle_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsRectangle_decode(void const* input, size_t length, roswasmc_bounded_1_pal_vision_msgs_Rectangle* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_Rectangle_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedPerson_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_DetectedPerson);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedPerson_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_DetectedPerson);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedPerson_validate(roswasmc_bounded_1_pal_vision_msgs_DetectedPerson const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_DetectedPerson_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedPerson_wire_size(roswasmc_bounded_1_pal_vision_msgs_DetectedPerson const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_DetectedPerson_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_DetectedPerson_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedPerson_encode(roswasmc_bounded_1_pal_vision_msgs_DetectedPerson const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_DetectedPerson_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsDetectedPerson_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_vision_msgs_DetectedPerson* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_DetectedPerson_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetection_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FaceDetection);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetection_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FaceDetection);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetection_validate(roswasmc_bounded_1_pal_vision_msgs_FaceDetection const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceDetection_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetection_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceDetection const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FaceDetection_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FaceDetection_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetection_encode(roswasmc_bounded_1_pal_vision_msgs_FaceDetection const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceDetection_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetection_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_vision_msgs_FaceDetection* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceDetection_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetections_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FaceDetections);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetections_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FaceDetections);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetections_validate(roswasmc_bounded_1_pal_vision_msgs_FaceDetections const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceDetections_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetections_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceDetections const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FaceDetections_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FaceDetections_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetections_encode(roswasmc_bounded_1_pal_vision_msgs_FaceDetections const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceDetections_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceDetections_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_vision_msgs_FaceDetections* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceDetections_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_validate(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_encode(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionGoal_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionResult_validate(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionResult_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionResult_encode(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionResult_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_validate(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_encode(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceRecognitionFeedback_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_validate(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_encode(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_validate(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_encode(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStartResponse_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_validate(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_encode(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopRequest_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_validate(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_wire_size(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_encode(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFaceTrackingStopResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeResponse_validate(roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeResponse_wire_size(roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeResponse_encode(roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeResponse_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartRequest_validate(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartRequest_wire_size(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartRequest_encode(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartResponse_validate(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartResponse_wire_size(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartResponse_encode(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStartResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopRequest_validate(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopRequest_wire_size(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopRequest_encode(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopRequest_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopResponse_validate(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopResponse_wire_size(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopResponse_encode(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsFollowMeStopResponse_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsGesture_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_Gesture);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsGesture_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_Gesture);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsGesture_validate(roswasmc_bounded_1_pal_vision_msgs_Gesture const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_Gesture_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsGesture_wire_size(roswasmc_bounded_1_pal_vision_msgs_Gesture const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_Gesture_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_Gesture_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsGesture_encode(roswasmc_bounded_1_pal_vision_msgs_Gesture const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_Gesture_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsGesture_decode(void const* input, size_t length, roswasmc_bounded_1_pal_vision_msgs_Gesture* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_Gesture_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHeadPanTilt_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHeadPanTilt_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHeadPanTilt_validate(roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHeadPanTilt_wire_size(roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHeadPanTilt_encode(roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHeadPanTilt_decode(void const* input, size_t length, roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetection_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_HogDetection);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetection_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_HogDetection);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetection_validate(roswasmc_bounded_1_pal_vision_msgs_HogDetection const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_HogDetection_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetection_wire_size(roswasmc_bounded_1_pal_vision_msgs_HogDetection const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_HogDetection_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_HogDetection_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetection_encode(roswasmc_bounded_1_pal_vision_msgs_HogDetection const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_HogDetection_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetection_decode(void const* input, size_t length, roswasmc_bounded_1_pal_vision_msgs_HogDetection* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_HogDetection_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetections_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_HogDetections);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetections_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_HogDetections);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetections_validate(roswasmc_bounded_1_pal_vision_msgs_HogDetections const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_HogDetections_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetections_wire_size(roswasmc_bounded_1_pal_vision_msgs_HogDetections const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_HogDetections_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_HogDetections_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetections_encode(roswasmc_bounded_1_pal_vision_msgs_HogDetections const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_HogDetections_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsHogDetections_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_vision_msgs_HogDetections* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_HogDetections_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLegDetections_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_LegDetections);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLegDetections_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_LegDetections);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLegDetections_validate(roswasmc_bounded_1_pal_vision_msgs_LegDetections const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_LegDetections_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLegDetections_wire_size(roswasmc_bounded_1_pal_vision_msgs_LegDetections const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_LegDetections_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_LegDetections_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLegDetections_encode(roswasmc_bounded_1_pal_vision_msgs_LegDetections const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_LegDetections_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLegDetections_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_vision_msgs_LegDetections* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_LegDetections_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelRequest_validate(roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelRequest_wire_size(roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelRequest_encode(roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelRequest_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelResponse_validate(roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse const* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelResponse_wire_size(roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelResponse_encode(roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_vision_msgsLookToPixelResponse_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse* value)
{
    return roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_validate(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal const* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_wire_size(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_encode(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_validate(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult const* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_wire_size(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_encode(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_validate(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback const* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_wire_size(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_encode(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_validate(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal const* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_wire_size(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_encode(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_validate(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult const* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_wire_size(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_encode(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_validate(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback const* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_wire_size(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_encode(
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback* value)
{
    return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsContactState_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_ContactState);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsContactState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_ContactState);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsContactState_validate(roswasmc_bounded_1_pal_walking_msgs_ContactState const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_ContactState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsContactState_wire_size(roswasmc_bounded_1_pal_walking_msgs_ContactState const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_ContactState_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_ContactState_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsContactState_encode(roswasmc_bounded_1_pal_walking_msgs_ContactState const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_ContactState_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsContactState_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_walking_msgs_ContactState* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_ContactState_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_validate(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_wire_size(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_encode(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetRequest_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_validate(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_wire_size(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_encode(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsMoveHipFeetResponse_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSMStatus_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_SMStatus);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSMStatus_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_SMStatus);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSMStatus_validate(roswasmc_bounded_1_pal_walking_msgs_SMStatus const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_SMStatus_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSMStatus_wire_size(roswasmc_bounded_1_pal_walking_msgs_SMStatus const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_SMStatus_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_SMStatus_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSMStatus_encode(roswasmc_bounded_1_pal_walking_msgs_SMStatus const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_SMStatus_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSMStatus_decode(void const* input, size_t length, roswasmc_bounded_1_pal_walking_msgs_SMStatus* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_SMStatus_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_SitRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_SitRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitRequest_validate(roswasmc_bounded_1_pal_walking_msgs_SitRequest const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_SitRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitRequest_wire_size(roswasmc_bounded_1_pal_walking_msgs_SitRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_SitRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_SitRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitRequest_encode(roswasmc_bounded_1_pal_walking_msgs_SitRequest const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_SitRequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitRequest_decode(void const* input, size_t length, roswasmc_bounded_1_pal_walking_msgs_SitRequest* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_SitRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_SitResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_SitResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitResponse_validate(roswasmc_bounded_1_pal_walking_msgs_SitResponse const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_SitResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitResponse_wire_size(roswasmc_bounded_1_pal_walking_msgs_SitResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_SitResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_SitResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitResponse_encode(roswasmc_bounded_1_pal_walking_msgs_SitResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_SitResponse_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsSitResponse_decode(void const* input, size_t length, roswasmc_bounded_1_pal_walking_msgs_SitResponse* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_SitResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_StepOverRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_StepOverRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverRequest_validate(roswasmc_bounded_1_pal_walking_msgs_StepOverRequest const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_StepOverRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverRequest_wire_size(roswasmc_bounded_1_pal_walking_msgs_StepOverRequest const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_StepOverRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_StepOverRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverRequest_encode(roswasmc_bounded_1_pal_walking_msgs_StepOverRequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_StepOverRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverRequest_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_pal_walking_msgs_StepOverRequest* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_StepOverRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_StepOverResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_StepOverResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverResponse_validate(roswasmc_bounded_1_pal_walking_msgs_StepOverResponse const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_StepOverResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverResponse_wire_size(roswasmc_bounded_1_pal_walking_msgs_StepOverResponse const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_StepOverResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_StepOverResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverResponse_encode(roswasmc_bounded_1_pal_walking_msgs_StepOverResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_StepOverResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsStepOverResponse_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_walking_msgs_StepOverResponse* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_StepOverResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsRequest_validate(roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsRequest_wire_size(roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsRequest_encode(roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsRequest_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsResponse_validate(roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsResponse_wire_size(roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsResponse_encode(roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkStepsResponse_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStatus_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_WalkingStatus);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStatus_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_WalkingStatus);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStatus_validate(roswasmc_bounded_1_pal_walking_msgs_WalkingStatus const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkingStatus_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStatus_wire_size(roswasmc_bounded_1_pal_walking_msgs_WalkingStatus const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_WalkingStatus_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_WalkingStatus_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStatus_encode(roswasmc_bounded_1_pal_walking_msgs_WalkingStatus const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkingStatus_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStatus_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_pal_walking_msgs_WalkingStatus* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkingStatus_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsDuration_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_msgs_Duration);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsDuration_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_msgs_Duration);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsDuration_validate(roswasmc_bounded_1_std_msgs_Duration const* value)
{
    return roswasmc_bounded_1_std_msgs_Duration_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsDuration_wire_size(roswasmc_bounded_1_std_msgs_Duration const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_msgs_Duration_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_msgs_Duration_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Std_msgsDuration_encode(roswasmc_bounded_1_std_msgs_Duration const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_std_msgs_Duration_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Std_msgsDuration_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Duration* value)
{
    return roswasmc_bounded_1_std_msgs_Duration_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStep_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_walking_msgs_WalkingStep);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStep_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_walking_msgs_WalkingStep);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStep_validate(roswasmc_bounded_1_pal_walking_msgs_WalkingStep const* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkingStep_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStep_wire_size(roswasmc_bounded_1_pal_walking_msgs_WalkingStep const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_walking_msgs_WalkingStep_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_walking_msgs_WalkingStep_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStep_encode(roswasmc_bounded_1_pal_walking_msgs_WalkingStep const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkingStep_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_walking_msgsWalkingStep_decode(void const* input, size_t length, roswasmc_bounded_1_pal_walking_msgs_WalkingStep* value)
{
    return roswasmc_bounded_1_pal_walking_msgs_WalkingStep_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsWebGoTo_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_web_msgs_WebGoTo);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsWebGoTo_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_web_msgs_WebGoTo);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsWebGoTo_validate(roswasmc_bounded_1_pal_web_msgs_WebGoTo const* value)
{
    return roswasmc_bounded_1_pal_web_msgs_WebGoTo_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsWebGoTo_wire_size(roswasmc_bounded_1_pal_web_msgs_WebGoTo const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_web_msgs_WebGoTo_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_web_msgs_WebGoTo_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsWebGoTo_encode(roswasmc_bounded_1_pal_web_msgs_WebGoTo const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_web_msgs_WebGoTo_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsWebGoTo_decode(void const* input, size_t length, roswasmc_bounded_1_pal_web_msgs_WebGoTo* value)
{
    return roswasmc_bounded_1_pal_web_msgs_WebGoTo_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputGoal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputGoal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputGoal_validate(roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal const* value)
{
    return roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputGoal_wire_size(roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputGoal_encode(roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputGoal_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal* value)
{
    return roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputResult_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_web_msgs_GetUserInputResult);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputResult_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_web_msgs_GetUserInputResult);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputResult_validate(roswasmc_bounded_1_pal_web_msgs_GetUserInputResult const* value)
{
    return roswasmc_bounded_1_pal_web_msgs_GetUserInputResult_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputResult_wire_size(roswasmc_bounded_1_pal_web_msgs_GetUserInputResult const* value,
                                                                                 size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_web_msgs_GetUserInputResult_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_web_msgs_GetUserInputResult_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputResult_encode(roswasmc_bounded_1_pal_web_msgs_GetUserInputResult const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    return roswasmc_bounded_1_pal_web_msgs_GetUserInputResult_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputResult_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_pal_web_msgs_GetUserInputResult* value)
{
    return roswasmc_bounded_1_pal_web_msgs_GetUserInputResult_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputFeedback_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputFeedback_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputFeedback_validate(roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback const* value)
{
    return roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputFeedback_wire_size(roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputFeedback_encode(roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_web_msgsGetUserInputFeedback_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback* value)
{
    return roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_validate(
    roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest const* value)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_wire_size(
    roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_encode(
    roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapRequest_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest* value)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignal_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignal_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignal_validate(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal const* value)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignal_wire_size(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal const* value,
                                                                                       size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignal_encode(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignal_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal* value)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_validate(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList const* value)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_wire_size(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_encode(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalList_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList* value)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_validate(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap const* value)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_wire_size(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_encode(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap_encode(value, output, capacity, length);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsWifiSignalMap_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap* value)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap_decode(input, length, value);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse);
}

size_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse);
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_validate(
    roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse const* value)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_wire_size(
    roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse const* value,
    size_t* length)
{
    if(!length || !roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_encode(
    roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse_encode(value, output, capacity, length);
}

uint32_t
    uwvm_pal_ros1_humble_devel_Ros1Pal_wifi_localization_msgsGetWifiMapResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse* value)
{
    return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse_decode(input, length, value);
}
