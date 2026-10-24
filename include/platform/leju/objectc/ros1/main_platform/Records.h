/** @file Records.h
 * @brief Complete original leju types through genuine Objective-C class dispatch.
 * @details The selected LLVM 23 Objective-C runtime must be supplied by the
 * shared native-language owner. Caller-owned C-compatible record storage
 * preserves every original field. No Foundation, ARC or ROS grant is inferred.
 */
#pragma once
#import <objc/Object.h>
#include <leju/c/ros1/leju-ros1-main-platform-complete/bounded_records.h>

@interface LejuRos1MainPlatformRecords : Object
/** @brief Decode all original time fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Time:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_time*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Time:(roswasmc_bounded_1_time const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length;

/** @brief Decode all original std_msgs/Header fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Std_msgsHeader:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_std_msgs_Header*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Std_msgsHeader:(roswasmc_bounded_1_std_msgs_Header const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length;

/** @brief Decode all original geometry_msgs/Point fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geometry_msgsPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Point*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geometry_msgsPoint:(roswasmc_bounded_1_geometry_msgs_Point const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length;

/** @brief Decode all original geometry_msgs/Quaternion fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geometry_msgsQuaternion:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Quaternion*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geometry_msgsQuaternion:(roswasmc_bounded_1_geometry_msgs_Quaternion const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original geometry_msgs/Pose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geometry_msgsPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Pose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geometry_msgsPose:(roswasmc_bounded_1_geometry_msgs_Pose const*)value
                                       into:(void*)output
                                   capacity:(size_t)capacity
                                     length:(size_t*)length;

/** @brief Decode all original geometry_msgs/PoseWithCovariance fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geometry_msgsPoseWithCovariance:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geometry_msgsPoseWithCovariance:(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original aruco_msgs/Marker fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Aruco_msgsMarker:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_aruco_msgs_Marker*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Aruco_msgsMarker:(roswasmc_bounded_1_aruco_msgs_Marker const*)value
                                      into:(void*)output
                                  capacity:(size_t)capacity
                                    length:(size_t*)length;

/** @brief Decode all original aruco_msgs/MarkerArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Aruco_msgsMarkerArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_aruco_msgs_MarkerArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Aruco_msgsMarkerArray:(roswasmc_bounded_1_aruco_msgs_MarkerArray const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/CheckStartingPoseRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsCheckStartingPoseRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsCheckStartingPoseRequest:(roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original geometry_msgs/PoseStamped fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geometry_msgsPoseStamped:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_PoseStamped*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geometry_msgsPoseStamped:(roswasmc_bounded_1_geometry_msgs_PoseStamped const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/TargetPoseList fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsTargetPoseList:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_easy_handeye_msgs_TargetPoseList*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsTargetPoseList:(roswasmc_bounded_1_easy_handeye_msgs_TargetPoseList const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/CheckStartingPoseResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsCheckStartingPoseResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsCheckStartingPoseResponse:(roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/ComputeCalibrationRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsComputeCalibrationRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsComputeCalibrationRequest:(roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original geometry_msgs/Vector3 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geometry_msgsVector3:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Vector3*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geometry_msgsVector3:(roswasmc_bounded_1_geometry_msgs_Vector3 const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length;

/** @brief Decode all original geometry_msgs/Transform fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geometry_msgsTransform:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Transform*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geometry_msgsTransform:(roswasmc_bounded_1_geometry_msgs_Transform const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original geometry_msgs/TransformStamped fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geometry_msgsTransformStamped:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_geometry_msgs_TransformStamped*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geometry_msgsTransformStamped:(roswasmc_bounded_1_geometry_msgs_TransformStamped const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/HandeyeCalibration fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsHandeyeCalibration:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_easy_handeye_msgs_HandeyeCalibration*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsHandeyeCalibration:(roswasmc_bounded_1_easy_handeye_msgs_HandeyeCalibration const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/ComputeCalibrationResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsComputeCalibrationResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsComputeCalibrationResponse:(roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/EnumerateTargetPosesRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsEnumerateTargetPosesRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsEnumerateTargetPosesRequest:(roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/EnumerateTargetPosesResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsEnumerateTargetPosesResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsEnumerateTargetPosesResponse:(roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/ExecutePlanRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsExecutePlanRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsExecutePlanRequest:(roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/ExecutePlanResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsExecutePlanResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsExecutePlanResponse:(roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/ListAlgorithmsRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsListAlgorithmsRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsListAlgorithmsRequest:(roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/ListAlgorithmsResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsListAlgorithmsResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsListAlgorithmsResponse:(roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/PlanToSelectedTargetPoseRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest:(roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/PlanToSelectedTargetPoseResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse:(roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/RemoveSampleRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsRemoveSampleRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsRemoveSampleRequest:(roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/SampleList fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsSampleList:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_easy_handeye_msgs_SampleList*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsSampleList:(roswasmc_bounded_1_easy_handeye_msgs_SampleList const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/RemoveSampleResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsRemoveSampleResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsRemoveSampleResponse:(roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/SelectTargetPoseRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsSelectTargetPoseRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsSelectTargetPoseRequest:(roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/SelectTargetPoseResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsSelectTargetPoseResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsSelectTargetPoseResponse:(roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/SetAlgorithmRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsSetAlgorithmRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsSetAlgorithmRequest:(roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/SetAlgorithmResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsSetAlgorithmResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsSetAlgorithmResponse:(roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/TakeSampleRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsTakeSampleRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_easy_handeye_msgs_TakeSampleRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsTakeSampleRequest:(roswasmc_bounded_1_easy_handeye_msgs_TakeSampleRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original easy_handeye_msgs/TakeSampleResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Easy_handeye_msgsTakeSampleResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_easy_handeye_msgs_TakeSampleResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Easy_handeye_msgsTakeSampleResponse:(roswasmc_bounded_1_easy_handeye_msgs_TakeSampleResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original geographic_msgs/GeoPoint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geographic_msgsGeoPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geographic_msgs_GeoPoint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geographic_msgsGeoPoint:(roswasmc_bounded_1_geographic_msgs_GeoPoint const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original geographic_msgs/GeoPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geographic_msgsGeoPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geographic_msgs_GeoPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geographic_msgsGeoPose:(roswasmc_bounded_1_geographic_msgs_GeoPose const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original geometry_msgs/PointStamped fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geometry_msgsPointStamped:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_PointStamped*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geometry_msgsPointStamped:(roswasmc_bounded_1_geometry_msgs_PointStamped const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original geometry_msgs/PoseWithCovarianceStamped fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geometry_msgsPoseWithCovarianceStamped:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geometry_msgsPoseWithCovarianceStamped:(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original geometry_msgs/Twist fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Geometry_msgsTwist:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Twist*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Geometry_msgsTwist:(roswasmc_bounded_1_geometry_msgs_Twist const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length;

/** @brief Decode all original grid_map_msgs/GetGridMapRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Grid_map_msgsGetGridMapRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_grid_map_msgs_GetGridMapRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Grid_map_msgsGetGridMapRequest:(roswasmc_bounded_1_grid_map_msgs_GetGridMapRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original grid_map_msgs/GridMapInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Grid_map_msgsGridMapInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_grid_map_msgs_GridMapInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Grid_map_msgsGridMapInfo:(roswasmc_bounded_1_grid_map_msgs_GridMapInfo const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original std_msgs/MultiArrayDimension fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Std_msgsMultiArrayDimension:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_std_msgs_MultiArrayDimension*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Std_msgsMultiArrayDimension:(roswasmc_bounded_1_std_msgs_MultiArrayDimension const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original std_msgs/MultiArrayLayout fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Std_msgsMultiArrayLayout:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_std_msgs_MultiArrayLayout*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Std_msgsMultiArrayLayout:(roswasmc_bounded_1_std_msgs_MultiArrayLayout const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original std_msgs/Float32MultiArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Std_msgsFloat32MultiArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_std_msgs_Float32MultiArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Std_msgsFloat32MultiArray:(roswasmc_bounded_1_std_msgs_Float32MultiArray const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original grid_map_msgs/GridMap fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Grid_map_msgsGridMap:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_grid_map_msgs_GridMap*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Grid_map_msgsGridMap:(roswasmc_bounded_1_grid_map_msgs_GridMap const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length;

/** @brief Decode all original grid_map_msgs/GetGridMapResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Grid_map_msgsGetGridMapResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_grid_map_msgs_GetGridMapResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Grid_map_msgsGetGridMapResponse:(roswasmc_bounded_1_grid_map_msgs_GetGridMapResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original grid_map_msgs/GetGridMapInfoRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Grid_map_msgsGetGridMapInfoRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Grid_map_msgsGetGridMapInfoRequest:(roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original grid_map_msgs/GetGridMapInfoResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Grid_map_msgsGetGridMapInfoResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Grid_map_msgsGetGridMapInfoResponse:(roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original grid_map_msgs/ProcessFileRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Grid_map_msgsProcessFileRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_grid_map_msgs_ProcessFileRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Grid_map_msgsProcessFileRequest:(roswasmc_bounded_1_grid_map_msgs_ProcessFileRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original grid_map_msgs/ProcessFileResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Grid_map_msgsProcessFileResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_grid_map_msgs_ProcessFileResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Grid_map_msgsProcessFileResponse:(roswasmc_bounded_1_grid_map_msgs_ProcessFileResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original grid_map_msgs/SetGridMapRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Grid_map_msgsSetGridMapRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_grid_map_msgs_SetGridMapRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Grid_map_msgsSetGridMapRequest:(roswasmc_bounded_1_grid_map_msgs_SetGridMapRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original grid_map_msgs/SetGridMapResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Grid_map_msgsSetGridMapResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_grid_map_msgs_SetGridMapResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Grid_map_msgsSetGridMapResponse:(roswasmc_bounded_1_grid_map_msgs_SetGridMapResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/ECJointMotordata fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeECJointMotordata:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_h12pro_controller_node_ECJointMotordata*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeECJointMotordata:(roswasmc_bounded_1_h12pro_controller_node_ECJointMotordata const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/ExecuteArmActionRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeExecuteArmActionRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeExecuteArmActionRequest:(roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/ExecuteArmActionResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeExecuteArmActionResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeExecuteArmActionResponse:(roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/RobotActionState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeRobotActionState:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_h12pro_controller_node_RobotActionState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeRobotActionState:(roswasmc_bounded_1_h12pro_controller_node_RobotActionState const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/UpdateH12CustomizeConfig fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeUpdateH12CustomizeConfig:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_h12pro_controller_node_UpdateH12CustomizeConfig*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeUpdateH12CustomizeConfig:(roswasmc_bounded_1_h12pro_controller_node_UpdateH12CustomizeConfig const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/changeAMBACCtrlModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest:(roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/changeAMBACCtrlModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse:(roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/changeArmCtrlModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeChangeArmCtrlModeRequest:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeChangeArmCtrlModeRequest:(roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeRequest const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/changeArmCtrlModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeChangeArmCtrlModeResponse:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeChangeArmCtrlModeResponse:(roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeResponse const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/changeHandArmPosesByConfigNameRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)
    decodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameRequest*)
                                                                              output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest:
                    (roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameRequest const*)value
                                                                                 into:(void*)output
                                                                             capacity:(size_t)capacity
                                                                               length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/changeHandArmPosesByConfigNameResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)
    decodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameResponse*)
                                                                               output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse:
                    (roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameResponse const*)value
                                                                                  into:(void*)output
                                                                              capacity:(size_t)capacity
                                                                                length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/h12proRemoteControllerChannel fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeH12proRemoteControllerChannel:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:(roswasmc_bounded_1_h12pro_controller_node_h12proRemoteControllerChannel*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeH12proRemoteControllerChannel:
                    (roswasmc_bounded_1_h12pro_controller_node_h12proRemoteControllerChannel const*)value
                                                                         into:(void*)output
                                                                     capacity:(size_t)capacity
                                                                       length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/playmusicRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodePlaymusicRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_h12pro_controller_node_playmusicRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodePlaymusicRequest:(roswasmc_bounded_1_h12pro_controller_node_playmusicRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/playmusicResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodePlaymusicResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_h12pro_controller_node_playmusicResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodePlaymusicResponse:(roswasmc_bounded_1_h12pro_controller_node_playmusicResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/robotPhase fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeRobotPhase:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_h12pro_controller_node_robotPhase*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeRobotPhase:(roswasmc_bounded_1_h12pro_controller_node_robotPhase const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/robotQVTau fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeRobotQVTau:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_h12pro_controller_node_robotQVTau*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeRobotQVTau:(roswasmc_bounded_1_h12pro_controller_node_robotQVTau const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/robotTorsoState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeRobotTorsoState:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_h12pro_controller_node_robotTorsoState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeRobotTorsoState:(roswasmc_bounded_1_h12pro_controller_node_robotTorsoState const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/srvChangePhasesRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeSrvChangePhasesRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeSrvChangePhasesRequest:(roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/srvChangePhasesResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeSrvChangePhasesResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeSrvChangePhasesResponse:(roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/srvClearPositionCMDRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeSrvClearPositionCMDRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeSrvClearPositionCMDRequest:(roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/srvClearPositionCMDResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeSrvClearPositionCMDResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeSrvClearPositionCMDResponse:(roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/srvchangeCtlModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeSrvchangeCtlModeRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeSrvchangeCtlModeRequest:(roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/srvchangeCtlModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeSrvchangeCtlModeResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeSrvchangeCtlModeResponse:(roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original h12pro_controller_node/walkCommand fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1H12pro_controller_nodeWalkCommand:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_h12pro_controller_node_walkCommand*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1H12pro_controller_nodeWalkCommand:(roswasmc_bounded_1_h12pro_controller_node_walkCommand const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original handcontrollerdemorosnode/armPoseWithTimeStamp fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_handcontrollerdemorosnode_armPoseWithTimeStamp*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp:(roswasmc_bounded_1_handcontrollerdemorosnode_armPoseWithTimeStamp const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original handcontrollerdemorosnode/changeHandTrackingModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest:(void const*)bytes
                                                                          length:(size_t)length
                                                                            into:(roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeRequest*)
                                                                                     output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest:
                    (roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeRequest const*)value
                                                                            into:(void*)output
                                                                        capacity:(size_t)capacity
                                                                          length:(size_t*)length;

/** @brief Decode all original handcontrollerdemorosnode/changeHandTrackingModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse:(void const*)bytes
                                                                           length:(size_t)length
                                                                             into:(roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeResponse*)
                                                                                      output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse:
                    (roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeResponse const*)value
                                                                             into:(void*)output
                                                                         capacity:(size_t)capacity
                                                                           length:(size_t*)length;

/** @brief Decode all original handcontrollerdemorosnode/controlEndHandRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1HandcontrollerdemorosnodeControlEndHandRequest:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1HandcontrollerdemorosnodeControlEndHandRequest:(roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandRequest const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original handcontrollerdemorosnode/controlEndHandResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1HandcontrollerdemorosnodeControlEndHandResponse:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1HandcontrollerdemorosnodeControlEndHandResponse:(roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandResponse const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original handcontrollerdemorosnode/handRotationEular fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1HandcontrollerdemorosnodeHandRotationEular:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_handcontrollerdemorosnode_handRotationEular*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1HandcontrollerdemorosnodeHandRotationEular:(roswasmc_bounded_1_handcontrollerdemorosnode_handRotationEular const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original handcontrollerdemorosnode/robotArmPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1HandcontrollerdemorosnodeRobotArmPose:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_handcontrollerdemorosnode_robotArmPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1HandcontrollerdemorosnodeRobotArmPose:(roswasmc_bounded_1_handcontrollerdemorosnode_robotArmPose const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original handcontrollerdemorosnode/robotHandPosition fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1HandcontrollerdemorosnodeRobotHandPosition:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_handcontrollerdemorosnode_robotHandPosition*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1HandcontrollerdemorosnodeRobotHandPosition:(roswasmc_bounded_1_handcontrollerdemorosnode_robotHandPosition const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original handcontrollerdemorosnode/srvArmIKRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1HandcontrollerdemorosnodeSrvArmIKRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1HandcontrollerdemorosnodeSrvArmIKRequest:(roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original sensor_msgs/JointState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Sensor_msgsJointState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_JointState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Sensor_msgsJointState:(roswasmc_bounded_1_sensor_msgs_JointState const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original handcontrollerdemorosnode/srvArmIKResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1HandcontrollerdemorosnodeSrvArmIKResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1HandcontrollerdemorosnodeSrvArmIKResponse:(roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original hardware_node/horizontalMotionByStep fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Hardware_nodeHorizontalMotionByStep:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_hardware_node_horizontalMotionByStep*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Hardware_nodeHorizontalMotionByStep:(roswasmc_bounded_1_hardware_node_horizontalMotionByStep const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original hardware_node/robotHeadMotionData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Hardware_nodeRobotHeadMotionData:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_hardware_node_robotHeadMotionData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Hardware_nodeRobotHeadMotionData:(roswasmc_bounded_1_hardware_node_robotHeadMotionData const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original humanoid_arm_control/armControlRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Humanoid_arm_controlArmControlRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_humanoid_arm_control_armControlRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_arm_controlArmControlRequest:(roswasmc_bounded_1_humanoid_arm_control_armControlRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original humanoid_arm_control/armControlResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Humanoid_arm_controlArmControlResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_humanoid_arm_control_armControlResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_arm_controlArmControlResponse:(roswasmc_bounded_1_humanoid_arm_control_armControlResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original humanoid_arm_control/handUpAndGrabRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Humanoid_arm_controlHandUpAndGrabRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_arm_controlHandUpAndGrabRequest:(roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original humanoid_arm_control/handUpAndGrabResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Humanoid_arm_controlHandUpAndGrabResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_arm_controlHandUpAndGrabResponse:(roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original humanoid_plan_arm_trajectory/ExecuteArmActionRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionRequest const*)value
                                                                         into:(void*)output
                                                                     capacity:(size_t)capacity
                                                                       length:(size_t*)length;

/** @brief Decode all original humanoid_plan_arm_trajectory/ExecuteArmActionResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse:(void const*)bytes
                                                                        length:(size_t)length
                                                                          into:
                                                                              (roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionResponse const*)value
                                                                          into:(void*)output
                                                                      capacity:(size_t)capacity
                                                                        length:(size_t*)length;

/** @brief Decode all original humanoid_plan_arm_trajectory/RobotActionState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryRobotActionState:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_RobotActionState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryRobotActionState:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_RobotActionState const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original humanoid_plan_arm_trajectory/bezierCurveCubicPoint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_bezierCurveCubicPoint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_bezierCurveCubicPoint const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length;

/** @brief Decode all original humanoid_plan_arm_trajectory/jointBezierTrajectory fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_jointBezierTrajectory*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_jointBezierTrajectory const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length;

/** @brief Decode all original humanoid_plan_arm_trajectory/planArmState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryPlanArmState:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryPlanArmState:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmState const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)
    decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:
                                                                             (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveRequest*)
                                                                                 output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveRequest const*)value
                                                                                     into:(void*)output
                                                                                 capacity:(size_t)capacity
                                                                                   length:(size_t*)length;

/** @brief Decode all original humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)
    decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse:(void const*)bytes
                                                                        length:(size_t)length
                                                                          into:
                                                                              (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveResponse*)
                                                                                  output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveResponse const*)value
                                                                                      into:(void*)output
                                                                                  capacity:(size_t)capacity
                                                                                    length:(size_t*)length;

/** @brief Decode all original duration fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Duration:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_duration*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Duration:(roswasmc_bounded_1_duration const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length;

/** @brief Decode all original trajectory_msgs/JointTrajectoryPoint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Trajectory_msgsJointTrajectoryPoint:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Trajectory_msgsJointTrajectoryPoint:(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original trajectory_msgs/JointTrajectory fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Trajectory_msgsJointTrajectory:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_trajectory_msgs_JointTrajectory*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Trajectory_msgsJointTrajectory:(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)
    decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:
                                                                             (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineRequest*)
                                                                                 output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineRequest const*)value
                                                                                     into:(void*)output
                                                                                 capacity:(size_t)capacity
                                                                                   length:(size_t*)length;

/** @brief Decode all original humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)
    decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse:(void const*)bytes
                                                                        length:(size_t)length
                                                                          into:
                                                                              (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineResponse*)
                                                                                  output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineResponse const*)value
                                                                                      into:(void*)output
                                                                                  capacity:(size_t)capacity
                                                                                    length:(size_t*)length;

/** @brief Decode all original kindr_msgs/VectorAtPosition fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kindr_msgsVectorAtPosition:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kindr_msgs_VectorAtPosition*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kindr_msgsVectorAtPosition:(roswasmc_bounded_1_kindr_msgs_VectorAtPosition const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original kuavo_audio_player/audio_statusRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_audio_playerAudio_statusRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_audio_player_audio_statusRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_audio_playerAudio_statusRequest:(roswasmc_bounded_1_kuavo_audio_player_audio_statusRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_audio_player/audio_statusResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_audio_playerAudio_statusResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_audio_player_audio_statusResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_audio_playerAudio_statusResponse:(roswasmc_bounded_1_kuavo_audio_player_audio_statusResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original kuavo_audio_player/playmusicRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_audio_playerPlaymusicRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_audio_player_playmusicRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_audio_playerPlaymusicRequest:(roswasmc_bounded_1_kuavo_audio_player_playmusicRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_audio_player/playmusicResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_audio_playerPlaymusicResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_audio_player_playmusicResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_audio_playerPlaymusicResponse:(roswasmc_bounded_1_kuavo_audio_player_playmusicResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/DeleteMapRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingDeleteMapRequest:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_kuavo_mapping_DeleteMapRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingDeleteMapRequest:(roswasmc_bounded_1_kuavo_mapping_DeleteMapRequest const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/DeleteMapResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingDeleteMapResponse:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_mapping_DeleteMapResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingDeleteMapResponse:(roswasmc_bounded_1_kuavo_mapping_DeleteMapResponse const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/EditMapRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingEditMapRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_EditMapRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingEditMapRequest:(roswasmc_bounded_1_kuavo_mapping_EditMapRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/EditMapResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingEditMapResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_EditMapResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingEditMapResponse:(roswasmc_bounded_1_kuavo_mapping_EditMapResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/GetAllMapsRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingGetAllMapsRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_mapping_GetAllMapsRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingGetAllMapsRequest:(roswasmc_bounded_1_kuavo_mapping_GetAllMapsRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/GetAllMapsResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingGetAllMapsResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_mapping_GetAllMapsResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingGetAllMapsResponse:(roswasmc_bounded_1_kuavo_mapping_GetAllMapsResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/GetCurrentMapRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingGetCurrentMapRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_mapping_GetCurrentMapRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingGetCurrentMapRequest:(roswasmc_bounded_1_kuavo_mapping_GetCurrentMapRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/GetCurrentMapResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingGetCurrentMapResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_mapping_GetCurrentMapResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingGetCurrentMapResponse:(roswasmc_bounded_1_kuavo_mapping_GetCurrentMapResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/InitialPoseWithTaskPointRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingInitialPoseWithTaskPointRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingInitialPoseWithTaskPointRequest:(roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/InitialPoseWithTaskPointResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingInitialPoseWithTaskPointResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingInitialPoseWithTaskPointResponse:(roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/LoadMapRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingLoadMapRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_LoadMapRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingLoadMapRequest:(roswasmc_bounded_1_kuavo_mapping_LoadMapRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/LoadMapResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingLoadMapResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_LoadMapResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingLoadMapResponse:(roswasmc_bounded_1_kuavo_mapping_LoadMapResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/NavigateToTaskPointRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingNavigateToTaskPointRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingNavigateToTaskPointRequest:(roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/NavigateToTaskPointResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingNavigateToTaskPointResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingNavigateToTaskPointResponse:(roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/RenameMapRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingRenameMapRequest:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_kuavo_mapping_RenameMapRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingRenameMapRequest:(roswasmc_bounded_1_kuavo_mapping_RenameMapRequest const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/RenameMapResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingRenameMapResponse:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_mapping_RenameMapResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingRenameMapResponse:(roswasmc_bounded_1_kuavo_mapping_RenameMapResponse const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/SaveMapRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingSaveMapRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_SaveMapRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingSaveMapRequest:(roswasmc_bounded_1_kuavo_mapping_SaveMapRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/SaveMapResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingSaveMapResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_SaveMapResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingSaveMapResponse:(roswasmc_bounded_1_kuavo_mapping_SaveMapResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/SetInitialPoseRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingSetInitialPoseRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_mapping_SetInitialPoseRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingSetInitialPoseRequest:(roswasmc_bounded_1_kuavo_mapping_SetInitialPoseRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/SetInitialPoseResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingSetInitialPoseResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_mapping_SetInitialPoseResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingSetInitialPoseResponse:(roswasmc_bounded_1_kuavo_mapping_SetInitialPoseResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/StartMappingRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingStartMappingRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_mapping_StartMappingRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingStartMappingRequest:(roswasmc_bounded_1_kuavo_mapping_StartMappingRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/StartMappingResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingStartMappingResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_mapping_StartMappingResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingStartMappingResponse:(roswasmc_bounded_1_kuavo_mapping_StartMappingResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/StopMappingRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingStopMappingRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_mapping_StopMappingRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingStopMappingRequest:(roswasmc_bounded_1_kuavo_mapping_StopMappingRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/StopMappingResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingStopMappingResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_mapping_StopMappingResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingStopMappingResponse:(roswasmc_bounded_1_kuavo_mapping_StopMappingResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/TaskPoint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingTaskPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_TaskPoint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingTaskPoint:(roswasmc_bounded_1_kuavo_mapping_TaskPoint const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/TaskPointOperationRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingTaskPointOperationRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_mapping_TaskPointOperationRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingTaskPointOperationRequest:(roswasmc_bounded_1_kuavo_mapping_TaskPointOperationRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original kuavo_mapping/TaskPointOperationResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_mappingTaskPointOperationResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_mapping_TaskPointOperationResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_mappingTaskPointOperationResponse:(roswasmc_bounded_1_kuavo_mapping_TaskPointOperationResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/AprilTagDetection fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsAprilTagDetection:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_AprilTagDetection*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsAprilTagDetection:(roswasmc_bounded_1_kuavo_msgs_AprilTagDetection const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/AprilTagDetectionArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsAprilTagDetectionArray:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_AprilTagDetectionArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsAprilTagDetectionArray:(roswasmc_bounded_1_kuavo_msgs_AprilTagDetectionArray const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/AudioPlaybackStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsAudioPlaybackStatus:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_kuavo_msgs_AudioPlaybackStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsAudioPlaybackStatus:(roswasmc_bounded_1_kuavo_msgs_AudioPlaybackStatus const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/AudioReceiverData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsAudioReceiverData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_AudioReceiverData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsAudioReceiverData:(roswasmc_bounded_1_kuavo_msgs_AudioReceiverData const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/BatteryInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsBatteryInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_BatteryInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsBatteryInfo:(roswasmc_bounded_1_kuavo_msgs_BatteryInfo const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/Color fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsColor:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_Color*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsColor:(roswasmc_bounded_1_kuavo_msgs_Color const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/ControllerSwitchEvent fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsControllerSwitchEvent:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_ControllerSwitchEvent*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsControllerSwitchEvent:(roswasmc_bounded_1_kuavo_msgs_ControllerSwitchEvent const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/CreatePathRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsCreatePathRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_CreatePathRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsCreatePathRequest:(roswasmc_bounded_1_kuavo_msgs_CreatePathRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original nav_msgs/Path fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nav_msgsPath:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nav_msgs_Path*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nav_msgsPath:(roswasmc_bounded_1_nav_msgs_Path const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/CreatePathResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsCreatePathResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_CreatePathResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsCreatePathResponse:(roswasmc_bounded_1_kuavo_msgs_CreatePathResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/DanceTrajectoryState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsDanceTrajectoryState:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_DanceTrajectoryState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsDanceTrajectoryState:(roswasmc_bounded_1_kuavo_msgs_DanceTrajectoryState const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/ExecuteArmActionRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsExecuteArmActionRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsExecuteArmActionRequest:(roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/ExecuteArmActionResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsExecuteArmActionResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsExecuteArmActionResponse:(roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/FTsensorData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFTsensorData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_FTsensorData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFTsensorData:(roswasmc_bounded_1_kuavo_msgs_FTsensorData const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/FaceBoundingBox fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFaceBoundingBox:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_FaceBoundingBox*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFaceBoundingBox:(roswasmc_bounded_1_kuavo_msgs_FaceBoundingBox const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/FallStandCommandRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFallStandCommandRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_FallStandCommandRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFallStandCommandRequest:(roswasmc_bounded_1_kuavo_msgs_FallStandCommandRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/FallStandCommandResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFallStandCommandResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_FallStandCommandResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFallStandCommandResponse:(roswasmc_bounded_1_kuavo_msgs_FallStandCommandResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/Float32MultiArrayStamped fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFloat32MultiArrayStamped:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_Float32MultiArrayStamped*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFloat32MultiArrayStamped:(roswasmc_bounded_1_kuavo_msgs_Float32MultiArrayStamped const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetAllMapsRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetAllMapsRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_GetAllMapsRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetAllMapsRequest:(roswasmc_bounded_1_kuavo_msgs_GetAllMapsRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetAllMapsResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetAllMapsResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_GetAllMapsResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetAllMapsResponse:(roswasmc_bounded_1_kuavo_msgs_GetAllMapsResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetBatteryInfoRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetBatteryInfoRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetBatteryInfoRequest:(roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetBatteryInfoResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetBatteryInfoResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetBatteryInfoResponse:(roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetCurrentMapRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetCurrentMapRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_GetCurrentMapRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetCurrentMapRequest:(roswasmc_bounded_1_kuavo_msgs_GetCurrentMapRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetCurrentMapResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetCurrentMapResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_GetCurrentMapResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetCurrentMapResponse:(roswasmc_bounded_1_kuavo_msgs_GetCurrentMapResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetPowerBoardStatusRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetPowerBoardStatusRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetPowerBoardStatusRequest:(roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/PowerBoardStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPowerBoardStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_PowerBoardStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPowerBoardStatus:(roswasmc_bounded_1_kuavo_msgs_PowerBoardStatus const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetPowerBoardStatusResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetPowerBoardStatusResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetPowerBoardStatusResponse:(roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetStringListRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetStringListRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_GetStringListRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetStringListRequest:(roswasmc_bounded_1_kuavo_msgs_GetStringListRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetStringListResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetStringListResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_GetStringListResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetStringListResponse:(roswasmc_bounded_1_kuavo_msgs_GetStringListResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetTargetPartPoseInCameraRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetTargetPartPoseInCameraRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetTargetPartPoseInCameraRequest:(roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/GetTargetPartPoseInCameraResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetTargetPartPoseInCameraResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetTargetPartPoseInCameraResponse:(roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/InitialPoseWithTaskPointRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsInitialPoseWithTaskPointRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsInitialPoseWithTaskPointRequest:(roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/InitialPoseWithTaskPointResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsInitialPoseWithTaskPointResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsInitialPoseWithTaskPointResponse:(roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/JoySticks fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsJoySticks:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_JoySticks*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsJoySticks:(roswasmc_bounded_1_kuavo_msgs_JoySticks const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/LoadMapRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLoadMapRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_LoadMapRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLoadMapRequest:(roswasmc_bounded_1_kuavo_msgs_LoadMapRequest const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/LoadMapResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLoadMapResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_LoadMapResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLoadMapResponse:(roswasmc_bounded_1_kuavo_msgs_LoadMapResponse const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/Metadata fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsMetadata:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_Metadata*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsMetadata:(roswasmc_bounded_1_kuavo_msgs_Metadata const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/MmDetectionMsg fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsMmDetectionMsg:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_MmDetectionMsg*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsMmDetectionMsg:(roswasmc_bounded_1_kuavo_msgs_MmDetectionMsg const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/MocapPoseRetarget fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsMocapPoseRetarget:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_MocapPoseRetarget*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsMocapPoseRetarget:(roswasmc_bounded_1_kuavo_msgs_MocapPoseRetarget const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/NavigateToTaskPointRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsNavigateToTaskPointRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsNavigateToTaskPointRequest:(roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/NavigateToTaskPointResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsNavigateToTaskPointResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsNavigateToTaskPointResponse:(roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/PlayMusicImmediateRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPlayMusicImmediateRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPlayMusicImmediateRequest:(roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/PlayMusicImmediateResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPlayMusicImmediateResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPlayMusicImmediateResponse:(roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/RelaySelectChannelRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRelaySelectChannelRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRelaySelectChannelRequest:(roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/RelaySelectChannelResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRelaySelectChannelResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRelaySelectChannelResponse:(roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/RepublishTFsRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRepublishTFsRequest:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_kuavo_msgs_RepublishTFsRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRepublishTFsRequest:(roswasmc_bounded_1_kuavo_msgs_RepublishTFsRequest const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/RepublishTFsResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRepublishTFsResponse:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_RepublishTFsResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRepublishTFsResponse:(roswasmc_bounded_1_kuavo_msgs_RepublishTFsResponse const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/RigidBodyDescription fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRigidBodyDescription:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_RigidBodyDescription*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRigidBodyDescription:(roswasmc_bounded_1_kuavo_msgs_RigidBodyDescription const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/RigidBodyFrame fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRigidBodyFrame:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_RigidBodyFrame*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRigidBodyFrame:(roswasmc_bounded_1_kuavo_msgs_RigidBodyFrame const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/RobotActionState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRobotActionState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_RobotActionState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRobotActionState:(roswasmc_bounded_1_kuavo_msgs_RobotActionState const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetHeadControlModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetHeadControlModeRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetHeadControlModeRequest:(roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetHeadControlModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetHeadControlModeResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetHeadControlModeResponse:(roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetIncrementalArmTrajLinkRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest:(roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetIncrementalArmTrajLinkResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse:(roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetInitialPoseRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetInitialPoseRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_SetInitialPoseRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetInitialPoseRequest:(roswasmc_bounded_1_kuavo_msgs_SetInitialPoseRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetInitialPoseResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetInitialPoseResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_SetInitialPoseResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetInitialPoseResponse:(roswasmc_bounded_1_kuavo_msgs_SetInitialPoseResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetJoyTopicRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetJoyTopicRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SetJoyTopicRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetJoyTopicRequest:(roswasmc_bounded_1_kuavo_msgs_SetJoyTopicRequest const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetJoyTopicResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetJoyTopicResponse:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_kuavo_msgs_SetJoyTopicResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetJoyTopicResponse:(roswasmc_bounded_1_kuavo_msgs_SetJoyTopicResponse const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetLEDModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetLEDModeRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SetLEDModeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetLEDModeRequest:(roswasmc_bounded_1_kuavo_msgs_SetLEDModeRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetLEDModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetLEDModeResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SetLEDModeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetLEDModeResponse:(roswasmc_bounded_1_kuavo_msgs_SetLEDModeResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetLEDMode_freeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetLEDMode_freeRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetLEDMode_freeRequest:(roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetLEDMode_freeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetLEDMode_freeResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetLEDMode_freeResponse:(roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetStringRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetStringRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SetStringRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetStringRequest:(roswasmc_bounded_1_kuavo_msgs_SetStringRequest const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SetStringResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetStringResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SetStringResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetStringResponse:(roswasmc_bounded_1_kuavo_msgs_SetStringResponse const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SkeletonFrame fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSkeletonFrame:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SkeletonFrame*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSkeletonFrame:(roswasmc_bounded_1_kuavo_msgs_SkeletonFrame const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SpeechSynthesisRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSpeechSynthesisRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSpeechSynthesisRequest:(roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/SpeechSynthesisResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSpeechSynthesisResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSpeechSynthesisResponse:(roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/TFArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTFArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_TFArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTFArray:(roswasmc_bounded_1_kuavo_msgs_TFArray const*)value
                                       into:(void*)output
                                   capacity:(size_t)capacity
                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/TaskPoint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTaskPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_TaskPoint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTaskPoint:(roswasmc_bounded_1_kuavo_msgs_TaskPoint const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/TaskPointOperationRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTaskPointOperationRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_TaskPointOperationRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTaskPointOperationRequest:(roswasmc_bounded_1_kuavo_msgs_TaskPointOperationRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/TaskPointOperationResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTaskPointOperationResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_TaskPointOperationResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTaskPointOperationResponse:(roswasmc_bounded_1_kuavo_msgs_TaskPointOperationResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/TransportModeCommandRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTransportModeCommandRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_TransportModeCommandRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTransportModeCommandRequest:(roswasmc_bounded_1_kuavo_msgs_TransportModeCommandRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/TransportModeCommandResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTransportModeCommandResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_TransportModeCommandResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTransportModeCommandResponse:(roswasmc_bounded_1_kuavo_msgs_TransportModeCommandResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/VMPTrajectoryState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsVMPTrajectoryState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_VMPTrajectoryState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsVMPTrajectoryState:(roswasmc_bounded_1_kuavo_msgs_VMPTrajectoryState const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/accessIkSolveRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsAccessIkSolveRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_accessIkSolveRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsAccessIkSolveRequest:(roswasmc_bounded_1_kuavo_msgs_accessIkSolveRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/accessIkSolveResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsAccessIkSolveResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_accessIkSolveResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsAccessIkSolveResponse:(roswasmc_bounded_1_kuavo_msgs_accessIkSolveResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/adjustZeroPointRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsAdjustZeroPointRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_adjustZeroPointRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsAdjustZeroPointRequest:(roswasmc_bounded_1_kuavo_msgs_adjustZeroPointRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/adjustZeroPointResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsAdjustZeroPointResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_adjustZeroPointResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsAdjustZeroPointResponse:(roswasmc_bounded_1_kuavo_msgs_adjustZeroPointResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/armCollisionCheckInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsArmCollisionCheckInfo:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_armCollisionCheckInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsArmCollisionCheckInfo:(roswasmc_bounded_1_kuavo_msgs_armCollisionCheckInfo const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/armHandPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsArmHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_armHandPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsArmHandPose:(roswasmc_bounded_1_kuavo_msgs_armHandPose const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/armHandPoseFree fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsArmHandPoseFree:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_armHandPoseFree*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsArmHandPoseFree:(roswasmc_bounded_1_kuavo_msgs_armHandPoseFree const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/armPoseWithTimeStamp fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsArmPoseWithTimeStamp:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_armPoseWithTimeStamp*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsArmPoseWithTimeStamp:(roswasmc_bounded_1_kuavo_msgs_armPoseWithTimeStamp const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/armTargetPoses fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsArmTargetPoses:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_armTargetPoses*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsArmTargetPoses:(roswasmc_bounded_1_kuavo_msgs_armTargetPoses const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/bezierCurveCubicPoint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsBezierCurveCubicPoint:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_bezierCurveCubicPoint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsBezierCurveCubicPoint:(roswasmc_bounded_1_kuavo_msgs_bezierCurveCubicPoint const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeArmCtrlModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeArmCtrlModeRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeArmCtrlModeRequest:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeArmCtrlModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeArmCtrlModeResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeArmCtrlModeResponse:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeArmCtrlModeKuavoRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeArmCtrlModeKuavoResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeLbMpcObsUpdateModeSrvRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest:(roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeLbMpcObsUpdateModeSrvResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse:(roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeLbQuickModeSrvRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeLbQuickModeSrvRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeLbQuickModeSrvRequest:(roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeLbQuickModeSrvResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeLbQuickModeSrvResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeLbQuickModeSrvResponse:(roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/motorParam fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsMotorParam:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_motorParam*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsMotorParam:(roswasmc_bounded_1_kuavo_msgs_motorParam const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeMotorParamRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeMotorParamRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_changeMotorParamRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeMotorParamRequest:(roswasmc_bounded_1_kuavo_msgs_changeMotorParamRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeMotorParamResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeMotorParamResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_changeMotorParamResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeMotorParamResponse:(roswasmc_bounded_1_kuavo_msgs_changeMotorParamResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeTorsoCtrlModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeTorsoCtrlModeRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeTorsoCtrlModeRequest:(roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeTorsoCtrlModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeTorsoCtrlModeResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeTorsoCtrlModeResponse:(roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeWaistCtrlModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeWaistCtrlModeRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeWaistCtrlModeRequest:(roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/changeWaistCtrlModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChangeWaistCtrlModeResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChangeWaistCtrlModeResponse:(roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/chassisPoseCmdSrvRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChassisPoseCmdSrvRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChassisPoseCmdSrvRequest:(roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/chassisPoseCmdSrvResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsChassisPoseCmdSrvResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsChassisPoseCmdSrvResponse:(roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/endEffectorData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsEndEffectorData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_endEffectorData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsEndEffectorData:(roswasmc_bounded_1_kuavo_msgs_endEffectorData const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/controlLejuClawRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsControlLejuClawRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_controlLejuClawRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsControlLejuClawRequest:(roswasmc_bounded_1_kuavo_msgs_controlLejuClawRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/controlLejuClawResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsControlLejuClawResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_controlLejuClawResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsControlLejuClawResponse:(roswasmc_bounded_1_kuavo_msgs_controlLejuClawResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/dexhandCommand fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsDexhandCommand:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_dexhandCommand*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsDexhandCommand:(roswasmc_bounded_1_kuavo_msgs_dexhandCommand const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/touchSensorStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTouchSensorStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_touchSensorStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTouchSensorStatus:(roswasmc_bounded_1_kuavo_msgs_touchSensorStatus const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/dexhandTouchState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsDexhandTouchState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_dexhandTouchState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsDexhandTouchState:(roswasmc_bounded_1_kuavo_msgs_dexhandTouchState const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/eePoseReachErrorRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsEePoseReachErrorRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsEePoseReachErrorRequest:(roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/eePoseReachErrorResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsEePoseReachErrorResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsEePoseReachErrorResponse:(roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/enableHandTouchSensorRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsEnableHandTouchSensorRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsEnableHandTouchSensorRequest:(roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/enableHandTouchSensorResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsEnableHandTouchSensorResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsEnableHandTouchSensorResponse:(roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/fkSrvRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFkSrvRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_fkSrvRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFkSrvRequest:(roswasmc_bounded_1_kuavo_msgs_fkSrvRequest const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/twoArmHandPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPose:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPose const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/fkSrvResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFkSrvResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_fkSrvResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFkSrvResponse:(roswasmc_bounded_1_kuavo_msgs_fkSrvResponse const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/fkSrvWithReferFrameRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFkSrvWithReferFrameRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFkSrvWithReferFrameRequest:(roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/fkSrvWithReferFrameResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFkSrvWithReferFrameResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFkSrvWithReferFrameResponse:(roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_footPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPose:(roswasmc_bounded_1_kuavo_msgs_footPose const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPose6D fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPose6D:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_footPose6D*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPose6D:(roswasmc_bounded_1_kuavo_msgs_footPose6D const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPoses6D fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPoses6D:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_footPoses6D*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPoses6D:(roswasmc_bounded_1_kuavo_msgs_footPoses6D const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPose6DTargetTrajectories fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPose6DTargetTrajectories:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectories*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPose6DTargetTrajectories:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectories const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPose6DTargetTrajectoriesSrvRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPose6DTargetTrajectoriesSrvResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPoses fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPoses:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_footPoses*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPoses:(roswasmc_bounded_1_kuavo_msgs_footPoses const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPoseTargetTrajectories fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPoseTargetTrajectories:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectories*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPoseTargetTrajectories:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectories const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPoseTargetTrajectoriesSrvRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvRequest const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPoseTargetTrajectoriesSrvResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvResponse const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPoseWithVision fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPoseWithVision:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_footPoseWithVision*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPoseWithVision:(roswasmc_bounded_1_kuavo_msgs_footPoseWithVision const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/footPoseWithVisionArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFootPoseWithVisionArray:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_footPoseWithVisionArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFootPoseWithVisionArray:(roswasmc_bounded_1_kuavo_msgs_footPoseWithVisionArray const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/qv fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsQv:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_qv*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsQv:(roswasmc_bounded_1_kuavo_msgs_qv const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/fullBodyTargetTrajectories fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsFullBodyTargetTrajectories:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_fullBodyTargetTrajectories*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsFullBodyTargetTrajectories:(roswasmc_bounded_1_kuavo_msgs_fullBodyTargetTrajectories const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/gaitTimeName fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGaitTimeName:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_gaitTimeName*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGaitTimeName:(roswasmc_bounded_1_kuavo_msgs_gaitTimeName const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/gestureTask fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGestureTask:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_gestureTask*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGestureTask:(roswasmc_bounded_1_kuavo_msgs_gestureTask const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/gestureExecuteRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGestureExecuteRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGestureExecuteRequest:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/gestureExecuteResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGestureExecuteResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGestureExecuteResponse:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/gestureExecuteStateRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGestureExecuteStateRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGestureExecuteStateRequest:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/gestureExecuteStateResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGestureExecuteStateResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGestureExecuteStateResponse:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/gestureInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGestureInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_gestureInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGestureInfo:(roswasmc_bounded_1_kuavo_msgs_gestureInfo const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/gestureListRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGestureListRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_gestureListRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGestureListRequest:(roswasmc_bounded_1_kuavo_msgs_gestureListRequest const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/gestureListResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGestureListResponse:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_kuavo_msgs_gestureListResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGestureListResponse:(roswasmc_bounded_1_kuavo_msgs_gestureListResponse const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/getControllerListRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetControllerListRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_getControllerListRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetControllerListRequest:(roswasmc_bounded_1_kuavo_msgs_getControllerListRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/getControllerListResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetControllerListResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_getControllerListResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetControllerListResponse:(roswasmc_bounded_1_kuavo_msgs_getControllerListResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/getCurrentGaitNameRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetCurrentGaitNameRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetCurrentGaitNameRequest:(roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/getCurrentGaitNameResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetCurrentGaitNameResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetCurrentGaitNameResponse:(roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/getLbTorsoInitialPoseRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetLbTorsoInitialPoseRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetLbTorsoInitialPoseRequest:(roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/getLbTorsoInitialPoseResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetLbTorsoInitialPoseResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetLbTorsoInitialPoseResponse:(roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/getMotorParamRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetMotorParamRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_getMotorParamRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetMotorParamRequest:(roswasmc_bounded_1_kuavo_msgs_getMotorParamRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/getMotorParamResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetMotorParamResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_getMotorParamResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetMotorParamResponse:(roswasmc_bounded_1_kuavo_msgs_getMotorParamResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/getMotorZeroPointsRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetMotorZeroPointsRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetMotorZeroPointsRequest:(roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/getMotorZeroPointsResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGetMotorZeroPointsResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGetMotorZeroPointsResponse:(roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/goToZeroPointRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGoToZeroPointRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_goToZeroPointRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGoToZeroPointRequest:(roswasmc_bounded_1_kuavo_msgs_goToZeroPointRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/goToZeroPointResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsGoToZeroPointResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_goToZeroPointResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsGoToZeroPointResponse:(roswasmc_bounded_1_kuavo_msgs_goToZeroPointResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/handForceLevelRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsHandForceLevelRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_handForceLevelRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsHandForceLevelRequest:(roswasmc_bounded_1_kuavo_msgs_handForceLevelRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/handForceLevelResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsHandForceLevelResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_handForceLevelResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsHandForceLevelResponse:(roswasmc_bounded_1_kuavo_msgs_handForceLevelResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/handPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_handPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsHandPose:(roswasmc_bounded_1_kuavo_msgs_handPose const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/headBodyPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsHeadBodyPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_headBodyPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsHeadBodyPose:(roswasmc_bounded_1_kuavo_msgs_headBodyPose const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/headCtrlMode fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsHeadCtrlMode:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_headCtrlMode*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsHeadCtrlMode:(roswasmc_bounded_1_kuavo_msgs_headCtrlMode const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/ikSolveError fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsIkSolveError:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_ikSolveError*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsIkSolveError:(roswasmc_bounded_1_kuavo_msgs_ikSolveError const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/ikSolveParam fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsIkSolveParam:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_ikSolveParam*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsIkSolveParam:(roswasmc_bounded_1_kuavo_msgs_ikSolveParam const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/imuData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsImuData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_imuData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsImuData:(roswasmc_bounded_1_kuavo_msgs_imuData const*)value
                                       into:(void*)output
                                   capacity:(size_t)capacity
                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/jointBezierTrajectory fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsJointBezierTrajectory:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_jointBezierTrajectory*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsJointBezierTrajectory:(roswasmc_bounded_1_kuavo_msgs_jointBezierTrajectory const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/jointCmd fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsJointCmd:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_jointCmd*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsJointCmd:(roswasmc_bounded_1_kuavo_msgs_jointCmd const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/jointData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsJointData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_jointData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsJointData:(roswasmc_bounded_1_kuavo_msgs_jointData const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/jointMoveToRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsJointMoveToRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_jointMoveToRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsJointMoveToRequest:(roswasmc_bounded_1_kuavo_msgs_jointMoveToRequest const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/jointMoveToResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsJointMoveToResponse:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_kuavo_msgs_jointMoveToResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsJointMoveToResponse:(roswasmc_bounded_1_kuavo_msgs_jointMoveToResponse const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/kuavoModeSchedule fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsKuavoModeSchedule:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_kuavoModeSchedule*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsKuavoModeSchedule:(roswasmc_bounded_1_kuavo_msgs_kuavoModeSchedule const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lbBaseLinkPoseCmdSrvRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest:(roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lbBaseLinkPoseCmdSrvResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse:(roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lbLegControlSrvRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLbLegControlSrvRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLbLegControlSrvRequest:(roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lbLegControlSrvResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLbLegControlSrvResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLbLegControlSrvResponse:(roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/timedPoint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTimedPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_timedPoint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTimedPoint:(roswasmc_bounded_1_kuavo_msgs_timedPoint const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lbTimedOfflineTraj fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLbTimedOfflineTraj:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_lbTimedOfflineTraj*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLbTimedOfflineTraj:(roswasmc_bounded_1_kuavo_msgs_lbTimedOfflineTraj const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lbMultiTimedOfflineTrajRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lbMultiTimedOfflineTrajResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/timedSingleCmd fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTimedSingleCmd:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_timedSingleCmd*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTimedSingleCmd:(roswasmc_bounded_1_kuavo_msgs_timedSingleCmd const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lbMultiTimedPosCmdRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLbMultiTimedPosCmdRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLbMultiTimedPosCmdRequest:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lbMultiTimedPosCmdResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLbMultiTimedPosCmdResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLbMultiTimedPosCmdResponse:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lbTimedPosCmdRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLbTimedPosCmdRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLbTimedPosCmdRequest:(roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lbTimedPosCmdResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLbTimedPosCmdResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLbTimedPosCmdResponse:(roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lejuClawCommand fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLejuClawCommand:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_lejuClawCommand*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLejuClawCommand:(roswasmc_bounded_1_kuavo_msgs_lejuClawCommand const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lejuClawRecoveryRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLejuClawRecoveryRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLejuClawRecoveryRequest:(roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lejuClawRecoveryResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLejuClawRecoveryResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLejuClawRecoveryResponse:(roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lejuClawState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLejuClawState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_lejuClawState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLejuClawState:(roswasmc_bounded_1_kuavo_msgs_lejuClawState const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/lejuClawTarget fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsLejuClawTarget:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_lejuClawTarget*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsLejuClawTarget:(roswasmc_bounded_1_kuavo_msgs_lejuClawTarget const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/mpc_input fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsMpc_input:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_mpc_input*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsMpc_input:(roswasmc_bounded_1_kuavo_msgs_mpc_input const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/mpc_state fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsMpc_state:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_mpc_state*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsMpc_state:(roswasmc_bounded_1_kuavo_msgs_mpc_state const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/mpc_target_trajectories fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsMpc_target_trajectories:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_mpc_target_trajectories*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsMpc_target_trajectories:(roswasmc_bounded_1_kuavo_msgs_mpc_target_trajectories const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/picoPoseInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPicoPoseInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_picoPoseInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPicoPoseInfo:(roswasmc_bounded_1_kuavo_msgs_picoPoseInfo const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/picoPoseInfoList fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPicoPoseInfoList:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_picoPoseInfoList*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPicoPoseInfoList:(roswasmc_bounded_1_kuavo_msgs_picoPoseInfoList const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/picoPoseRetarget fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPicoPoseRetarget:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_picoPoseRetarget*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPicoPoseRetarget:(roswasmc_bounded_1_kuavo_msgs_picoPoseRetarget const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/planArmState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPlanArmState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_planArmState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPlanArmState:(roswasmc_bounded_1_kuavo_msgs_planArmState const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/planArmTrajectoryBezierCurveRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/planArmTrajectoryBezierCurveResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/planArmTrajectoryCubicSplineRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/planArmTrajectoryCubicSplineResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/playmusicRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPlaymusicRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_playmusicRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPlaymusicRequest:(roswasmc_bounded_1_kuavo_msgs_playmusicRequest const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/playmusicResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsPlaymusicResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_playmusicResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsPlaymusicResponse:(roswasmc_bounded_1_kuavo_msgs_playmusicResponse const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/recordArmHandPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRecordArmHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_recordArmHandPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRecordArmHandPose:(roswasmc_bounded_1_kuavo_msgs_recordArmHandPose const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/recordmusicRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRecordmusicRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_recordmusicRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRecordmusicRequest:(roswasmc_bounded_1_kuavo_msgs_recordmusicRequest const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/recordmusicResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRecordmusicResponse:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_kuavo_msgs_recordmusicResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRecordmusicResponse:(roswasmc_bounded_1_kuavo_msgs_recordmusicResponse const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/robotArmQVVD fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRobotArmQVVD:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_robotArmQVVD*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRobotArmQVVD:(roswasmc_bounded_1_kuavo_msgs_robotArmQVVD const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/robotBodyMatrices fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRobotBodyMatrices:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_robotBodyMatrices*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRobotBodyMatrices:(roswasmc_bounded_1_kuavo_msgs_robotBodyMatrices const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/robotHandPosition fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRobotHandPosition:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_robotHandPosition*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRobotHandPosition:(roswasmc_bounded_1_kuavo_msgs_robotHandPosition const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/robotHeadMotionData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRobotHeadMotionData:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_kuavo_msgs_robotHeadMotionData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRobotHeadMotionData:(roswasmc_bounded_1_kuavo_msgs_robotHeadMotionData const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/robotState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRobotState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_robotState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRobotState:(roswasmc_bounded_1_kuavo_msgs_robotState const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/robotSwitchPoseRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRobotSwitchPoseRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRobotSwitchPoseRequest:(roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/robotSwitchPoseResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRobotSwitchPoseResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRobotSwitchPoseResponse:(roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original std_msgs/Float64MultiArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Std_msgsFloat64MultiArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_std_msgs_Float64MultiArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Std_msgsFloat64MultiArray:(roswasmc_bounded_1_std_msgs_Float64MultiArray const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/robotWaistControl fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsRobotWaistControl:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_robotWaistControl*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsRobotWaistControl:(roswasmc_bounded_1_kuavo_msgs_robotWaistControl const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/sensorsData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSensorsData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_sensorsData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSensorsData:(roswasmc_bounded_1_kuavo_msgs_sensorsData const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setContactForceInterpParamsRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetContactForceInterpParamsRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetContactForceInterpParamsRequest:(roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setContactForceInterpParamsResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetContactForceInterpParamsResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetContactForceInterpParamsResponse:(roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setHwIntialStateRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetHwIntialStateRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_setHwIntialStateRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetHwIntialStateRequest:(roswasmc_bounded_1_kuavo_msgs_setHwIntialStateRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setHwIntialStateResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetHwIntialStateResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_setHwIntialStateResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetHwIntialStateResponse:(roswasmc_bounded_1_kuavo_msgs_setHwIntialStateResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setMmCtrlFrameRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetMmCtrlFrameRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetMmCtrlFrameRequest:(roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setMmCtrlFrameResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetMmCtrlFrameResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetMmCtrlFrameResponse:(roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setMotorEncoderRoundServiceRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest:(roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setMotorEncoderRoundServiceResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse:(roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setRuckigPlannerParamsRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetRuckigPlannerParamsRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetRuckigPlannerParamsRequest:(roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setRuckigPlannerParamsResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetRuckigPlannerParamsResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetRuckigPlannerParamsResponse:(roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setTagIdRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetTagIdRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_setTagIdRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetTagIdRequest:(roswasmc_bounded_1_kuavo_msgs_setTagIdRequest const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/setTagIdResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSetTagIdResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_setTagIdResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSetTagIdResponse:(roswasmc_bounded_1_kuavo_msgs_setTagIdResponse const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/singleStepControlRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSingleStepControlRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_singleStepControlRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSingleStepControlRequest:(roswasmc_bounded_1_kuavo_msgs_singleStepControlRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/singleStepControlResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSingleStepControlResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_singleStepControlResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSingleStepControlResponse:(roswasmc_bounded_1_kuavo_msgs_singleStepControlResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/stairAlignmentSrvRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsStairAlignmentSrvRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsStairAlignmentSrvRequest:(roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/stairAlignmentSrvResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsStairAlignmentSrvResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsStairAlignmentSrvResponse:(roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/switchControllerRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSwitchControllerRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_switchControllerRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSwitchControllerRequest:(roswasmc_bounded_1_kuavo_msgs_switchControllerRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/switchControllerResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSwitchControllerResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_switchControllerResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSwitchControllerResponse:(roswasmc_bounded_1_kuavo_msgs_switchControllerResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/switchGaitByName fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSwitchGaitByName:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_switchGaitByName*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSwitchGaitByName:(roswasmc_bounded_1_kuavo_msgs_switchGaitByName const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/switchToNextControllerRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSwitchToNextControllerRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_msgs_switchToNextControllerRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSwitchToNextControllerRequest:(roswasmc_bounded_1_kuavo_msgs_switchToNextControllerRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/switchToNextControllerResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsSwitchToNextControllerResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_kuavo_msgs_switchToNextControllerResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsSwitchToNextControllerResponse:(roswasmc_bounded_1_kuavo_msgs_switchToNextControllerResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/tagDataArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTagDataArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_tagDataArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTagDataArray:(roswasmc_bounded_1_kuavo_msgs_tagDataArray const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/twoArmHandPoseCmd fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmd:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmd*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmd:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmd const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/twoArmHandPoseFree fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseFree:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseFree*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseFree:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseFree const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/twoArmHandPoseCmdFree fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmdFree:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFree*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmdFree:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFree const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/twoArmHandPoseCmdFreeSrvRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/twoArmHandPoseCmdFreeSrvResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/twoArmHandPoseCmdSrvRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/twoArmHandPoseCmdSrvResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/xsensePoseInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsXsensePoseInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_xsensePoseInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsXsensePoseInfo:(roswasmc_bounded_1_kuavo_msgs_xsensePoseInfo const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/xsensePoseInfoList fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsXsensePoseInfoList:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_xsensePoseInfoList*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsXsensePoseInfoList:(roswasmc_bounded_1_kuavo_msgs_xsensePoseInfoList const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/xsensePoseRetarget fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsXsensePoseRetarget:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_xsensePoseRetarget*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsXsensePoseRetarget:(roswasmc_bounded_1_kuavo_msgs_xsensePoseRetarget const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/yoloOutputData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsYoloOutputData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_yoloOutputData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsYoloOutputData:(roswasmc_bounded_1_kuavo_msgs_yoloOutputData const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original kuavo_msgs/yoloDetection fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_msgsYoloDetection:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_yoloDetection*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_msgsYoloDetection:(roswasmc_bounded_1_kuavo_msgs_yoloDetection const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original kuavo_pico_gmr/AmpJoyRouteRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_pico_gmrAmpJoyRouteRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_pico_gmrAmpJoyRouteRequest:(roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_pico_gmr/AmpJoyRouteResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_pico_gmrAmpJoyRouteResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_pico_gmrAmpJoyRouteResponse:(roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/armTargetPoses fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_ros_interfacesArmTargetPoses:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_ros_interfaces_armTargetPoses*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesArmTargetPoses:(roswasmc_bounded_1_kuavo_ros_interfaces_armTargetPoses const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/bezierCurveCubicPoint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_ros_interfacesBezierCurveCubicPoint:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_kuavo_ros_interfaces_bezierCurveCubicPoint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesBezierCurveCubicPoint:(roswasmc_bounded_1_kuavo_ros_interfaces_bezierCurveCubicPoint const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/jointBezierTrajectory fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_ros_interfacesJointBezierTrajectory:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_kuavo_ros_interfaces_jointBezierTrajectory*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesJointBezierTrajectory:(roswasmc_bounded_1_kuavo_ros_interfaces_jointBezierTrajectory const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/ocs2ChangeArmCtrlModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest:(roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/ocs2ChangeArmCtrlModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse:(roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/planArmState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_ros_interfacesPlanArmState:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_ros_interfaces_planArmState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesPlanArmState:(roswasmc_bounded_1_kuavo_ros_interfaces_planArmState const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/planArmTrajectoryBezierCurveRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest:(void const*)bytes
                                                                           length:(size_t)length
                                                                             into:(roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveRequest*)
                                                                                      output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest:
                    (roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveRequest const*)value
                                                                             into:(void*)output
                                                                         capacity:(size_t)capacity
                                                                           length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/planArmTrajectoryBezierCurveResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)
    decodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse:
                    (roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveResponse const*)value
                                                                              into:(void*)output
                                                                          capacity:(size_t)capacity
                                                                            length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/robotHandPosition fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_ros_interfacesRobotHandPosition:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_ros_interfaces_robotHandPosition*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesRobotHandPosition:(roswasmc_bounded_1_kuavo_ros_interfaces_robotHandPosition const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/robotHeadMotionData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_ros_interfacesRobotHeadMotionData:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_ros_interfaces_robotHeadMotionData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesRobotHeadMotionData:(roswasmc_bounded_1_kuavo_ros_interfaces_robotHeadMotionData const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/stopPlanArmTrajectoryRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest:(roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original kuavo_ros_interfaces/stopPlanArmTrajectoryResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse:(roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/BMS fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsBMS:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_leju_mobile_base_msgs_BMS*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsBMS:(roswasmc_bounded_1_leju_mobile_base_msgs_BMS const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/BaseCmdVelStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsBaseCmdVelStatus:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseCmdVelStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsBaseCmdVelStatus:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseCmdVelStatus const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/MoveToTargetOptions fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsMoveToTargetOptions:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetOptions*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsMoveToTargetOptions:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetOptions const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/BaseMoveRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsBaseMoveRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsBaseMoveRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/BaseMoveResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsBaseMoveResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsBaseMoveResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/Battery fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsBattery:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_leju_mobile_base_msgs_Battery*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsBattery:(roswasmc_bounded_1_leju_mobile_base_msgs_Battery const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/CheckArrivedRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsCheckArrivedRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsCheckArrivedRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/CheckArrivedResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsCheckArrivedResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsCheckArrivedResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/ControlLaserScanRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsControlLaserScanRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsControlLaserScanRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/ControlLaserScanResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsControlLaserScanResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsControlLaserScanResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/DispatchMoveRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsDispatchMoveRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsDispatchMoveRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/DispatchMoveResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsDispatchMoveResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsDispatchMoveResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/ExecTaskRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsExecTaskRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsExecTaskRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/ExecTaskResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsExecTaskResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsExecTaskResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/GetGlobalOdometerRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsGetGlobalOdometerRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsGetGlobalOdometerRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/GetGlobalOdometerResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsGetGlobalOdometerResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsGetGlobalOdometerResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/GetLaserScanListRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsGetLaserScanListRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsGetLaserScanListRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/GetLaserScanListResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsGetLaserScanListResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsGetLaserScanListResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/HardwareStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsHardwareStatus:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_leju_mobile_base_msgs_HardwareStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsHardwareStatus:(roswasmc_bounded_1_leju_mobile_base_msgs_HardwareStatus const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/Information fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsInformation:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_leju_mobile_base_msgs_Information*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsInformation:(roswasmc_bounded_1_leju_mobile_base_msgs_Information const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/LED fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsLED:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_leju_mobile_base_msgs_LED*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsLED:(roswasmc_bounded_1_leju_mobile_base_msgs_LED const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/LiftControl3Feedback fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsLiftControl3Feedback:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Feedback*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsLiftControl3Feedback:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Feedback const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/LiftControl3Goal fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsLiftControl3Goal:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Goal*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsLiftControl3Goal:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Goal const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/LiftControl3Result fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsLiftControl3Result:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Result*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsLiftControl3Result:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Result const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/LiftStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsLiftStatus:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsLiftStatus:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftStatus const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/MoveBaseActionGoal fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsMoveBaseActionGoal:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveBaseActionGoal*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsMoveBaseActionGoal:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveBaseActionGoal const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/MoveToTargetRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsMoveToTargetRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsMoveToTargetRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/MoveToTargetResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsMoveToTargetResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsMoveToTargetResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/NavigationModeGoal fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsNavigationModeGoal:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_leju_mobile_base_msgs_NavigationModeGoal*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsNavigationModeGoal:(roswasmc_bounded_1_leju_mobile_base_msgs_NavigationModeGoal const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/Parameter fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsParameter:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_leju_mobile_base_msgs_Parameter*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsParameter:(roswasmc_bounded_1_leju_mobile_base_msgs_Parameter const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/ResetTemporaryOdometerRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest:(void const*)bytes
                                                                      length:(size_t)length
                                                                        into:(roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest:
                    (roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerRequest const*)value
                                                                        into:(void*)output
                                                                    capacity:(size_t)capacity
                                                                      length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/ResetTemporaryOdometerResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:(roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse:
                    (roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerResponse const*)value
                                                                         into:(void*)output
                                                                     capacity:(size_t)capacity
                                                                       length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/RobotStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsRobotStatus:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_leju_mobile_base_msgs_RobotStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsRobotStatus:(roswasmc_bounded_1_leju_mobile_base_msgs_RobotStatus const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/SetDispatchModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsSetDispatchModeRequest:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsSetDispatchModeRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeRequest const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/SetDispatchModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsSetDispatchModeResponse:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsSetDispatchModeResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeResponse const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/SetMapServerRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsSetMapServerRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsSetMapServerRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/SetMapServerResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsSetMapServerResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsSetMapServerResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/StartLocalizationRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsStartLocalizationRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsStartLocalizationRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/StartLocalizationResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsStartLocalizationResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsStartLocalizationResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/StepControlGoal fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsStepControlGoal:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_leju_mobile_base_msgs_StepControlGoal*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsStepControlGoal:(roswasmc_bounded_1_leju_mobile_base_msgs_StepControlGoal const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/SyncCostmapRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsSyncCostmapRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsSyncCostmapRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/SyncCostmapResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsSyncCostmapResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsSyncCostmapResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original leju_mobile_base_msgs/TaskDetailStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Leju_mobile_base_msgsTaskDetailStatus:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_leju_mobile_base_msgs_TaskDetailStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Leju_mobile_base_msgsTaskDetailStatus:(roswasmc_bounded_1_leju_mobile_base_msgs_TaskDetailStatus const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original motioncapture/ForcePlateData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1MotioncaptureForcePlateData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_motioncapture_ForcePlateData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1MotioncaptureForcePlateData:(roswasmc_bounded_1_motioncapture_ForcePlateData const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original network_monitor/NetworkPingRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Network_monitorNetworkPingRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_network_monitor_NetworkPingRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Network_monitorNetworkPingRequest:(roswasmc_bounded_1_network_monitor_NetworkPingRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original network_monitor/NetworkPingResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Network_monitorNetworkPingResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_network_monitor_NetworkPingResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Network_monitorNetworkPingResponse:(roswasmc_bounded_1_network_monitor_NetworkPingResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original network_monitor/NetworkPingMsg fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Network_monitorNetworkPingMsg:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_network_monitor_NetworkPingMsg*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Network_monitorNetworkPingMsg:(roswasmc_bounded_1_network_monitor_NetworkPingMsg const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original nimservos_controller/motor_cmd fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nimservos_controllerMotor_cmd:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_nimservos_controller_motor_cmd*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nimservos_controllerMotor_cmd:(roswasmc_bounded_1_nimservos_controller_motor_cmd const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original nimservos_controller/motor_state fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nimservos_controllerMotor_state:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nimservos_controller_motor_state*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nimservos_controllerMotor_state:(roswasmc_bounded_1_nimservos_controller_motor_state const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original nlink_parser/IotFrame0Node fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserIotFrame0Node:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_IotFrame0Node*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserIotFrame0Node:(roswasmc_bounded_1_nlink_parser_IotFrame0Node const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original nlink_parser/IotFrame0 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserIotFrame0:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_IotFrame0*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserIotFrame0:(roswasmc_bounded_1_nlink_parser_IotFrame0 const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackTag fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackTag:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackTag*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackTag:(roswasmc_bounded_1_nlink_parser_LinktrackTag const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackAnchorframe0 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackAnchorframe0:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_nlink_parser_LinktrackAnchorframe0*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackAnchorframe0:(roswasmc_bounded_1_nlink_parser_LinktrackAnchorframe0 const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackAoaNode0 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackAoaNode0:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_nlink_parser_LinktrackAoaNode0*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackAoaNode0:(roswasmc_bounded_1_nlink_parser_LinktrackAoaNode0 const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackAoaNodeframe0 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackAoaNodeframe0:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_nlink_parser_LinktrackAoaNodeframe0*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackAoaNodeframe0:(roswasmc_bounded_1_nlink_parser_LinktrackAoaNodeframe0 const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNode0 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNode0:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackNode0*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNode0:(roswasmc_bounded_1_nlink_parser_LinktrackNode0 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNode1 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNode1:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackNode1*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNode1:(roswasmc_bounded_1_nlink_parser_LinktrackNode1 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNode2 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNode2:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackNode2*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNode2:(roswasmc_bounded_1_nlink_parser_LinktrackNode2 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNode4Anchor fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNode4Anchor:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_nlink_parser_LinktrackNode4Anchor*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNode4Anchor:(roswasmc_bounded_1_nlink_parser_LinktrackNode4Anchor const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNode4Tag fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNode4Tag:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_nlink_parser_LinktrackNode4Tag*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNode4Tag:(roswasmc_bounded_1_nlink_parser_LinktrackNode4Tag const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNode5 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNode5:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackNode5*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNode5:(roswasmc_bounded_1_nlink_parser_LinktrackNode5 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNode6 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNode6:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackNode6*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNode6:(roswasmc_bounded_1_nlink_parser_LinktrackNode6 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNodeframe0 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe0:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe0*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe0:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe0 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNodeframe1 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe1:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe1*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe1:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe1 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNodeframe2 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe2:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe2*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe2:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe2 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNodeframe3 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe3:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe3*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe3:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe3 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNodeframe4 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe4:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe4*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe4:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe4 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNodeframe5 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe5:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe5*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe5:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe5 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackNodeframe6 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe6:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe6*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe6:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe6 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original nlink_parser/LinktrackTagframe0 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserLinktrackTagframe0:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_nlink_parser_LinktrackTagframe0*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserLinktrackTagframe0:(roswasmc_bounded_1_nlink_parser_LinktrackTagframe0 const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original nlink_parser/TofsenseFrame0 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserTofsenseFrame0:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_TofsenseFrame0*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserTofsenseFrame0:(roswasmc_bounded_1_nlink_parser_TofsenseFrame0 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original nlink_parser/TofsenseCascade fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserTofsenseCascade:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_TofsenseCascade*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserTofsenseCascade:(roswasmc_bounded_1_nlink_parser_TofsenseCascade const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original nlink_parser/TofsenseMFrame0Pixel fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserTofsenseMFrame0Pixel:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_nlink_parser_TofsenseMFrame0Pixel*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserTofsenseMFrame0Pixel:(roswasmc_bounded_1_nlink_parser_TofsenseMFrame0Pixel const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original nlink_parser/TofsenseMFrame0 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Nlink_parserTofsenseMFrame0:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_TofsenseMFrame0*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Nlink_parserTofsenseMFrame0:(roswasmc_bounded_1_nlink_parser_TofsenseMFrame0 const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original noitom_hi5_hand_udp_python/JoySticks fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonJoySticks:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_JoySticks*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonJoySticks:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_JoySticks const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original noitom_hi5_hand_udp_python/PoseInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonPoseInfo:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonPoseInfo:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfo const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original noitom_hi5_hand_udp_python/PoseInfoList fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonPoseInfoList:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfoList*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonPoseInfoList:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfoList const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original noitom_hi5_hand_udp_python/QuaternionArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonQuaternionArray:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_QuaternionArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonQuaternionArray:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_QuaternionArray const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original noitom_hi5_hand_udp_python/Vector4 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonVector4:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_Vector4*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonVector4:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_Vector4 const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original noitom_hi5_hand_udp_python/handRotation fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonHandRotation:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotation*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonHandRotation:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotation const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original noitom_hi5_hand_udp_python/handRotationEular fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonHandRotationEular:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotationEular*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonHandRotationEular:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotationEular const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/constraint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsConstraint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_constraint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsConstraint:(roswasmc_bounded_1_ocs2_msgs_constraint const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/controller_data fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsController_data:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_controller_data*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsController_data:(roswasmc_bounded_1_ocs2_msgs_controller_data const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/lagrangian_metrics fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsLagrangian_metrics:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_lagrangian_metrics*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsLagrangian_metrics:(roswasmc_bounded_1_ocs2_msgs_lagrangian_metrics const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/mode_schedule fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsMode_schedule:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_mode_schedule*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsMode_schedule:(roswasmc_bounded_1_ocs2_msgs_mode_schedule const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/mpc_state fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsMpc_state:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_mpc_state*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsMpc_state:(roswasmc_bounded_1_ocs2_msgs_mpc_state const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/mpc_input fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsMpc_input:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_mpc_input*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsMpc_input:(roswasmc_bounded_1_ocs2_msgs_mpc_input const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/mpc_observation fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsMpc_observation:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_mpc_observation*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsMpc_observation:(roswasmc_bounded_1_ocs2_msgs_mpc_observation const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/mpc_target_trajectories fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsMpc_target_trajectories:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_ocs2_msgs_mpc_target_trajectories*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsMpc_target_trajectories:(roswasmc_bounded_1_ocs2_msgs_mpc_target_trajectories const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/mpc_performance_indices fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsMpc_performance_indices:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_ocs2_msgs_mpc_performance_indices*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsMpc_performance_indices:(roswasmc_bounded_1_ocs2_msgs_mpc_performance_indices const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/mpc_flattened_controller fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsMpc_flattened_controller:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_ocs2_msgs_mpc_flattened_controller*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsMpc_flattened_controller:(roswasmc_bounded_1_ocs2_msgs_mpc_flattened_controller const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/mpc_solver_data fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsMpc_solver_data:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_mpc_solver_data*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsMpc_solver_data:(roswasmc_bounded_1_ocs2_msgs_mpc_solver_data const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/multiplier fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsMultiplier:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_multiplier*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsMultiplier:(roswasmc_bounded_1_ocs2_msgs_multiplier const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/pause_resumeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsPause_resumeRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_pause_resumeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsPause_resumeRequest:(roswasmc_bounded_1_ocs2_msgs_pause_resumeRequest const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/pause_resumeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsPause_resumeResponse:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_ocs2_msgs_pause_resumeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsPause_resumeResponse:(roswasmc_bounded_1_ocs2_msgs_pause_resumeResponse const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/resetRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsResetRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_resetRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsResetRequest:(roswasmc_bounded_1_ocs2_msgs_resetRequest const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original ocs2_msgs/resetResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_msgsResetResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_resetResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_msgsResetResponse:(roswasmc_bounded_1_ocs2_msgs_resetResponse const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original ocs2_switched_model_msgs/gait fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_switched_model_msgsGait:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_switched_model_msgs_gait*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_switched_model_msgsGait:(roswasmc_bounded_1_ocs2_switched_model_msgs_gait const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original ocs2_switched_model_msgs/gait_sequence fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_switched_model_msgsGait_sequence:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_ocs2_switched_model_msgs_gait_sequence*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_switched_model_msgsGait_sequence:(roswasmc_bounded_1_ocs2_switched_model_msgs_gait_sequence const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original ocs2_switched_model_msgs/scheduled_gait_sequence fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_switched_model_msgsScheduled_gait_sequence:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_ocs2_switched_model_msgs_scheduled_gait_sequence*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_switched_model_msgsScheduled_gait_sequence:(roswasmc_bounded_1_ocs2_switched_model_msgs_scheduled_gait_sequence const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original ocs2_switched_model_msgs/trajectory_requestRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_switched_model_msgsTrajectory_requestRequest:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_switched_model_msgsTrajectory_requestRequest:(roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestRequest const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length;

/** @brief Decode all original ocs2_switched_model_msgs/trajectory_requestResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Ocs2_switched_model_msgsTrajectory_requestResponse:(void const*)bytes
                                                                      length:(size_t)length
                                                                        into:(roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Ocs2_switched_model_msgsTrajectory_requestResponse:
                    (roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestResponse const*)value
                                                                        into:(void*)output
                                                                    capacity:(size_t)capacity
                                                                      length:(size_t*)length;

/** @brief Decode all original sensor_msgs/RegionOfInterest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Sensor_msgsRegionOfInterest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_RegionOfInterest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Sensor_msgsRegionOfInterest:(roswasmc_bounded_1_sensor_msgs_RegionOfInterest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original sensor_msgs/CameraInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Sensor_msgsCameraInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_CameraInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Sensor_msgsCameraInfo:(roswasmc_bounded_1_sensor_msgs_CameraInfo const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original robot_calibration_msgs/CameraParameter fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_calibration_msgsCameraParameter:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_robot_calibration_msgs_CameraParameter*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_calibration_msgsCameraParameter:(roswasmc_bounded_1_robot_calibration_msgs_CameraParameter const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original robot_calibration_msgs/ExtendedCameraInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_calibration_msgsExtendedCameraInfo:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_robot_calibration_msgs_ExtendedCameraInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_calibration_msgsExtendedCameraInfo:(roswasmc_bounded_1_robot_calibration_msgs_ExtendedCameraInfo const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original sensor_msgs/PointField fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Sensor_msgsPointField:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_PointField*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Sensor_msgsPointField:(roswasmc_bounded_1_sensor_msgs_PointField const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original sensor_msgs/PointCloud2 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Sensor_msgsPointCloud2:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_PointCloud2*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Sensor_msgsPointCloud2:(roswasmc_bounded_1_sensor_msgs_PointCloud2 const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original sensor_msgs/Image fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Sensor_msgsImage:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_Image*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Sensor_msgsImage:(roswasmc_bounded_1_sensor_msgs_Image const*)value
                                      into:(void*)output
                                  capacity:(size_t)capacity
                                    length:(size_t*)length;

/** @brief Decode all original robot_calibration_msgs/Observation fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_calibration_msgsObservation:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_robot_calibration_msgs_Observation*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_calibration_msgsObservation:(roswasmc_bounded_1_robot_calibration_msgs_Observation const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original robot_calibration_msgs/CalibrationData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_calibration_msgsCalibrationData:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_robot_calibration_msgs_CalibrationData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_calibration_msgsCalibrationData:(roswasmc_bounded_1_robot_calibration_msgs_CalibrationData const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original robot_calibration_msgs/CaptureConfig fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_calibration_msgsCaptureConfig:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_robot_calibration_msgs_CaptureConfig*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_calibration_msgsCaptureConfig:(roswasmc_bounded_1_robot_calibration_msgs_CaptureConfig const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original robot_calibration_msgs/GripperLedCommandGoal fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_calibration_msgsGripperLedCommandGoal:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandGoal*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_calibration_msgsGripperLedCommandGoal:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandGoal const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original robot_calibration_msgs/GripperLedCommandResult fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_calibration_msgsGripperLedCommandResult:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_calibration_msgsGripperLedCommandResult:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original robot_calibration_msgs/GripperLedCommandFeedback fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_calibration_msgsGripperLedCommandFeedback:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_calibration_msgsGripperLedCommandFeedback:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original robot_localization/FromLLRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationFromLLRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_robot_localization_FromLLRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationFromLLRequest:(roswasmc_bounded_1_robot_localization_FromLLRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original robot_localization/FromLLResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationFromLLResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_robot_localization_FromLLResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationFromLLResponse:(roswasmc_bounded_1_robot_localization_FromLLResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original robot_localization/GetStateRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationGetStateRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_robot_localization_GetStateRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationGetStateRequest:(roswasmc_bounded_1_robot_localization_GetStateRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original robot_localization/GetStateResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationGetStateResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_robot_localization_GetStateResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationGetStateResponse:(roswasmc_bounded_1_robot_localization_GetStateResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original robot_localization/SetDatumRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationSetDatumRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_robot_localization_SetDatumRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationSetDatumRequest:(roswasmc_bounded_1_robot_localization_SetDatumRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original robot_localization/SetDatumResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationSetDatumResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_robot_localization_SetDatumResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationSetDatumResponse:(roswasmc_bounded_1_robot_localization_SetDatumResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original robot_localization/SetPoseRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationSetPoseRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_robot_localization_SetPoseRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationSetPoseRequest:(roswasmc_bounded_1_robot_localization_SetPoseRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original robot_localization/SetPoseResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationSetPoseResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_robot_localization_SetPoseResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationSetPoseResponse:(roswasmc_bounded_1_robot_localization_SetPoseResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original robot_localization/SetUTMZoneRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationSetUTMZoneRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_robot_localization_SetUTMZoneRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationSetUTMZoneRequest:(roswasmc_bounded_1_robot_localization_SetUTMZoneRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original robot_localization/SetUTMZoneResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationSetUTMZoneResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_robot_localization_SetUTMZoneResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationSetUTMZoneResponse:(roswasmc_bounded_1_robot_localization_SetUTMZoneResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original robot_localization/ToLLRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationToLLRequest:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_robot_localization_ToLLRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationToLLRequest:(roswasmc_bounded_1_robot_localization_ToLLRequest const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original robot_localization/ToLLResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationToLLResponse:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_robot_localization_ToLLResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationToLLResponse:(roswasmc_bounded_1_robot_localization_ToLLResponse const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original robot_localization/ToggleFilterProcessingRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationToggleFilterProcessingRequest:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_robot_localization_ToggleFilterProcessingRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationToggleFilterProcessingRequest:(roswasmc_bounded_1_robot_localization_ToggleFilterProcessingRequest const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original robot_localization/ToggleFilterProcessingResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Robot_localizationToggleFilterProcessingResponse:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_robot_localization_ToggleFilterProcessingResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Robot_localizationToggleFilterProcessingResponse:(roswasmc_bounded_1_robot_localization_ToggleFilterProcessingResponse const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original taiji_trigger_node/PerformTaijiRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Taiji_trigger_nodePerformTaijiRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_taiji_trigger_node_PerformTaijiRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Taiji_trigger_nodePerformTaijiRequest:(roswasmc_bounded_1_taiji_trigger_node_PerformTaijiRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original taiji_trigger_node/PerformTaijiResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Taiji_trigger_nodePerformTaijiResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_taiji_trigger_node_PerformTaijiResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Taiji_trigger_nodePerformTaijiResponse:(roswasmc_bounded_1_taiji_trigger_node_PerformTaijiResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original user_pkg/piddebug fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1User_pkgPiddebug:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_user_pkg_piddebug*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1User_pkgPiddebug:(roswasmc_bounded_1_user_pkg_piddebug const*)value
                                      into:(void*)output
                                  capacity:(size_t)capacity
                                    length:(size_t*)length;

/** @brief Decode all original user_pkg/uwbdebug fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1User_pkgUwbdebug:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_user_pkg_uwbdebug*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1User_pkgUwbdebug:(roswasmc_bounded_1_user_pkg_uwbdebug const*)value
                                      into:(void*)output
                                  capacity:(size_t)capacity
                                    length:(size_t*)length;

/** @brief Decode all original wiimote/IrSourceInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1WiimoteIrSourceInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_wiimote_IrSourceInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1WiimoteIrSourceInfo:(roswasmc_bounded_1_wiimote_IrSourceInfo const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original wiimote/State fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1WiimoteState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_wiimote_State*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1WiimoteState:(roswasmc_bounded_1_wiimote_State const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length;

/** @brief Decode all original wiimote/TimedSwitch fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1WiimoteTimedSwitch:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_wiimote_TimedSwitch*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1WiimoteTimedSwitch:(roswasmc_bounded_1_wiimote_TimedSwitch const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length;

@end
