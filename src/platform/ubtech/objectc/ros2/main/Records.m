/** @file Records.m
 * @brief Implement genuine Objective-C full-record codec entry points.
 * @details Class methods delegate only canonical byte conversion to the
 * exact C interop catalog. No source-language application is replaced by C.
 */
#import <ubtech/objectc/ros2/main/Records.h>

@implementation UbtechRos2MainRecords

+ (unsigned int)decodeRos2Builtin_interfacesMsgTime:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_builtin_interfaces_msg_Time*)output
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Builtin_interfacesMsgTime:(roswasmc_bounded_2_builtin_interfaces_msg_Time const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Geometry_msgsMsgPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Point*)output
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Geometry_msgsMsgPoint:(roswasmc_bounded_2_geometry_msgs_msg_Point const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Geometry_msgsMsgQuaternion:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion*)output
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Geometry_msgsMsgQuaternion:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Geometry_msgsMsgPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Pose*)output
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Geometry_msgsMsgPose:(roswasmc_bounded_2_geometry_msgs_msg_Pose const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Std_msgsMsgHeader:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_std_msgs_msg_Header*)output
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Std_msgsMsgHeader:(roswasmc_bounded_2_std_msgs_msg_Header const*)value
                                       into:(void*)output
                                   capacity:(size_t)capacity
                                     length:(size_t*)length
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Geometry_msgsMsgPoseStamped:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped*)output
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Geometry_msgsMsgPoseStamped:(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Grab_demo_msgsMsgGraspCandidate:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_grab_demo_msgs_msg_GraspCandidate*)output
{
    return roswasmc_bounded_2_grab_demo_msgs_msg_GraspCandidate_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Grab_demo_msgsMsgGraspCandidate:(roswasmc_bounded_2_grab_demo_msgs_msg_GraspCandidate const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_grab_demo_msgs_msg_GraspCandidate_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Grab_demo_msgsMsgIKRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_grab_demo_msgs_msg_IKRequest*)output
{
    return roswasmc_bounded_2_grab_demo_msgs_msg_IKRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Grab_demo_msgsMsgIKRequest:(roswasmc_bounded_2_grab_demo_msgs_msg_IKRequest const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_grab_demo_msgs_msg_IKRequest_encode(value, output, capacity, length);
}

@end
