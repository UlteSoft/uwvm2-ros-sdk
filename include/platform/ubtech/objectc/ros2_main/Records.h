/** @file Records.h
 * @brief Complete original ubtech types through genuine Objective-C class dispatch.
 * @details The selected LLVM 23 Objective-C runtime must be supplied by the
 * shared native-language owner. Caller-owned C-compatible record storage
 * preserves every original field. No Foundation, ARC or ROS grant is inferred.
 */
#pragma once
#import <objc/Object.h>
#include <ubtech/c/ros2/ubtech-ros2-main-complete/bounded_records.h>

@interface UbtechRos2MainRecords : Object
/** @brief Decode all original builtin_interfaces/msg/Time fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Builtin_interfacesMsgTime:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_builtin_interfaces_msg_Time*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Builtin_interfacesMsgTime:(roswasmc_bounded_2_builtin_interfaces_msg_Time const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original geometry_msgs/msg/Point fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Geometry_msgsMsgPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Point*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Geometry_msgsMsgPoint:(roswasmc_bounded_2_geometry_msgs_msg_Point const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original geometry_msgs/msg/Quaternion fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Geometry_msgsMsgQuaternion:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Geometry_msgsMsgQuaternion:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original geometry_msgs/msg/Pose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Geometry_msgsMsgPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Pose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Geometry_msgsMsgPose:(roswasmc_bounded_2_geometry_msgs_msg_Pose const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length;

/** @brief Decode all original std_msgs/msg/Header fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Std_msgsMsgHeader:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_std_msgs_msg_Header*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Std_msgsMsgHeader:(roswasmc_bounded_2_std_msgs_msg_Header const*)value
                                       into:(void*)output
                                   capacity:(size_t)capacity
                                     length:(size_t*)length;

/** @brief Decode all original geometry_msgs/msg/PoseStamped fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Geometry_msgsMsgPoseStamped:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Geometry_msgsMsgPoseStamped:(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original grab_demo_msgs/msg/GraspCandidate fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Grab_demo_msgsMsgGraspCandidate:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_grab_demo_msgs_msg_GraspCandidate*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Grab_demo_msgsMsgGraspCandidate:(roswasmc_bounded_2_grab_demo_msgs_msg_GraspCandidate const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original grab_demo_msgs/msg/IKRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Grab_demo_msgsMsgIKRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_grab_demo_msgs_msg_IKRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Grab_demo_msgsMsgIKRequest:(roswasmc_bounded_2_grab_demo_msgs_msg_IKRequest const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

@end
