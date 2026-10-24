/** @file records.c
 * @brief Implement the external C FFI using the full checked canonical codecs.
 * @details No weak stub, projected field, implicit allocation or native ROS call.
 */
#include <nvidia-isaac-ros/c_ffi_bridge/ros2/records.h>

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_valid. */
int nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_wire_size. */
size_t nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_encode. */
uint32_t nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                 void* output,
                                                                 size_t capacity,
                                                                 size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_decode. */
uint32_t nvidia_isaac_ros_ffi_builtin_interfaces_msg_Time_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_ros_ffi_std_msgs_msg_Header_valid. */
int nvidia_isaac_ros_ffi_std_msgs_msg_Header_valid(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_ros_ffi_std_msgs_msg_Header_wire_size.
 */
size_t nvidia_isaac_ros_ffi_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_ros_ffi_std_msgs_msg_Header_encode. */
uint32_t nvidia_isaac_ros_ffi_std_msgs_msg_Header_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_ros_ffi_std_msgs_msg_Header_decode. */
uint32_t nvidia_isaac_ros_ffi_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_valid.
 */
int nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_valid(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_wire_size. */
size_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(value);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_encode.
 */
uint32_t
    nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_encode(roswasmc_bounded_2_geometry_msgs_msg_Point const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_decode.
 */
uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Point_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_valid. */
int nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_valid(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_wire_size. */
size_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_encode. */
uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
                                                                  void* output,
                                                                  size_t capacity,
                                                                  size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_decode. */
uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Quaternion_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_valid.
 */
int nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_valid(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_wire_size. */
size_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(value);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_encode.
 */
uint32_t
    nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_encode(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_decode.
 */
uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_Pose_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_valid. */
int nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_valid(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_wire_size. */
size_t nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_wire_size(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_encode. */
uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_encode(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_decode. */
uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovariance_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_valid. */
int nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_valid(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size. */
size_t nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_encode. */
uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_decode. */
uint32_t nvidia_isaac_ros_ffi_geometry_msgs_msg_PoseWithCovarianceStamped_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped* value)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid. */
int nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value)
{
    return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size. */
size_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value)
{
    return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_encode. */
uint32_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_encode(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_decode. */
uint32_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection* value)
{
    return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid. */
int nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value)
{
    return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size. */
size_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value)
{
    return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode. */
uint32_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode. */
uint32_t nvidia_isaac_ros_ffi_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray* value)
{
    return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(input, length, value);
}
