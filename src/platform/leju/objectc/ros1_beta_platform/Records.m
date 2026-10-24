/** @file Records.m
 * @brief Implement genuine Objective-C full-record codec entry points.
 * @details Class methods delegate only canonical byte conversion to the
 * exact C interop catalog. No source-language application is replaced by C.
 */
#import <leju/objectc/ros1_beta_platform/Records.h>

@implementation LejuRos1BetaPlatformRecords

+ (unsigned int)decodeRos1Time:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_time*)output
{
    return roswasmc_bounded_1_time_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Time:(roswasmc_bounded_1_time const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_time_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Std_msgsHeader:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_std_msgs_Header*)output
{
    return roswasmc_bounded_1_std_msgs_Header_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Std_msgsHeader:(roswasmc_bounded_1_std_msgs_Header const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_std_msgs_Header_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geometry_msgsPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Point*)output
{
    return roswasmc_bounded_1_geometry_msgs_Point_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geometry_msgsPoint:(roswasmc_bounded_1_geometry_msgs_Point const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Point_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geometry_msgsQuaternion:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Quaternion*)output
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geometry_msgsQuaternion:(roswasmc_bounded_1_geometry_msgs_Quaternion const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geometry_msgsPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Pose*)output
{
    return roswasmc_bounded_1_geometry_msgs_Pose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geometry_msgsPose:(roswasmc_bounded_1_geometry_msgs_Pose const*)value
                                       into:(void*)output
                                   capacity:(size_t)capacity
                                     length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Pose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geometry_msgsPoseWithCovariance:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance*)output
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geometry_msgsPoseWithCovariance:(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Aruco_msgsMarker:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_aruco_msgs_Marker*)output
{
    return roswasmc_bounded_1_aruco_msgs_Marker_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Aruco_msgsMarker:(roswasmc_bounded_1_aruco_msgs_Marker const*)value
                                      into:(void*)output
                                  capacity:(size_t)capacity
                                    length:(size_t*)length
{
    return roswasmc_bounded_1_aruco_msgs_Marker_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Aruco_msgsMarkerArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_aruco_msgs_MarkerArray*)output
{
    return roswasmc_bounded_1_aruco_msgs_MarkerArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Aruco_msgsMarkerArray:(roswasmc_bounded_1_aruco_msgs_MarkerArray const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_aruco_msgs_MarkerArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsCheckStartingPoseRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseRequest*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsCheckStartingPoseRequest:(roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geometry_msgsPoseStamped:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_PoseStamped*)output
{
    return roswasmc_bounded_1_geometry_msgs_PoseStamped_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geometry_msgsPoseStamped:(roswasmc_bounded_1_geometry_msgs_PoseStamped const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_PoseStamped_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsTargetPoseList:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_easy_handeye_msgs_TargetPoseList*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_TargetPoseList_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsTargetPoseList:(roswasmc_bounded_1_easy_handeye_msgs_TargetPoseList const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_TargetPoseList_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsCheckStartingPoseResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseResponse*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsCheckStartingPoseResponse:(roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsComputeCalibrationRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationRequest*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsComputeCalibrationRequest:(roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geometry_msgsVector3:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Vector3*)output
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geometry_msgsVector3:(roswasmc_bounded_1_geometry_msgs_Vector3 const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geometry_msgsTransform:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Transform*)output
{
    return roswasmc_bounded_1_geometry_msgs_Transform_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geometry_msgsTransform:(roswasmc_bounded_1_geometry_msgs_Transform const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Transform_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geometry_msgsTransformStamped:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_TransformStamped*)output
{
    return roswasmc_bounded_1_geometry_msgs_TransformStamped_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geometry_msgsTransformStamped:(roswasmc_bounded_1_geometry_msgs_TransformStamped const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_TransformStamped_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsHandeyeCalibration:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_easy_handeye_msgs_HandeyeCalibration*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_HandeyeCalibration_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsHandeyeCalibration:(roswasmc_bounded_1_easy_handeye_msgs_HandeyeCalibration const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_HandeyeCalibration_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsComputeCalibrationResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationResponse*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsComputeCalibrationResponse:(roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsEnumerateTargetPosesRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesRequest*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsEnumerateTargetPosesRequest:(roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsEnumerateTargetPosesResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesResponse*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsEnumerateTargetPosesResponse:(roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsExecutePlanRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanRequest*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsExecutePlanRequest:(roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsExecutePlanResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanResponse*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsExecutePlanResponse:(roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsListAlgorithmsRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsRequest*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsListAlgorithmsRequest:(roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsListAlgorithmsResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsResponse*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsListAlgorithmsResponse:(roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseRequest*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest:(roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseResponse*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse:(roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsRemoveSampleRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleRequest*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsRemoveSampleRequest:(roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsSampleList:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_easy_handeye_msgs_SampleList*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_SampleList_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsSampleList:(roswasmc_bounded_1_easy_handeye_msgs_SampleList const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_SampleList_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsRemoveSampleResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleResponse*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsRemoveSampleResponse:(roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsSelectTargetPoseRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseRequest*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsSelectTargetPoseRequest:(roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsSelectTargetPoseResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseResponse*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsSelectTargetPoseResponse:(roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsSetAlgorithmRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmRequest*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsSetAlgorithmRequest:(roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsSetAlgorithmResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmResponse*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsSetAlgorithmResponse:(roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsTakeSampleRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_easy_handeye_msgs_TakeSampleRequest*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_TakeSampleRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsTakeSampleRequest:(roswasmc_bounded_1_easy_handeye_msgs_TakeSampleRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_TakeSampleRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Easy_handeye_msgsTakeSampleResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_easy_handeye_msgs_TakeSampleResponse*)output
{
    return roswasmc_bounded_1_easy_handeye_msgs_TakeSampleResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Easy_handeye_msgsTakeSampleResponse:(roswasmc_bounded_1_easy_handeye_msgs_TakeSampleResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_easy_handeye_msgs_TakeSampleResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geographic_msgsGeoPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geographic_msgs_GeoPoint*)output
{
    return roswasmc_bounded_1_geographic_msgs_GeoPoint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geographic_msgsGeoPoint:(roswasmc_bounded_1_geographic_msgs_GeoPoint const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_1_geographic_msgs_GeoPoint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geographic_msgsGeoPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geographic_msgs_GeoPose*)output
{
    return roswasmc_bounded_1_geographic_msgs_GeoPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geographic_msgsGeoPose:(roswasmc_bounded_1_geographic_msgs_GeoPose const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_geographic_msgs_GeoPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geometry_msgsPointStamped:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_PointStamped*)output
{
    return roswasmc_bounded_1_geometry_msgs_PointStamped_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geometry_msgsPointStamped:(roswasmc_bounded_1_geometry_msgs_PointStamped const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_PointStamped_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geometry_msgsPoseWithCovarianceStamped:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped*)output
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geometry_msgsPoseWithCovarianceStamped:(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Geometry_msgsTwist:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_geometry_msgs_Twist*)output
{
    return roswasmc_bounded_1_geometry_msgs_Twist_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Geometry_msgsTwist:(roswasmc_bounded_1_geometry_msgs_Twist const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Twist_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Grid_map_msgsGetGridMapRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_grid_map_msgs_GetGridMapRequest*)output
{
    return roswasmc_bounded_1_grid_map_msgs_GetGridMapRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Grid_map_msgsGetGridMapRequest:(roswasmc_bounded_1_grid_map_msgs_GetGridMapRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_grid_map_msgs_GetGridMapRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Grid_map_msgsGridMapInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_grid_map_msgs_GridMapInfo*)output
{
    return roswasmc_bounded_1_grid_map_msgs_GridMapInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Grid_map_msgsGridMapInfo:(roswasmc_bounded_1_grid_map_msgs_GridMapInfo const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_grid_map_msgs_GridMapInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Std_msgsMultiArrayDimension:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_std_msgs_MultiArrayDimension*)output
{
    return roswasmc_bounded_1_std_msgs_MultiArrayDimension_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Std_msgsMultiArrayDimension:(roswasmc_bounded_1_std_msgs_MultiArrayDimension const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_std_msgs_MultiArrayDimension_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Std_msgsMultiArrayLayout:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_std_msgs_MultiArrayLayout*)output
{
    return roswasmc_bounded_1_std_msgs_MultiArrayLayout_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Std_msgsMultiArrayLayout:(roswasmc_bounded_1_std_msgs_MultiArrayLayout const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_std_msgs_MultiArrayLayout_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Std_msgsFloat32MultiArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_std_msgs_Float32MultiArray*)output
{
    return roswasmc_bounded_1_std_msgs_Float32MultiArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Std_msgsFloat32MultiArray:(roswasmc_bounded_1_std_msgs_Float32MultiArray const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_std_msgs_Float32MultiArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Grid_map_msgsGridMap:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_grid_map_msgs_GridMap*)output
{
    return roswasmc_bounded_1_grid_map_msgs_GridMap_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Grid_map_msgsGridMap:(roswasmc_bounded_1_grid_map_msgs_GridMap const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length
{
    return roswasmc_bounded_1_grid_map_msgs_GridMap_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Grid_map_msgsGetGridMapResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_grid_map_msgs_GetGridMapResponse*)output
{
    return roswasmc_bounded_1_grid_map_msgs_GetGridMapResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Grid_map_msgsGetGridMapResponse:(roswasmc_bounded_1_grid_map_msgs_GetGridMapResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_grid_map_msgs_GetGridMapResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Grid_map_msgsGetGridMapInfoRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoRequest*)output
{
    return roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Grid_map_msgsGetGridMapInfoRequest:(roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Grid_map_msgsGetGridMapInfoResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoResponse*)output
{
    return roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Grid_map_msgsGetGridMapInfoResponse:(roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Grid_map_msgsProcessFileRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_grid_map_msgs_ProcessFileRequest*)output
{
    return roswasmc_bounded_1_grid_map_msgs_ProcessFileRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Grid_map_msgsProcessFileRequest:(roswasmc_bounded_1_grid_map_msgs_ProcessFileRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_grid_map_msgs_ProcessFileRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Grid_map_msgsProcessFileResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_grid_map_msgs_ProcessFileResponse*)output
{
    return roswasmc_bounded_1_grid_map_msgs_ProcessFileResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Grid_map_msgsProcessFileResponse:(roswasmc_bounded_1_grid_map_msgs_ProcessFileResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_grid_map_msgs_ProcessFileResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Grid_map_msgsSetGridMapRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_grid_map_msgs_SetGridMapRequest*)output
{
    return roswasmc_bounded_1_grid_map_msgs_SetGridMapRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Grid_map_msgsSetGridMapRequest:(roswasmc_bounded_1_grid_map_msgs_SetGridMapRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_grid_map_msgs_SetGridMapRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Grid_map_msgsSetGridMapResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_grid_map_msgs_SetGridMapResponse*)output
{
    return roswasmc_bounded_1_grid_map_msgs_SetGridMapResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Grid_map_msgsSetGridMapResponse:(roswasmc_bounded_1_grid_map_msgs_SetGridMapResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_grid_map_msgs_SetGridMapResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeECJointMotordata:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_h12pro_controller_node_ECJointMotordata*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_ECJointMotordata_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeECJointMotordata:(roswasmc_bounded_1_h12pro_controller_node_ECJointMotordata const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_ECJointMotordata_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeExecuteArmActionRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionRequest*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeExecuteArmActionRequest:(roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeExecuteArmActionResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionResponse*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeExecuteArmActionResponse:(roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeRobotActionState:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_h12pro_controller_node_RobotActionState*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_RobotActionState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeRobotActionState:(roswasmc_bounded_1_h12pro_controller_node_RobotActionState const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_RobotActionState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeUpdateH12CustomizeConfig:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_h12pro_controller_node_UpdateH12CustomizeConfig*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_UpdateH12CustomizeConfig_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeUpdateH12CustomizeConfig:(roswasmc_bounded_1_h12pro_controller_node_UpdateH12CustomizeConfig const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_UpdateH12CustomizeConfig_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeRequest*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest:(roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeResponse*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse:(roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeChangeArmCtrlModeRequest:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeRequest*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeChangeArmCtrlModeRequest:(roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeRequest const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeChangeArmCtrlModeResponse:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeResponse*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeChangeArmCtrlModeResponse:(roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeResponse const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)
    decodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameRequest*)
                                                                              output
{
    return roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest:
                    (roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameRequest const*)value
                                                                                 into:(void*)output
                                                                             capacity:(size_t)capacity
                                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameRequest_encode(value, output, capacity, length);
}

+ (unsigned int)
    decodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameResponse*)
                                                                               output
{
    return roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse:
                    (roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameResponse const*)value
                                                                                  into:(void*)output
                                                                              capacity:(size_t)capacity
                                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeH12proRemoteControllerChannel:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:(roswasmc_bounded_1_h12pro_controller_node_h12proRemoteControllerChannel*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_h12proRemoteControllerChannel_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeH12proRemoteControllerChannel:
                    (roswasmc_bounded_1_h12pro_controller_node_h12proRemoteControllerChannel const*)value
                                                                         into:(void*)output
                                                                     capacity:(size_t)capacity
                                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_h12proRemoteControllerChannel_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodePlaymusicRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_h12pro_controller_node_playmusicRequest*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_playmusicRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodePlaymusicRequest:(roswasmc_bounded_1_h12pro_controller_node_playmusicRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_playmusicRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodePlaymusicResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_h12pro_controller_node_playmusicResponse*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_playmusicResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodePlaymusicResponse:(roswasmc_bounded_1_h12pro_controller_node_playmusicResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_playmusicResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeRobotPhase:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_h12pro_controller_node_robotPhase*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_robotPhase_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeRobotPhase:(roswasmc_bounded_1_h12pro_controller_node_robotPhase const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_robotPhase_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeRobotQVTau:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_h12pro_controller_node_robotQVTau*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_robotQVTau_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeRobotQVTau:(roswasmc_bounded_1_h12pro_controller_node_robotQVTau const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_robotQVTau_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeRobotTorsoState:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_h12pro_controller_node_robotTorsoState*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_robotTorsoState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeRobotTorsoState:(roswasmc_bounded_1_h12pro_controller_node_robotTorsoState const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_robotTorsoState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeSrvChangePhasesRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesRequest*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeSrvChangePhasesRequest:(roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeSrvChangePhasesResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesResponse*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeSrvChangePhasesResponse:(roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeSrvClearPositionCMDRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDRequest*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeSrvClearPositionCMDRequest:(roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeSrvClearPositionCMDResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDResponse*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeSrvClearPositionCMDResponse:(roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeSrvchangeCtlModeRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeRequest*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeSrvchangeCtlModeRequest:(roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeSrvchangeCtlModeResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeResponse*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeSrvchangeCtlModeResponse:(roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1H12pro_controller_nodeWalkCommand:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_h12pro_controller_node_walkCommand*)output
{
    return roswasmc_bounded_1_h12pro_controller_node_walkCommand_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1H12pro_controller_nodeWalkCommand:(roswasmc_bounded_1_h12pro_controller_node_walkCommand const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_h12pro_controller_node_walkCommand_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_handcontrollerdemorosnode_armPoseWithTimeStamp*)output
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_armPoseWithTimeStamp_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp:(roswasmc_bounded_1_handcontrollerdemorosnode_armPoseWithTimeStamp const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_armPoseWithTimeStamp_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest:(void const*)bytes
                                                                          length:(size_t)length
                                                                            into:(roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeRequest*)
                                                                                     output
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest:
                    (roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeRequest const*)value
                                                                            into:(void*)output
                                                                        capacity:(size_t)capacity
                                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse:(void const*)bytes
                                                                           length:(size_t)length
                                                                             into:(roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeResponse*)
                                                                                      output
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse:
                    (roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeResponse const*)value
                                                                             into:(void*)output
                                                                         capacity:(size_t)capacity
                                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1HandcontrollerdemorosnodeControlEndHandRequest:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandRequest*)output
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1HandcontrollerdemorosnodeControlEndHandRequest:(roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandRequest const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1HandcontrollerdemorosnodeControlEndHandResponse:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandResponse*)output
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1HandcontrollerdemorosnodeControlEndHandResponse:(roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandResponse const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1HandcontrollerdemorosnodeHandRotationEular:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_handcontrollerdemorosnode_handRotationEular*)output
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_handRotationEular_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1HandcontrollerdemorosnodeHandRotationEular:(roswasmc_bounded_1_handcontrollerdemorosnode_handRotationEular const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_handRotationEular_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1HandcontrollerdemorosnodeRobotArmPose:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_handcontrollerdemorosnode_robotArmPose*)output
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_robotArmPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1HandcontrollerdemorosnodeRobotArmPose:(roswasmc_bounded_1_handcontrollerdemorosnode_robotArmPose const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_robotArmPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1HandcontrollerdemorosnodeRobotHandPosition:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_handcontrollerdemorosnode_robotHandPosition*)output
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_robotHandPosition_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1HandcontrollerdemorosnodeRobotHandPosition:(roswasmc_bounded_1_handcontrollerdemorosnode_robotHandPosition const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_robotHandPosition_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1HandcontrollerdemorosnodeSrvArmIKRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKRequest*)output
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1HandcontrollerdemorosnodeSrvArmIKRequest:(roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Sensor_msgsJointState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_JointState*)output
{
    return roswasmc_bounded_1_sensor_msgs_JointState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Sensor_msgsJointState:(roswasmc_bounded_1_sensor_msgs_JointState const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_sensor_msgs_JointState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1HandcontrollerdemorosnodeSrvArmIKResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKResponse*)output
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1HandcontrollerdemorosnodeSrvArmIKResponse:(roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Hardware_nodeHorizontalMotionByStep:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_hardware_node_horizontalMotionByStep*)output
{
    return roswasmc_bounded_1_hardware_node_horizontalMotionByStep_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Hardware_nodeHorizontalMotionByStep:(roswasmc_bounded_1_hardware_node_horizontalMotionByStep const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_hardware_node_horizontalMotionByStep_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Hardware_nodeRobotHeadMotionData:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_hardware_node_robotHeadMotionData*)output
{
    return roswasmc_bounded_1_hardware_node_robotHeadMotionData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Hardware_nodeRobotHeadMotionData:(roswasmc_bounded_1_hardware_node_robotHeadMotionData const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_hardware_node_robotHeadMotionData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Humanoid_arm_controlArmControlRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_humanoid_arm_control_armControlRequest*)output
{
    return roswasmc_bounded_1_humanoid_arm_control_armControlRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_arm_controlArmControlRequest:(roswasmc_bounded_1_humanoid_arm_control_armControlRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_arm_control_armControlRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Humanoid_arm_controlArmControlResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_humanoid_arm_control_armControlResponse*)output
{
    return roswasmc_bounded_1_humanoid_arm_control_armControlResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_arm_controlArmControlResponse:(roswasmc_bounded_1_humanoid_arm_control_armControlResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_arm_control_armControlResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Humanoid_arm_controlHandUpAndGrabRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabRequest*)output
{
    return roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_arm_controlHandUpAndGrabRequest:(roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Humanoid_arm_controlHandUpAndGrabResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabResponse*)output
{
    return roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_arm_controlHandUpAndGrabResponse:(roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionRequest*)output
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionRequest const*)value
                                                                         into:(void*)output
                                                                     capacity:(size_t)capacity
                                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse:(void const*)bytes
                                                                        length:(size_t)length
                                                                          into:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionResponse*)output
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionResponse const*)value
                                                                          into:(void*)output
                                                                      capacity:(size_t)capacity
                                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryRobotActionState:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_RobotActionState*)output
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_RobotActionState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryRobotActionState:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_RobotActionState const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_RobotActionState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_bezierCurveCubicPoint*)output
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_bezierCurveCubicPoint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_bezierCurveCubicPoint const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_bezierCurveCubicPoint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_jointBezierTrajectory*)output
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_jointBezierTrajectory_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_jointBezierTrajectory const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_jointBezierTrajectory_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Humanoid_plan_arm_trajectoryPlanArmState:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmState*)output
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryPlanArmState:(roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmState const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmState_encode(value, output, capacity, length);
}

+ (unsigned int)
    decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:
                                                                             (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveRequest*)
                                                                                 output
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveRequest const*)value
                                                                                     into:(void*)output
                                                                                 capacity:(size_t)capacity
                                                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveRequest_encode(value, output, capacity, length);
}

+ (unsigned int)
    decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse:(void const*)bytes
                                                                        length:(size_t)length
                                                                          into:
                                                                              (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveResponse*)
                                                                                  output
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveResponse const*)value
                                                                                      into:(void*)output
                                                                                  capacity:(size_t)capacity
                                                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Duration:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_duration*)output
{
    return roswasmc_bounded_1_duration_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Duration:(roswasmc_bounded_1_duration const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_duration_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Trajectory_msgsJointTrajectoryPoint:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint*)output
{
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Trajectory_msgsJointTrajectoryPoint:(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Trajectory_msgsJointTrajectory:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_trajectory_msgs_JointTrajectory*)output
{
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectory_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Trajectory_msgsJointTrajectory:(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectory_encode(value, output, capacity, length);
}

+ (unsigned int)
    decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:
                                                                             (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineRequest*)
                                                                                 output
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineRequest const*)value
                                                                                     into:(void*)output
                                                                                 capacity:(size_t)capacity
                                                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineRequest_encode(value, output, capacity, length);
}

+ (unsigned int)
    decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse:(void const*)bytes
                                                                        length:(size_t)length
                                                                          into:
                                                                              (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineResponse*)
                                                                                  output
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse:
                    (roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineResponse const*)value
                                                                                      into:(void*)output
                                                                                  capacity:(size_t)capacity
                                                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kindr_msgsVectorAtPosition:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kindr_msgs_VectorAtPosition*)output
{
    return roswasmc_bounded_1_kindr_msgs_VectorAtPosition_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kindr_msgsVectorAtPosition:(roswasmc_bounded_1_kindr_msgs_VectorAtPosition const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kindr_msgs_VectorAtPosition_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_audio_playerAudio_statusRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_audio_player_audio_statusRequest*)output
{
    return roswasmc_bounded_1_kuavo_audio_player_audio_statusRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_audio_playerAudio_statusRequest:(roswasmc_bounded_1_kuavo_audio_player_audio_statusRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_audio_player_audio_statusRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_audio_playerAudio_statusResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_audio_player_audio_statusResponse*)output
{
    return roswasmc_bounded_1_kuavo_audio_player_audio_statusResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_audio_playerAudio_statusResponse:(roswasmc_bounded_1_kuavo_audio_player_audio_statusResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_audio_player_audio_statusResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_audio_playerPlaymusicRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_audio_player_playmusicRequest*)output
{
    return roswasmc_bounded_1_kuavo_audio_player_playmusicRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_audio_playerPlaymusicRequest:(roswasmc_bounded_1_kuavo_audio_player_playmusicRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_audio_player_playmusicRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_audio_playerPlaymusicResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_audio_player_playmusicResponse*)output
{
    return roswasmc_bounded_1_kuavo_audio_player_playmusicResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_audio_playerPlaymusicResponse:(roswasmc_bounded_1_kuavo_audio_player_playmusicResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_audio_player_playmusicResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingDeleteMapRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_DeleteMapRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_DeleteMapRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingDeleteMapRequest:(roswasmc_bounded_1_kuavo_mapping_DeleteMapRequest const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_DeleteMapRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingDeleteMapResponse:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_mapping_DeleteMapResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_DeleteMapResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingDeleteMapResponse:(roswasmc_bounded_1_kuavo_mapping_DeleteMapResponse const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_DeleteMapResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingEditMapRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_EditMapRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_EditMapRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingEditMapRequest:(roswasmc_bounded_1_kuavo_mapping_EditMapRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_EditMapRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingEditMapResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_EditMapResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_EditMapResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingEditMapResponse:(roswasmc_bounded_1_kuavo_mapping_EditMapResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_EditMapResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingGetAllMapsRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_mapping_GetAllMapsRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_GetAllMapsRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingGetAllMapsRequest:(roswasmc_bounded_1_kuavo_mapping_GetAllMapsRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_GetAllMapsRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingGetAllMapsResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_mapping_GetAllMapsResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_GetAllMapsResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingGetAllMapsResponse:(roswasmc_bounded_1_kuavo_mapping_GetAllMapsResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_GetAllMapsResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingGetCurrentMapRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_mapping_GetCurrentMapRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_GetCurrentMapRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingGetCurrentMapRequest:(roswasmc_bounded_1_kuavo_mapping_GetCurrentMapRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_GetCurrentMapRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingGetCurrentMapResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_mapping_GetCurrentMapResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_GetCurrentMapResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingGetCurrentMapResponse:(roswasmc_bounded_1_kuavo_mapping_GetCurrentMapResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_GetCurrentMapResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingInitialPoseWithTaskPointRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingInitialPoseWithTaskPointRequest:(roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingInitialPoseWithTaskPointResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingInitialPoseWithTaskPointResponse:(roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingLoadMapRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_LoadMapRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_LoadMapRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingLoadMapRequest:(roswasmc_bounded_1_kuavo_mapping_LoadMapRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_LoadMapRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingLoadMapResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_LoadMapResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_LoadMapResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingLoadMapResponse:(roswasmc_bounded_1_kuavo_mapping_LoadMapResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_LoadMapResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingNavigateToTaskPointRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingNavigateToTaskPointRequest:(roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingNavigateToTaskPointResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingNavigateToTaskPointResponse:(roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingRenameMapRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_RenameMapRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_RenameMapRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingRenameMapRequest:(roswasmc_bounded_1_kuavo_mapping_RenameMapRequest const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_RenameMapRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingRenameMapResponse:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_mapping_RenameMapResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_RenameMapResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingRenameMapResponse:(roswasmc_bounded_1_kuavo_mapping_RenameMapResponse const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_RenameMapResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingSaveMapRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_SaveMapRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_SaveMapRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingSaveMapRequest:(roswasmc_bounded_1_kuavo_mapping_SaveMapRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_SaveMapRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingSaveMapResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_SaveMapResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_SaveMapResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingSaveMapResponse:(roswasmc_bounded_1_kuavo_mapping_SaveMapResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_SaveMapResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingSetInitialPoseRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_mapping_SetInitialPoseRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_SetInitialPoseRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingSetInitialPoseRequest:(roswasmc_bounded_1_kuavo_mapping_SetInitialPoseRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_SetInitialPoseRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingSetInitialPoseResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_mapping_SetInitialPoseResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_SetInitialPoseResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingSetInitialPoseResponse:(roswasmc_bounded_1_kuavo_mapping_SetInitialPoseResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_SetInitialPoseResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingStartMappingRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_mapping_StartMappingRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_StartMappingRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingStartMappingRequest:(roswasmc_bounded_1_kuavo_mapping_StartMappingRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_StartMappingRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingStartMappingResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_mapping_StartMappingResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_StartMappingResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingStartMappingResponse:(roswasmc_bounded_1_kuavo_mapping_StartMappingResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_StartMappingResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingStopMappingRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_mapping_StopMappingRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_StopMappingRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingStopMappingRequest:(roswasmc_bounded_1_kuavo_mapping_StopMappingRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_StopMappingRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingStopMappingResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_mapping_StopMappingResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_StopMappingResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingStopMappingResponse:(roswasmc_bounded_1_kuavo_mapping_StopMappingResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_StopMappingResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingTaskPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_mapping_TaskPoint*)output
{
    return roswasmc_bounded_1_kuavo_mapping_TaskPoint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingTaskPoint:(roswasmc_bounded_1_kuavo_mapping_TaskPoint const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_TaskPoint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingTaskPointOperationRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_mapping_TaskPointOperationRequest*)output
{
    return roswasmc_bounded_1_kuavo_mapping_TaskPointOperationRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingTaskPointOperationRequest:(roswasmc_bounded_1_kuavo_mapping_TaskPointOperationRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_TaskPointOperationRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_mappingTaskPointOperationResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_mapping_TaskPointOperationResponse*)output
{
    return roswasmc_bounded_1_kuavo_mapping_TaskPointOperationResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_mappingTaskPointOperationResponse:(roswasmc_bounded_1_kuavo_mapping_TaskPointOperationResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_mapping_TaskPointOperationResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsAprilTagDetection:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_AprilTagDetection*)output
{
    return roswasmc_bounded_1_kuavo_msgs_AprilTagDetection_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsAprilTagDetection:(roswasmc_bounded_1_kuavo_msgs_AprilTagDetection const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_AprilTagDetection_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsAprilTagDetectionArray:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_AprilTagDetectionArray*)output
{
    return roswasmc_bounded_1_kuavo_msgs_AprilTagDetectionArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsAprilTagDetectionArray:(roswasmc_bounded_1_kuavo_msgs_AprilTagDetectionArray const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_AprilTagDetectionArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsAudioPlaybackStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_AudioPlaybackStatus*)output
{
    return roswasmc_bounded_1_kuavo_msgs_AudioPlaybackStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsAudioPlaybackStatus:(roswasmc_bounded_1_kuavo_msgs_AudioPlaybackStatus const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_AudioPlaybackStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsAudioReceiverData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_AudioReceiverData*)output
{
    return roswasmc_bounded_1_kuavo_msgs_AudioReceiverData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsAudioReceiverData:(roswasmc_bounded_1_kuavo_msgs_AudioReceiverData const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_AudioReceiverData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsBatteryInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_BatteryInfo*)output
{
    return roswasmc_bounded_1_kuavo_msgs_BatteryInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsBatteryInfo:(roswasmc_bounded_1_kuavo_msgs_BatteryInfo const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_BatteryInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsColor:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_Color*)output
{
    return roswasmc_bounded_1_kuavo_msgs_Color_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsColor:(roswasmc_bounded_1_kuavo_msgs_Color const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_Color_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsControllerSwitchEvent:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_ControllerSwitchEvent*)output
{
    return roswasmc_bounded_1_kuavo_msgs_ControllerSwitchEvent_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsControllerSwitchEvent:(roswasmc_bounded_1_kuavo_msgs_ControllerSwitchEvent const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_ControllerSwitchEvent_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsCreatePathRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_CreatePathRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_CreatePathRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsCreatePathRequest:(roswasmc_bounded_1_kuavo_msgs_CreatePathRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_CreatePathRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nav_msgsPath:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nav_msgs_Path*)output
{
    return roswasmc_bounded_1_nav_msgs_Path_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nav_msgsPath:(roswasmc_bounded_1_nav_msgs_Path const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_nav_msgs_Path_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsCreatePathResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_CreatePathResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_CreatePathResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsCreatePathResponse:(roswasmc_bounded_1_kuavo_msgs_CreatePathResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_CreatePathResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsDanceTrajectoryState:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_DanceTrajectoryState*)output
{
    return roswasmc_bounded_1_kuavo_msgs_DanceTrajectoryState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsDanceTrajectoryState:(roswasmc_bounded_1_kuavo_msgs_DanceTrajectoryState const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_DanceTrajectoryState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsExecuteArmActionRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsExecuteArmActionRequest:(roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsExecuteArmActionResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsExecuteArmActionResponse:(roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFTsensorData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_FTsensorData*)output
{
    return roswasmc_bounded_1_kuavo_msgs_FTsensorData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFTsensorData:(roswasmc_bounded_1_kuavo_msgs_FTsensorData const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_FTsensorData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFaceBoundingBox:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_FaceBoundingBox*)output
{
    return roswasmc_bounded_1_kuavo_msgs_FaceBoundingBox_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFaceBoundingBox:(roswasmc_bounded_1_kuavo_msgs_FaceBoundingBox const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_FaceBoundingBox_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFallStandCommandRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_FallStandCommandRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_FallStandCommandRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFallStandCommandRequest:(roswasmc_bounded_1_kuavo_msgs_FallStandCommandRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_FallStandCommandRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFallStandCommandResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_FallStandCommandResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_FallStandCommandResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFallStandCommandResponse:(roswasmc_bounded_1_kuavo_msgs_FallStandCommandResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_FallStandCommandResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFloat32MultiArrayStamped:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_Float32MultiArrayStamped*)output
{
    return roswasmc_bounded_1_kuavo_msgs_Float32MultiArrayStamped_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFloat32MultiArrayStamped:(roswasmc_bounded_1_kuavo_msgs_Float32MultiArrayStamped const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_Float32MultiArrayStamped_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetAllMapsRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_GetAllMapsRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetAllMapsRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetAllMapsRequest:(roswasmc_bounded_1_kuavo_msgs_GetAllMapsRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetAllMapsRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetAllMapsResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_GetAllMapsResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetAllMapsResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetAllMapsResponse:(roswasmc_bounded_1_kuavo_msgs_GetAllMapsResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetAllMapsResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetBatteryInfoRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetBatteryInfoRequest:(roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetBatteryInfoResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetBatteryInfoResponse:(roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetCurrentMapRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_GetCurrentMapRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetCurrentMapRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetCurrentMapRequest:(roswasmc_bounded_1_kuavo_msgs_GetCurrentMapRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetCurrentMapRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetCurrentMapResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_GetCurrentMapResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetCurrentMapResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetCurrentMapResponse:(roswasmc_bounded_1_kuavo_msgs_GetCurrentMapResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetCurrentMapResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetPowerBoardStatusRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetPowerBoardStatusRequest:(roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPowerBoardStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_PowerBoardStatus*)output
{
    return roswasmc_bounded_1_kuavo_msgs_PowerBoardStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPowerBoardStatus:(roswasmc_bounded_1_kuavo_msgs_PowerBoardStatus const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_PowerBoardStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetPowerBoardStatusResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetPowerBoardStatusResponse:(roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetStringListRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_GetStringListRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetStringListRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetStringListRequest:(roswasmc_bounded_1_kuavo_msgs_GetStringListRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetStringListRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetStringListResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_GetStringListResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetStringListResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetStringListResponse:(roswasmc_bounded_1_kuavo_msgs_GetStringListResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetStringListResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetTargetPartPoseInCameraRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetTargetPartPoseInCameraRequest:(roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetTargetPartPoseInCameraResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetTargetPartPoseInCameraResponse:(roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsInitialPoseWithTaskPointRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsInitialPoseWithTaskPointRequest:(roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsInitialPoseWithTaskPointResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsInitialPoseWithTaskPointResponse:(roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsJoySticks:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_JoySticks*)output
{
    return roswasmc_bounded_1_kuavo_msgs_JoySticks_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsJoySticks:(roswasmc_bounded_1_kuavo_msgs_JoySticks const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_JoySticks_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLoadMapRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_LoadMapRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_LoadMapRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLoadMapRequest:(roswasmc_bounded_1_kuavo_msgs_LoadMapRequest const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_LoadMapRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLoadMapResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_LoadMapResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_LoadMapResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLoadMapResponse:(roswasmc_bounded_1_kuavo_msgs_LoadMapResponse const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_LoadMapResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsMetadata:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_Metadata*)output
{
    return roswasmc_bounded_1_kuavo_msgs_Metadata_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsMetadata:(roswasmc_bounded_1_kuavo_msgs_Metadata const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_Metadata_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsMmDetectionMsg:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_MmDetectionMsg*)output
{
    return roswasmc_bounded_1_kuavo_msgs_MmDetectionMsg_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsMmDetectionMsg:(roswasmc_bounded_1_kuavo_msgs_MmDetectionMsg const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_MmDetectionMsg_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsMocapPoseRetarget:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_MocapPoseRetarget*)output
{
    return roswasmc_bounded_1_kuavo_msgs_MocapPoseRetarget_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsMocapPoseRetarget:(roswasmc_bounded_1_kuavo_msgs_MocapPoseRetarget const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_MocapPoseRetarget_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsNavigateToTaskPointRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsNavigateToTaskPointRequest:(roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsNavigateToTaskPointResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsNavigateToTaskPointResponse:(roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPlayMusicImmediateRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPlayMusicImmediateRequest:(roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPlayMusicImmediateResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPlayMusicImmediateResponse:(roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRelaySelectChannelRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRelaySelectChannelRequest:(roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRelaySelectChannelResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRelaySelectChannelResponse:(roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRepublishTFsRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_RepublishTFsRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_RepublishTFsRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRepublishTFsRequest:(roswasmc_bounded_1_kuavo_msgs_RepublishTFsRequest const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_RepublishTFsRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRepublishTFsResponse:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_RepublishTFsResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_RepublishTFsResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRepublishTFsResponse:(roswasmc_bounded_1_kuavo_msgs_RepublishTFsResponse const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_RepublishTFsResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRigidBodyDescription:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_RigidBodyDescription*)output
{
    return roswasmc_bounded_1_kuavo_msgs_RigidBodyDescription_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRigidBodyDescription:(roswasmc_bounded_1_kuavo_msgs_RigidBodyDescription const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_RigidBodyDescription_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRigidBodyFrame:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_RigidBodyFrame*)output
{
    return roswasmc_bounded_1_kuavo_msgs_RigidBodyFrame_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRigidBodyFrame:(roswasmc_bounded_1_kuavo_msgs_RigidBodyFrame const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_RigidBodyFrame_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRobotActionState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_RobotActionState*)output
{
    return roswasmc_bounded_1_kuavo_msgs_RobotActionState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRobotActionState:(roswasmc_bounded_1_kuavo_msgs_RobotActionState const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_RobotActionState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetHeadControlModeRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetHeadControlModeRequest:(roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetHeadControlModeResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetHeadControlModeResponse:(roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest:(roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse:(roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetInitialPoseRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_SetInitialPoseRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetInitialPoseRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetInitialPoseRequest:(roswasmc_bounded_1_kuavo_msgs_SetInitialPoseRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetInitialPoseRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetInitialPoseResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_SetInitialPoseResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetInitialPoseResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetInitialPoseResponse:(roswasmc_bounded_1_kuavo_msgs_SetInitialPoseResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetInitialPoseResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetJoyTopicRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SetJoyTopicRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetJoyTopicRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetJoyTopicRequest:(roswasmc_bounded_1_kuavo_msgs_SetJoyTopicRequest const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetJoyTopicRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetJoyTopicResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SetJoyTopicResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetJoyTopicResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetJoyTopicResponse:(roswasmc_bounded_1_kuavo_msgs_SetJoyTopicResponse const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetJoyTopicResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetLEDModeRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SetLEDModeRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetLEDModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetLEDModeRequest:(roswasmc_bounded_1_kuavo_msgs_SetLEDModeRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetLEDModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetLEDModeResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SetLEDModeResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetLEDModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetLEDModeResponse:(roswasmc_bounded_1_kuavo_msgs_SetLEDModeResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetLEDModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetLEDMode_freeRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetLEDMode_freeRequest:(roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetLEDMode_freeResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetLEDMode_freeResponse:(roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetStringRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SetStringRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetStringRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetStringRequest:(roswasmc_bounded_1_kuavo_msgs_SetStringRequest const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetStringRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetStringResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SetStringResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SetStringResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetStringResponse:(roswasmc_bounded_1_kuavo_msgs_SetStringResponse const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SetStringResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSkeletonFrame:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_SkeletonFrame*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SkeletonFrame_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSkeletonFrame:(roswasmc_bounded_1_kuavo_msgs_SkeletonFrame const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SkeletonFrame_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSpeechSynthesisRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSpeechSynthesisRequest:(roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSpeechSynthesisResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSpeechSynthesisResponse:(roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTFArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_TFArray*)output
{
    return roswasmc_bounded_1_kuavo_msgs_TFArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTFArray:(roswasmc_bounded_1_kuavo_msgs_TFArray const*)value
                                       into:(void*)output
                                   capacity:(size_t)capacity
                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_TFArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTaskPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_TaskPoint*)output
{
    return roswasmc_bounded_1_kuavo_msgs_TaskPoint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTaskPoint:(roswasmc_bounded_1_kuavo_msgs_TaskPoint const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_TaskPoint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTaskPointOperationRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_TaskPointOperationRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_TaskPointOperationRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTaskPointOperationRequest:(roswasmc_bounded_1_kuavo_msgs_TaskPointOperationRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_TaskPointOperationRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTaskPointOperationResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_TaskPointOperationResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_TaskPointOperationResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTaskPointOperationResponse:(roswasmc_bounded_1_kuavo_msgs_TaskPointOperationResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_TaskPointOperationResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTransportModeCommandRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_TransportModeCommandRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_TransportModeCommandRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTransportModeCommandRequest:(roswasmc_bounded_1_kuavo_msgs_TransportModeCommandRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_TransportModeCommandRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTransportModeCommandResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_TransportModeCommandResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_TransportModeCommandResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTransportModeCommandResponse:(roswasmc_bounded_1_kuavo_msgs_TransportModeCommandResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_TransportModeCommandResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsVMPTrajectoryState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_VMPTrajectoryState*)output
{
    return roswasmc_bounded_1_kuavo_msgs_VMPTrajectoryState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsVMPTrajectoryState:(roswasmc_bounded_1_kuavo_msgs_VMPTrajectoryState const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_VMPTrajectoryState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsAccessIkSolveRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_accessIkSolveRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_accessIkSolveRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsAccessIkSolveRequest:(roswasmc_bounded_1_kuavo_msgs_accessIkSolveRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_accessIkSolveRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsAccessIkSolveResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_accessIkSolveResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_accessIkSolveResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsAccessIkSolveResponse:(roswasmc_bounded_1_kuavo_msgs_accessIkSolveResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_accessIkSolveResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsAdjustZeroPointRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_adjustZeroPointRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_adjustZeroPointRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsAdjustZeroPointRequest:(roswasmc_bounded_1_kuavo_msgs_adjustZeroPointRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_adjustZeroPointRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsAdjustZeroPointResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_adjustZeroPointResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_adjustZeroPointResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsAdjustZeroPointResponse:(roswasmc_bounded_1_kuavo_msgs_adjustZeroPointResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_adjustZeroPointResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsArmCollisionCheckInfo:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_armCollisionCheckInfo*)output
{
    return roswasmc_bounded_1_kuavo_msgs_armCollisionCheckInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsArmCollisionCheckInfo:(roswasmc_bounded_1_kuavo_msgs_armCollisionCheckInfo const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_armCollisionCheckInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsArmHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_armHandPose*)output
{
    return roswasmc_bounded_1_kuavo_msgs_armHandPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsArmHandPose:(roswasmc_bounded_1_kuavo_msgs_armHandPose const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_armHandPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsArmHandPoseFree:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_armHandPoseFree*)output
{
    return roswasmc_bounded_1_kuavo_msgs_armHandPoseFree_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsArmHandPoseFree:(roswasmc_bounded_1_kuavo_msgs_armHandPoseFree const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_armHandPoseFree_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsArmPoseWithTimeStamp:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_armPoseWithTimeStamp*)output
{
    return roswasmc_bounded_1_kuavo_msgs_armPoseWithTimeStamp_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsArmPoseWithTimeStamp:(roswasmc_bounded_1_kuavo_msgs_armPoseWithTimeStamp const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_armPoseWithTimeStamp_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsArmTargetPoses:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_armTargetPoses*)output
{
    return roswasmc_bounded_1_kuavo_msgs_armTargetPoses_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsArmTargetPoses:(roswasmc_bounded_1_kuavo_msgs_armTargetPoses const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_armTargetPoses_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsBezierCurveCubicPoint:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_bezierCurveCubicPoint*)output
{
    return roswasmc_bounded_1_kuavo_msgs_bezierCurveCubicPoint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsBezierCurveCubicPoint:(roswasmc_bounded_1_kuavo_msgs_bezierCurveCubicPoint const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_bezierCurveCubicPoint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeArmCtrlModeRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeArmCtrlModeRequest:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeArmCtrlModeResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeArmCtrlModeResponse:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse:(roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest:(roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse:(roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeLbQuickModeSrvRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeLbQuickModeSrvRequest:(roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeLbQuickModeSrvResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeLbQuickModeSrvResponse:(roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsMotorParam:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_motorParam*)output
{
    return roswasmc_bounded_1_kuavo_msgs_motorParam_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsMotorParam:(roswasmc_bounded_1_kuavo_msgs_motorParam const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_motorParam_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeMotorParamRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_changeMotorParamRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeMotorParamRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeMotorParamRequest:(roswasmc_bounded_1_kuavo_msgs_changeMotorParamRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeMotorParamRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeMotorParamResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_changeMotorParamResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeMotorParamResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeMotorParamResponse:(roswasmc_bounded_1_kuavo_msgs_changeMotorParamResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeMotorParamResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeTorsoCtrlModeRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeTorsoCtrlModeRequest:(roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeTorsoCtrlModeResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeTorsoCtrlModeResponse:(roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeWaistCtrlModeRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeWaistCtrlModeRequest:(roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChangeWaistCtrlModeResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChangeWaistCtrlModeResponse:(roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChassisPoseCmdSrvRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChassisPoseCmdSrvRequest:(roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsChassisPoseCmdSrvResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsChassisPoseCmdSrvResponse:(roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsEndEffectorData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_endEffectorData*)output
{
    return roswasmc_bounded_1_kuavo_msgs_endEffectorData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsEndEffectorData:(roswasmc_bounded_1_kuavo_msgs_endEffectorData const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_endEffectorData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsControlLejuClawRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_controlLejuClawRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_controlLejuClawRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsControlLejuClawRequest:(roswasmc_bounded_1_kuavo_msgs_controlLejuClawRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_controlLejuClawRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsControlLejuClawResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_controlLejuClawResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_controlLejuClawResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsControlLejuClawResponse:(roswasmc_bounded_1_kuavo_msgs_controlLejuClawResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_controlLejuClawResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsDexhandCommand:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_dexhandCommand*)output
{
    return roswasmc_bounded_1_kuavo_msgs_dexhandCommand_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsDexhandCommand:(roswasmc_bounded_1_kuavo_msgs_dexhandCommand const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_dexhandCommand_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTouchSensorStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_touchSensorStatus*)output
{
    return roswasmc_bounded_1_kuavo_msgs_touchSensorStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTouchSensorStatus:(roswasmc_bounded_1_kuavo_msgs_touchSensorStatus const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_touchSensorStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsDexhandTouchState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_dexhandTouchState*)output
{
    return roswasmc_bounded_1_kuavo_msgs_dexhandTouchState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsDexhandTouchState:(roswasmc_bounded_1_kuavo_msgs_dexhandTouchState const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_dexhandTouchState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsEePoseReachErrorRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsEePoseReachErrorRequest:(roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsEePoseReachErrorResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsEePoseReachErrorResponse:(roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsEnableHandTouchSensorRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsEnableHandTouchSensorRequest:(roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsEnableHandTouchSensorResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsEnableHandTouchSensorResponse:(roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFkSrvRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_fkSrvRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_fkSrvRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFkSrvRequest:(roswasmc_bounded_1_kuavo_msgs_fkSrvRequest const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_fkSrvRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPose*)output
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPose:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPose const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFkSrvResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_fkSrvResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_fkSrvResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFkSrvResponse:(roswasmc_bounded_1_kuavo_msgs_fkSrvResponse const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_fkSrvResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFkSrvWithReferFrameRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFkSrvWithReferFrameRequest:(roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFkSrvWithReferFrameResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFkSrvWithReferFrameResponse:(roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_footPose*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPose:(roswasmc_bounded_1_kuavo_msgs_footPose const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPose6D:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_footPose6D*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPose6D_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPose6D:(roswasmc_bounded_1_kuavo_msgs_footPose6D const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPose6D_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPoses6D:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_footPoses6D*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPoses6D_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPoses6D:(roswasmc_bounded_1_kuavo_msgs_footPoses6D const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPoses6D_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPose6DTargetTrajectories:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectories*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectories_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPose6DTargetTrajectories:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectories const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectories_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse:(roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPoses:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_footPoses*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPoses_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPoses:(roswasmc_bounded_1_kuavo_msgs_footPoses const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPoses_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPoseTargetTrajectories:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectories*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectories_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPoseTargetTrajectories:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectories const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectories_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvRequest const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse:(roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvResponse const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPoseWithVision:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_footPoseWithVision*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPoseWithVision_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPoseWithVision:(roswasmc_bounded_1_kuavo_msgs_footPoseWithVision const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPoseWithVision_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFootPoseWithVisionArray:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_footPoseWithVisionArray*)output
{
    return roswasmc_bounded_1_kuavo_msgs_footPoseWithVisionArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFootPoseWithVisionArray:(roswasmc_bounded_1_kuavo_msgs_footPoseWithVisionArray const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_footPoseWithVisionArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsQv:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_qv*)output
{
    return roswasmc_bounded_1_kuavo_msgs_qv_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsQv:(roswasmc_bounded_1_kuavo_msgs_qv const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_qv_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsFullBodyTargetTrajectories:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_fullBodyTargetTrajectories*)output
{
    return roswasmc_bounded_1_kuavo_msgs_fullBodyTargetTrajectories_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsFullBodyTargetTrajectories:(roswasmc_bounded_1_kuavo_msgs_fullBodyTargetTrajectories const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_fullBodyTargetTrajectories_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGaitTimeName:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_gaitTimeName*)output
{
    return roswasmc_bounded_1_kuavo_msgs_gaitTimeName_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGaitTimeName:(roswasmc_bounded_1_kuavo_msgs_gaitTimeName const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_gaitTimeName_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGestureTask:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_gestureTask*)output
{
    return roswasmc_bounded_1_kuavo_msgs_gestureTask_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGestureTask:(roswasmc_bounded_1_kuavo_msgs_gestureTask const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_gestureTask_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGestureExecuteRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_gestureExecuteRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGestureExecuteRequest:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_gestureExecuteRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGestureExecuteResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_gestureExecuteResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGestureExecuteResponse:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_gestureExecuteResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGestureExecuteStateRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGestureExecuteStateRequest:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGestureExecuteStateResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGestureExecuteStateResponse:(roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGestureInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_gestureInfo*)output
{
    return roswasmc_bounded_1_kuavo_msgs_gestureInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGestureInfo:(roswasmc_bounded_1_kuavo_msgs_gestureInfo const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_gestureInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGestureListRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_gestureListRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_gestureListRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGestureListRequest:(roswasmc_bounded_1_kuavo_msgs_gestureListRequest const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_gestureListRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGestureListResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_gestureListResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_gestureListResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGestureListResponse:(roswasmc_bounded_1_kuavo_msgs_gestureListResponse const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_gestureListResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetControllerListRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_getControllerListRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_getControllerListRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetControllerListRequest:(roswasmc_bounded_1_kuavo_msgs_getControllerListRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_getControllerListRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetControllerListResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_getControllerListResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_getControllerListResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetControllerListResponse:(roswasmc_bounded_1_kuavo_msgs_getControllerListResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_getControllerListResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetCurrentGaitNameRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetCurrentGaitNameRequest:(roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetCurrentGaitNameResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetCurrentGaitNameResponse:(roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetLbTorsoInitialPoseRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetLbTorsoInitialPoseRequest:(roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetLbTorsoInitialPoseResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetLbTorsoInitialPoseResponse:(roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetMotorParamRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_getMotorParamRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_getMotorParamRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetMotorParamRequest:(roswasmc_bounded_1_kuavo_msgs_getMotorParamRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_getMotorParamRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetMotorParamResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_getMotorParamResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_getMotorParamResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetMotorParamResponse:(roswasmc_bounded_1_kuavo_msgs_getMotorParamResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_getMotorParamResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetMotorZeroPointsRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetMotorZeroPointsRequest:(roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGetMotorZeroPointsResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGetMotorZeroPointsResponse:(roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGoToZeroPointRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_goToZeroPointRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_goToZeroPointRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGoToZeroPointRequest:(roswasmc_bounded_1_kuavo_msgs_goToZeroPointRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_goToZeroPointRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsGoToZeroPointResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_goToZeroPointResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_goToZeroPointResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsGoToZeroPointResponse:(roswasmc_bounded_1_kuavo_msgs_goToZeroPointResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_goToZeroPointResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsHandForceLevelRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_handForceLevelRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_handForceLevelRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsHandForceLevelRequest:(roswasmc_bounded_1_kuavo_msgs_handForceLevelRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_handForceLevelRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsHandForceLevelResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_handForceLevelResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_handForceLevelResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsHandForceLevelResponse:(roswasmc_bounded_1_kuavo_msgs_handForceLevelResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_handForceLevelResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_handPose*)output
{
    return roswasmc_bounded_1_kuavo_msgs_handPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsHandPose:(roswasmc_bounded_1_kuavo_msgs_handPose const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_handPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsHeadBodyPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_headBodyPose*)output
{
    return roswasmc_bounded_1_kuavo_msgs_headBodyPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsHeadBodyPose:(roswasmc_bounded_1_kuavo_msgs_headBodyPose const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_headBodyPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsHeadCtrlMode:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_headCtrlMode*)output
{
    return roswasmc_bounded_1_kuavo_msgs_headCtrlMode_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsHeadCtrlMode:(roswasmc_bounded_1_kuavo_msgs_headCtrlMode const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_headCtrlMode_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsIkSolveError:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_ikSolveError*)output
{
    return roswasmc_bounded_1_kuavo_msgs_ikSolveError_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsIkSolveError:(roswasmc_bounded_1_kuavo_msgs_ikSolveError const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_ikSolveError_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsIkSolveParam:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_ikSolveParam*)output
{
    return roswasmc_bounded_1_kuavo_msgs_ikSolveParam_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsIkSolveParam:(roswasmc_bounded_1_kuavo_msgs_ikSolveParam const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_ikSolveParam_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsImuData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_imuData*)output
{
    return roswasmc_bounded_1_kuavo_msgs_imuData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsImuData:(roswasmc_bounded_1_kuavo_msgs_imuData const*)value
                                       into:(void*)output
                                   capacity:(size_t)capacity
                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_imuData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsJointBezierTrajectory:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_jointBezierTrajectory*)output
{
    return roswasmc_bounded_1_kuavo_msgs_jointBezierTrajectory_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsJointBezierTrajectory:(roswasmc_bounded_1_kuavo_msgs_jointBezierTrajectory const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_jointBezierTrajectory_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsJointCmd:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_jointCmd*)output
{
    return roswasmc_bounded_1_kuavo_msgs_jointCmd_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsJointCmd:(roswasmc_bounded_1_kuavo_msgs_jointCmd const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_jointCmd_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsJointData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_jointData*)output
{
    return roswasmc_bounded_1_kuavo_msgs_jointData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsJointData:(roswasmc_bounded_1_kuavo_msgs_jointData const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_jointData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsJointMoveToRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_jointMoveToRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_jointMoveToRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsJointMoveToRequest:(roswasmc_bounded_1_kuavo_msgs_jointMoveToRequest const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_jointMoveToRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsJointMoveToResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_jointMoveToResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_jointMoveToResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsJointMoveToResponse:(roswasmc_bounded_1_kuavo_msgs_jointMoveToResponse const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_jointMoveToResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsKuavoModeSchedule:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_kuavoModeSchedule*)output
{
    return roswasmc_bounded_1_kuavo_msgs_kuavoModeSchedule_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsKuavoModeSchedule:(roswasmc_bounded_1_kuavo_msgs_kuavoModeSchedule const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_kuavoModeSchedule_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest:(roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse:(roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLbLegControlSrvRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLbLegControlSrvRequest:(roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLbLegControlSrvResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLbLegControlSrvResponse:(roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTimedPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_timedPoint*)output
{
    return roswasmc_bounded_1_kuavo_msgs_timedPoint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTimedPoint:(roswasmc_bounded_1_kuavo_msgs_timedPoint const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_timedPoint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLbTimedOfflineTraj:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_lbTimedOfflineTraj*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lbTimedOfflineTraj_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLbTimedOfflineTraj:(roswasmc_bounded_1_kuavo_msgs_lbTimedOfflineTraj const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lbTimedOfflineTraj_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTimedSingleCmd:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_timedSingleCmd*)output
{
    return roswasmc_bounded_1_kuavo_msgs_timedSingleCmd_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTimedSingleCmd:(roswasmc_bounded_1_kuavo_msgs_timedSingleCmd const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_timedSingleCmd_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLbMultiTimedPosCmdRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLbMultiTimedPosCmdRequest:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLbMultiTimedPosCmdResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLbMultiTimedPosCmdResponse:(roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLbTimedPosCmdRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLbTimedPosCmdRequest:(roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLbTimedPosCmdResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLbTimedPosCmdResponse:(roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLejuClawCommand:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_lejuClawCommand*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lejuClawCommand_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLejuClawCommand:(roswasmc_bounded_1_kuavo_msgs_lejuClawCommand const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lejuClawCommand_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLejuClawRecoveryRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLejuClawRecoveryRequest:(roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLejuClawRecoveryResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLejuClawRecoveryResponse:(roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLejuClawState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_lejuClawState*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lejuClawState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLejuClawState:(roswasmc_bounded_1_kuavo_msgs_lejuClawState const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lejuClawState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsLejuClawTarget:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_lejuClawTarget*)output
{
    return roswasmc_bounded_1_kuavo_msgs_lejuClawTarget_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsLejuClawTarget:(roswasmc_bounded_1_kuavo_msgs_lejuClawTarget const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_lejuClawTarget_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsMpc_input:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_mpc_input*)output
{
    return roswasmc_bounded_1_kuavo_msgs_mpc_input_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsMpc_input:(roswasmc_bounded_1_kuavo_msgs_mpc_input const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_mpc_input_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsMpc_state:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_mpc_state*)output
{
    return roswasmc_bounded_1_kuavo_msgs_mpc_state_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsMpc_state:(roswasmc_bounded_1_kuavo_msgs_mpc_state const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_mpc_state_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsMpc_target_trajectories:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_mpc_target_trajectories*)output
{
    return roswasmc_bounded_1_kuavo_msgs_mpc_target_trajectories_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsMpc_target_trajectories:(roswasmc_bounded_1_kuavo_msgs_mpc_target_trajectories const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_mpc_target_trajectories_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPicoPoseInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_picoPoseInfo*)output
{
    return roswasmc_bounded_1_kuavo_msgs_picoPoseInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPicoPoseInfo:(roswasmc_bounded_1_kuavo_msgs_picoPoseInfo const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_picoPoseInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPicoPoseInfoList:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_picoPoseInfoList*)output
{
    return roswasmc_bounded_1_kuavo_msgs_picoPoseInfoList_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPicoPoseInfoList:(roswasmc_bounded_1_kuavo_msgs_picoPoseInfoList const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_picoPoseInfoList_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPicoPoseRetarget:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_picoPoseRetarget*)output
{
    return roswasmc_bounded_1_kuavo_msgs_picoPoseRetarget_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPicoPoseRetarget:(roswasmc_bounded_1_kuavo_msgs_picoPoseRetarget const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_picoPoseRetarget_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPlanArmState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_planArmState*)output
{
    return roswasmc_bounded_1_kuavo_msgs_planArmState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPlanArmState:(roswasmc_bounded_1_kuavo_msgs_planArmState const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_planArmState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse:(roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPlaymusicRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_playmusicRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_playmusicRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPlaymusicRequest:(roswasmc_bounded_1_kuavo_msgs_playmusicRequest const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_playmusicRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsPlaymusicResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_playmusicResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_playmusicResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsPlaymusicResponse:(roswasmc_bounded_1_kuavo_msgs_playmusicResponse const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_playmusicResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRecordArmHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_recordArmHandPose*)output
{
    return roswasmc_bounded_1_kuavo_msgs_recordArmHandPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRecordArmHandPose:(roswasmc_bounded_1_kuavo_msgs_recordArmHandPose const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_recordArmHandPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRecordmusicRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_recordmusicRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_recordmusicRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRecordmusicRequest:(roswasmc_bounded_1_kuavo_msgs_recordmusicRequest const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_recordmusicRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRecordmusicResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_recordmusicResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_recordmusicResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRecordmusicResponse:(roswasmc_bounded_1_kuavo_msgs_recordmusicResponse const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_recordmusicResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRobotArmQVVD:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_robotArmQVVD*)output
{
    return roswasmc_bounded_1_kuavo_msgs_robotArmQVVD_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRobotArmQVVD:(roswasmc_bounded_1_kuavo_msgs_robotArmQVVD const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_robotArmQVVD_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRobotBodyMatrices:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_robotBodyMatrices*)output
{
    return roswasmc_bounded_1_kuavo_msgs_robotBodyMatrices_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRobotBodyMatrices:(roswasmc_bounded_1_kuavo_msgs_robotBodyMatrices const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_robotBodyMatrices_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRobotHandPosition:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_robotHandPosition*)output
{
    return roswasmc_bounded_1_kuavo_msgs_robotHandPosition_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRobotHandPosition:(roswasmc_bounded_1_kuavo_msgs_robotHandPosition const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_robotHandPosition_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRobotHeadMotionData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_robotHeadMotionData*)output
{
    return roswasmc_bounded_1_kuavo_msgs_robotHeadMotionData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRobotHeadMotionData:(roswasmc_bounded_1_kuavo_msgs_robotHeadMotionData const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_robotHeadMotionData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRobotState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_robotState*)output
{
    return roswasmc_bounded_1_kuavo_msgs_robotState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRobotState:(roswasmc_bounded_1_kuavo_msgs_robotState const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_robotState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRobotSwitchPoseRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRobotSwitchPoseRequest:(roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRobotSwitchPoseResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRobotSwitchPoseResponse:(roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Std_msgsFloat64MultiArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_std_msgs_Float64MultiArray*)output
{
    return roswasmc_bounded_1_std_msgs_Float64MultiArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Std_msgsFloat64MultiArray:(roswasmc_bounded_1_std_msgs_Float64MultiArray const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_std_msgs_Float64MultiArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsRobotWaistControl:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_robotWaistControl*)output
{
    return roswasmc_bounded_1_kuavo_msgs_robotWaistControl_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsRobotWaistControl:(roswasmc_bounded_1_kuavo_msgs_robotWaistControl const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_robotWaistControl_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSensorsData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_sensorsData*)output
{
    return roswasmc_bounded_1_kuavo_msgs_sensorsData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSensorsData:(roswasmc_bounded_1_kuavo_msgs_sensorsData const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_sensorsData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetContactForceInterpParamsRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetContactForceInterpParamsRequest:(roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetContactForceInterpParamsResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetContactForceInterpParamsResponse:(roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetHwIntialStateRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_setHwIntialStateRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setHwIntialStateRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetHwIntialStateRequest:(roswasmc_bounded_1_kuavo_msgs_setHwIntialStateRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setHwIntialStateRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetHwIntialStateResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_setHwIntialStateResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setHwIntialStateResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetHwIntialStateResponse:(roswasmc_bounded_1_kuavo_msgs_setHwIntialStateResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setHwIntialStateResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetMmCtrlFrameRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetMmCtrlFrameRequest:(roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetMmCtrlFrameResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetMmCtrlFrameResponse:(roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest:(roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse:(roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetRuckigPlannerParamsRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetRuckigPlannerParamsRequest:(roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetRuckigPlannerParamsResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetRuckigPlannerParamsResponse:(roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetTagIdRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_setTagIdRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setTagIdRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetTagIdRequest:(roswasmc_bounded_1_kuavo_msgs_setTagIdRequest const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setTagIdRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSetTagIdResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_setTagIdResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_setTagIdResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSetTagIdResponse:(roswasmc_bounded_1_kuavo_msgs_setTagIdResponse const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_setTagIdResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSingleStepControlRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_singleStepControlRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_singleStepControlRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSingleStepControlRequest:(roswasmc_bounded_1_kuavo_msgs_singleStepControlRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_singleStepControlRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSingleStepControlResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_singleStepControlResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_singleStepControlResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSingleStepControlResponse:(roswasmc_bounded_1_kuavo_msgs_singleStepControlResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_singleStepControlResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsStairAlignmentSrvRequest:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsStairAlignmentSrvRequest:(roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvRequest const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsStairAlignmentSrvResponse:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsStairAlignmentSrvResponse:(roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvResponse const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSwitchControllerRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_msgs_switchControllerRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_switchControllerRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSwitchControllerRequest:(roswasmc_bounded_1_kuavo_msgs_switchControllerRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_switchControllerRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSwitchControllerResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_msgs_switchControllerResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_switchControllerResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSwitchControllerResponse:(roswasmc_bounded_1_kuavo_msgs_switchControllerResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_switchControllerResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSwitchGaitByName:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_switchGaitByName*)output
{
    return roswasmc_bounded_1_kuavo_msgs_switchGaitByName_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSwitchGaitByName:(roswasmc_bounded_1_kuavo_msgs_switchGaitByName const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_switchGaitByName_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSwitchToNextControllerRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_msgs_switchToNextControllerRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_switchToNextControllerRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSwitchToNextControllerRequest:(roswasmc_bounded_1_kuavo_msgs_switchToNextControllerRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_switchToNextControllerRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsSwitchToNextControllerResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_kuavo_msgs_switchToNextControllerResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_switchToNextControllerResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsSwitchToNextControllerResponse:(roswasmc_bounded_1_kuavo_msgs_switchToNextControllerResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_switchToNextControllerResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTagDataArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_tagDataArray*)output
{
    return roswasmc_bounded_1_kuavo_msgs_tagDataArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTagDataArray:(roswasmc_bounded_1_kuavo_msgs_tagDataArray const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_tagDataArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmd:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmd*)output
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmd_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmd:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmd const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmd_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseFree:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseFree*)output
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseFree_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseFree:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseFree const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseFree_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmdFree:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFree*)output
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFree_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmdFree:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFree const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFree_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvRequest*)output
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvResponse*)output
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse:(roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsXsensePoseInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_xsensePoseInfo*)output
{
    return roswasmc_bounded_1_kuavo_msgs_xsensePoseInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsXsensePoseInfo:(roswasmc_bounded_1_kuavo_msgs_xsensePoseInfo const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_xsensePoseInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsXsensePoseInfoList:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_xsensePoseInfoList*)output
{
    return roswasmc_bounded_1_kuavo_msgs_xsensePoseInfoList_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsXsensePoseInfoList:(roswasmc_bounded_1_kuavo_msgs_xsensePoseInfoList const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_xsensePoseInfoList_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsXsensePoseRetarget:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_xsensePoseRetarget*)output
{
    return roswasmc_bounded_1_kuavo_msgs_xsensePoseRetarget_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsXsensePoseRetarget:(roswasmc_bounded_1_kuavo_msgs_xsensePoseRetarget const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_xsensePoseRetarget_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsYoloOutputData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_yoloOutputData*)output
{
    return roswasmc_bounded_1_kuavo_msgs_yoloOutputData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsYoloOutputData:(roswasmc_bounded_1_kuavo_msgs_yoloOutputData const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_yoloOutputData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_msgsYoloDetection:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_msgs_yoloDetection*)output
{
    return roswasmc_bounded_1_kuavo_msgs_yoloDetection_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_msgsYoloDetection:(roswasmc_bounded_1_kuavo_msgs_yoloDetection const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_msgs_yoloDetection_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_pico_gmrAmpJoyRouteRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteRequest*)output
{
    return roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_pico_gmrAmpJoyRouteRequest:(roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_pico_gmrAmpJoyRouteResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteResponse*)output
{
    return roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_pico_gmrAmpJoyRouteResponse:(roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_ros_interfacesArmTargetPoses:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_kuavo_ros_interfaces_armTargetPoses*)output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_armTargetPoses_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesArmTargetPoses:(roswasmc_bounded_1_kuavo_ros_interfaces_armTargetPoses const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_armTargetPoses_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_ros_interfacesBezierCurveCubicPoint:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_kuavo_ros_interfaces_bezierCurveCubicPoint*)output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_bezierCurveCubicPoint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesBezierCurveCubicPoint:(roswasmc_bounded_1_kuavo_ros_interfaces_bezierCurveCubicPoint const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_bezierCurveCubicPoint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_ros_interfacesJointBezierTrajectory:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_kuavo_ros_interfaces_jointBezierTrajectory*)output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_jointBezierTrajectory_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesJointBezierTrajectory:(roswasmc_bounded_1_kuavo_ros_interfaces_jointBezierTrajectory const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_jointBezierTrajectory_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeRequest*)output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest:(roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeResponse*)output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse:(roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_ros_interfacesPlanArmState:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_kuavo_ros_interfaces_planArmState*)output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_planArmState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesPlanArmState:(roswasmc_bounded_1_kuavo_ros_interfaces_planArmState const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_planArmState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest:(void const*)bytes
                                                                           length:(size_t)length
                                                                             into:(roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveRequest*)
                                                                                      output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest:
                    (roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveRequest const*)value
                                                                             into:(void*)output
                                                                         capacity:(size_t)capacity
                                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveRequest_encode(value, output, capacity, length);
}

+ (unsigned int)
    decodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveResponse*)output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse:
                    (roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveResponse const*)value
                                                                              into:(void*)output
                                                                          capacity:(size_t)capacity
                                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_ros_interfacesRobotHandPosition:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_kuavo_ros_interfaces_robotHandPosition*)output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_robotHandPosition_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesRobotHandPosition:(roswasmc_bounded_1_kuavo_ros_interfaces_robotHandPosition const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_robotHandPosition_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_ros_interfacesRobotHeadMotionData:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_kuavo_ros_interfaces_robotHeadMotionData*)output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_robotHeadMotionData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesRobotHeadMotionData:(roswasmc_bounded_1_kuavo_ros_interfaces_robotHeadMotionData const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_robotHeadMotionData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryRequest*)output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest:(roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryRequest const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryResponse*)output
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse:(roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryResponse const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsBMS:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_leju_mobile_base_msgs_BMS*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_BMS_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsBMS:(roswasmc_bounded_1_leju_mobile_base_msgs_BMS const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_BMS_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsBaseCmdVelStatus:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseCmdVelStatus*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_BaseCmdVelStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsBaseCmdVelStatus:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseCmdVelStatus const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_BaseCmdVelStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsMoveToTargetOptions:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetOptions*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetOptions_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsMoveToTargetOptions:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetOptions const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetOptions_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsBaseMoveRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsBaseMoveRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsBaseMoveResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsBaseMoveResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsBattery:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_leju_mobile_base_msgs_Battery*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_Battery_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsBattery:(roswasmc_bounded_1_leju_mobile_base_msgs_Battery const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_Battery_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsCheckArrivedRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsCheckArrivedRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsCheckArrivedResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsCheckArrivedResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsControlLaserScanRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsControlLaserScanRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsControlLaserScanResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsControlLaserScanResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsDispatchMoveRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsDispatchMoveRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsDispatchMoveResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsDispatchMoveResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsExecTaskRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsExecTaskRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsExecTaskResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsExecTaskResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsGetGlobalOdometerRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsGetGlobalOdometerRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsGetGlobalOdometerResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsGetGlobalOdometerResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsGetLaserScanListRequest:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsGetLaserScanListRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListRequest const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsGetLaserScanListResponse:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsGetLaserScanListResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListResponse const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsHardwareStatus:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_leju_mobile_base_msgs_HardwareStatus*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_HardwareStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsHardwareStatus:(roswasmc_bounded_1_leju_mobile_base_msgs_HardwareStatus const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_HardwareStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsInformation:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_leju_mobile_base_msgs_Information*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_Information_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsInformation:(roswasmc_bounded_1_leju_mobile_base_msgs_Information const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_Information_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsLED:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_leju_mobile_base_msgs_LED*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_LED_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsLED:(roswasmc_bounded_1_leju_mobile_base_msgs_LED const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_LED_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsLiftControl3Feedback:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Feedback*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Feedback_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsLiftControl3Feedback:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Feedback const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Feedback_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsLiftControl3Goal:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Goal*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Goal_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsLiftControl3Goal:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Goal const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Goal_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsLiftControl3Result:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Result*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Result_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsLiftControl3Result:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Result const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_LiftControl3Result_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsLiftStatus:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftStatus*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_LiftStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsLiftStatus:(roswasmc_bounded_1_leju_mobile_base_msgs_LiftStatus const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_LiftStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsMoveBaseActionGoal:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveBaseActionGoal*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_MoveBaseActionGoal_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsMoveBaseActionGoal:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveBaseActionGoal const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_MoveBaseActionGoal_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsMoveToTargetRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsMoveToTargetRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsMoveToTargetResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsMoveToTargetResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsNavigationModeGoal:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_leju_mobile_base_msgs_NavigationModeGoal*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_NavigationModeGoal_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsNavigationModeGoal:(roswasmc_bounded_1_leju_mobile_base_msgs_NavigationModeGoal const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_NavigationModeGoal_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsParameter:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_leju_mobile_base_msgs_Parameter*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_Parameter_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsParameter:(roswasmc_bounded_1_leju_mobile_base_msgs_Parameter const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_Parameter_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest:(void const*)bytes
                                                                      length:(size_t)length
                                                                        into:(roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest:
                    (roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerRequest const*)value
                                                                        into:(void*)output
                                                                    capacity:(size_t)capacity
                                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:(roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse:
                    (roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerResponse const*)value
                                                                         into:(void*)output
                                                                     capacity:(size_t)capacity
                                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsRobotStatus:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_leju_mobile_base_msgs_RobotStatus*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_RobotStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsRobotStatus:(roswasmc_bounded_1_leju_mobile_base_msgs_RobotStatus const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_RobotStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsSetDispatchModeRequest:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsSetDispatchModeRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeRequest const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsSetDispatchModeResponse:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsSetDispatchModeResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeResponse const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsSetMapServerRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsSetMapServerRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsSetMapServerResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsSetMapServerResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsStartLocalizationRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsStartLocalizationRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsStartLocalizationResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsStartLocalizationResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsStepControlGoal:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_leju_mobile_base_msgs_StepControlGoal*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_StepControlGoal_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsStepControlGoal:(roswasmc_bounded_1_leju_mobile_base_msgs_StepControlGoal const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_StepControlGoal_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsSyncCostmapRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapRequest*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsSyncCostmapRequest:(roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsSyncCostmapResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapResponse*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsSyncCostmapResponse:(roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Leju_mobile_base_msgsTaskDetailStatus:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_leju_mobile_base_msgs_TaskDetailStatus*)output
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_TaskDetailStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Leju_mobile_base_msgsTaskDetailStatus:(roswasmc_bounded_1_leju_mobile_base_msgs_TaskDetailStatus const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_leju_mobile_base_msgs_TaskDetailStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1MotioncaptureForcePlateData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_motioncapture_ForcePlateData*)output
{
    return roswasmc_bounded_1_motioncapture_ForcePlateData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1MotioncaptureForcePlateData:(roswasmc_bounded_1_motioncapture_ForcePlateData const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_motioncapture_ForcePlateData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Network_monitorNetworkPingRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_network_monitor_NetworkPingRequest*)output
{
    return roswasmc_bounded_1_network_monitor_NetworkPingRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Network_monitorNetworkPingRequest:(roswasmc_bounded_1_network_monitor_NetworkPingRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_network_monitor_NetworkPingRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Network_monitorNetworkPingResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_network_monitor_NetworkPingResponse*)output
{
    return roswasmc_bounded_1_network_monitor_NetworkPingResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Network_monitorNetworkPingResponse:(roswasmc_bounded_1_network_monitor_NetworkPingResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_network_monitor_NetworkPingResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Network_monitorNetworkPingMsg:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_network_monitor_NetworkPingMsg*)output
{
    return roswasmc_bounded_1_network_monitor_NetworkPingMsg_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Network_monitorNetworkPingMsg:(roswasmc_bounded_1_network_monitor_NetworkPingMsg const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_network_monitor_NetworkPingMsg_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nimservos_controllerMotor_cmd:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nimservos_controller_motor_cmd*)output
{
    return roswasmc_bounded_1_nimservos_controller_motor_cmd_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nimservos_controllerMotor_cmd:(roswasmc_bounded_1_nimservos_controller_motor_cmd const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_nimservos_controller_motor_cmd_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nimservos_controllerMotor_state:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nimservos_controller_motor_state*)output
{
    return roswasmc_bounded_1_nimservos_controller_motor_state_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nimservos_controllerMotor_state:(roswasmc_bounded_1_nimservos_controller_motor_state const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_nimservos_controller_motor_state_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserIotFrame0Node:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_IotFrame0Node*)output
{
    return roswasmc_bounded_1_nlink_parser_IotFrame0Node_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserIotFrame0Node:(roswasmc_bounded_1_nlink_parser_IotFrame0Node const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_IotFrame0Node_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserIotFrame0:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_IotFrame0*)output
{
    return roswasmc_bounded_1_nlink_parser_IotFrame0_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserIotFrame0:(roswasmc_bounded_1_nlink_parser_IotFrame0 const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_IotFrame0_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackTag:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackTag*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackTag_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackTag:(roswasmc_bounded_1_nlink_parser_LinktrackTag const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackTag_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackAnchorframe0:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_nlink_parser_LinktrackAnchorframe0*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackAnchorframe0_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackAnchorframe0:(roswasmc_bounded_1_nlink_parser_LinktrackAnchorframe0 const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackAnchorframe0_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackAoaNode0:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackAoaNode0*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackAoaNode0_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackAoaNode0:(roswasmc_bounded_1_nlink_parser_LinktrackAoaNode0 const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackAoaNode0_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackAoaNodeframe0:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_nlink_parser_LinktrackAoaNodeframe0*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackAoaNodeframe0_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackAoaNodeframe0:(roswasmc_bounded_1_nlink_parser_LinktrackAoaNodeframe0 const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackAoaNodeframe0_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNode0:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackNode0*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode0_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNode0:(roswasmc_bounded_1_nlink_parser_LinktrackNode0 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode0_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNode1:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackNode1*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode1_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNode1:(roswasmc_bounded_1_nlink_parser_LinktrackNode1 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode1_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNode2:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackNode2*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode2_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNode2:(roswasmc_bounded_1_nlink_parser_LinktrackNode2 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode2_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNode4Anchor:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_nlink_parser_LinktrackNode4Anchor*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode4Anchor_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNode4Anchor:(roswasmc_bounded_1_nlink_parser_LinktrackNode4Anchor const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode4Anchor_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNode4Tag:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackNode4Tag*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode4Tag_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNode4Tag:(roswasmc_bounded_1_nlink_parser_LinktrackNode4Tag const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode4Tag_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNode5:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackNode5*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode5_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNode5:(roswasmc_bounded_1_nlink_parser_LinktrackNode5 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode5_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNode6:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_LinktrackNode6*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode6_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNode6:(roswasmc_bounded_1_nlink_parser_LinktrackNode6 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNode6_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe0:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe0*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe0_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe0:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe0 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe0_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe1:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe1*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe1_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe1:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe1 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe1_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe2:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe2*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe2_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe2:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe2 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe2_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe3:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe3*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe3_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe3:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe3 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe3_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe4:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe4*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe4_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe4:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe4 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe4_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe5:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe5*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe5_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe5:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe5 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe5_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackNodeframe6:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe6*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe6_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackNodeframe6:(roswasmc_bounded_1_nlink_parser_LinktrackNodeframe6 const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackNodeframe6_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserLinktrackTagframe0:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_nlink_parser_LinktrackTagframe0*)output
{
    return roswasmc_bounded_1_nlink_parser_LinktrackTagframe0_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserLinktrackTagframe0:(roswasmc_bounded_1_nlink_parser_LinktrackTagframe0 const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_LinktrackTagframe0_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserTofsenseFrame0:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_TofsenseFrame0*)output
{
    return roswasmc_bounded_1_nlink_parser_TofsenseFrame0_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserTofsenseFrame0:(roswasmc_bounded_1_nlink_parser_TofsenseFrame0 const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_TofsenseFrame0_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserTofsenseCascade:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_TofsenseCascade*)output
{
    return roswasmc_bounded_1_nlink_parser_TofsenseCascade_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserTofsenseCascade:(roswasmc_bounded_1_nlink_parser_TofsenseCascade const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_TofsenseCascade_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserTofsenseMFrame0Pixel:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_nlink_parser_TofsenseMFrame0Pixel*)output
{
    return roswasmc_bounded_1_nlink_parser_TofsenseMFrame0Pixel_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserTofsenseMFrame0Pixel:(roswasmc_bounded_1_nlink_parser_TofsenseMFrame0Pixel const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_TofsenseMFrame0Pixel_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Nlink_parserTofsenseMFrame0:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_nlink_parser_TofsenseMFrame0*)output
{
    return roswasmc_bounded_1_nlink_parser_TofsenseMFrame0_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Nlink_parserTofsenseMFrame0:(roswasmc_bounded_1_nlink_parser_TofsenseMFrame0 const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_nlink_parser_TofsenseMFrame0_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonJoySticks:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_JoySticks*)output
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_JoySticks_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonJoySticks:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_JoySticks const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_JoySticks_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonPoseInfo:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfo*)output
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonPoseInfo:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfo const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonPoseInfoList:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfoList*)output
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfoList_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonPoseInfoList:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfoList const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_PoseInfoList_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonQuaternionArray:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_QuaternionArray*)output
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_QuaternionArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonQuaternionArray:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_QuaternionArray const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_QuaternionArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonVector4:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_Vector4*)output
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_Vector4_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonVector4:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_Vector4 const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_Vector4_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonHandRotation:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotation*)output
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotation_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonHandRotation:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotation const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotation_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Noitom_hi5_hand_udp_pythonHandRotationEular:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotationEular*)output
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotationEular_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Noitom_hi5_hand_udp_pythonHandRotationEular:(roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotationEular const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_noitom_hi5_hand_udp_python_handRotationEular_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsConstraint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_constraint*)output
{
    return roswasmc_bounded_1_ocs2_msgs_constraint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsConstraint:(roswasmc_bounded_1_ocs2_msgs_constraint const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_constraint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsController_data:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_controller_data*)output
{
    return roswasmc_bounded_1_ocs2_msgs_controller_data_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsController_data:(roswasmc_bounded_1_ocs2_msgs_controller_data const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_controller_data_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsLagrangian_metrics:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_lagrangian_metrics*)output
{
    return roswasmc_bounded_1_ocs2_msgs_lagrangian_metrics_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsLagrangian_metrics:(roswasmc_bounded_1_ocs2_msgs_lagrangian_metrics const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_lagrangian_metrics_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsMode_schedule:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_mode_schedule*)output
{
    return roswasmc_bounded_1_ocs2_msgs_mode_schedule_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsMode_schedule:(roswasmc_bounded_1_ocs2_msgs_mode_schedule const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_mode_schedule_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsMpc_state:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_mpc_state*)output
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_state_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsMpc_state:(roswasmc_bounded_1_ocs2_msgs_mpc_state const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_state_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsMpc_input:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_mpc_input*)output
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_input_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsMpc_input:(roswasmc_bounded_1_ocs2_msgs_mpc_input const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_input_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsMpc_observation:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_mpc_observation*)output
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_observation_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsMpc_observation:(roswasmc_bounded_1_ocs2_msgs_mpc_observation const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_observation_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsMpc_target_trajectories:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_ocs2_msgs_mpc_target_trajectories*)output
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_target_trajectories_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsMpc_target_trajectories:(roswasmc_bounded_1_ocs2_msgs_mpc_target_trajectories const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_target_trajectories_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsMpc_performance_indices:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_ocs2_msgs_mpc_performance_indices*)output
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_performance_indices_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsMpc_performance_indices:(roswasmc_bounded_1_ocs2_msgs_mpc_performance_indices const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_performance_indices_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsMpc_flattened_controller:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_ocs2_msgs_mpc_flattened_controller*)output
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_flattened_controller_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsMpc_flattened_controller:(roswasmc_bounded_1_ocs2_msgs_mpc_flattened_controller const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_flattened_controller_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsMpc_solver_data:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_mpc_solver_data*)output
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_solver_data_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsMpc_solver_data:(roswasmc_bounded_1_ocs2_msgs_mpc_solver_data const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_mpc_solver_data_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsMultiplier:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_multiplier*)output
{
    return roswasmc_bounded_1_ocs2_msgs_multiplier_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsMultiplier:(roswasmc_bounded_1_ocs2_msgs_multiplier const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_multiplier_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsPause_resumeRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_pause_resumeRequest*)output
{
    return roswasmc_bounded_1_ocs2_msgs_pause_resumeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsPause_resumeRequest:(roswasmc_bounded_1_ocs2_msgs_pause_resumeRequest const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_pause_resumeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsPause_resumeResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_pause_resumeResponse*)output
{
    return roswasmc_bounded_1_ocs2_msgs_pause_resumeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsPause_resumeResponse:(roswasmc_bounded_1_ocs2_msgs_pause_resumeResponse const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_pause_resumeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsResetRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_resetRequest*)output
{
    return roswasmc_bounded_1_ocs2_msgs_resetRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsResetRequest:(roswasmc_bounded_1_ocs2_msgs_resetRequest const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_resetRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_msgsResetResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_msgs_resetResponse*)output
{
    return roswasmc_bounded_1_ocs2_msgs_resetResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_msgsResetResponse:(roswasmc_bounded_1_ocs2_msgs_resetResponse const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_msgs_resetResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_switched_model_msgsGait:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_ocs2_switched_model_msgs_gait*)output
{
    return roswasmc_bounded_1_ocs2_switched_model_msgs_gait_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_switched_model_msgsGait:(roswasmc_bounded_1_ocs2_switched_model_msgs_gait const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_switched_model_msgs_gait_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_switched_model_msgsGait_sequence:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_ocs2_switched_model_msgs_gait_sequence*)output
{
    return roswasmc_bounded_1_ocs2_switched_model_msgs_gait_sequence_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_switched_model_msgsGait_sequence:(roswasmc_bounded_1_ocs2_switched_model_msgs_gait_sequence const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_switched_model_msgs_gait_sequence_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_switched_model_msgsScheduled_gait_sequence:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_ocs2_switched_model_msgs_scheduled_gait_sequence*)output
{
    return roswasmc_bounded_1_ocs2_switched_model_msgs_scheduled_gait_sequence_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_switched_model_msgsScheduled_gait_sequence:(roswasmc_bounded_1_ocs2_switched_model_msgs_scheduled_gait_sequence const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_switched_model_msgs_scheduled_gait_sequence_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_switched_model_msgsTrajectory_requestRequest:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestRequest*)output
{
    return roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_switched_model_msgsTrajectory_requestRequest:(roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestRequest const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Ocs2_switched_model_msgsTrajectory_requestResponse:(void const*)bytes
                                                                      length:(size_t)length
                                                                        into:(roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestResponse*)output
{
    return roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Ocs2_switched_model_msgsTrajectory_requestResponse:
                    (roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestResponse const*)value
                                                                        into:(void*)output
                                                                    capacity:(size_t)capacity
                                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Sensor_msgsRegionOfInterest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_RegionOfInterest*)output
{
    return roswasmc_bounded_1_sensor_msgs_RegionOfInterest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Sensor_msgsRegionOfInterest:(roswasmc_bounded_1_sensor_msgs_RegionOfInterest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_1_sensor_msgs_RegionOfInterest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Sensor_msgsCameraInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_CameraInfo*)output
{
    return roswasmc_bounded_1_sensor_msgs_CameraInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Sensor_msgsCameraInfo:(roswasmc_bounded_1_sensor_msgs_CameraInfo const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_sensor_msgs_CameraInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_calibration_msgsCameraParameter:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_robot_calibration_msgs_CameraParameter*)output
{
    return roswasmc_bounded_1_robot_calibration_msgs_CameraParameter_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_calibration_msgsCameraParameter:(roswasmc_bounded_1_robot_calibration_msgs_CameraParameter const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_robot_calibration_msgs_CameraParameter_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_calibration_msgsExtendedCameraInfo:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_robot_calibration_msgs_ExtendedCameraInfo*)output
{
    return roswasmc_bounded_1_robot_calibration_msgs_ExtendedCameraInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_calibration_msgsExtendedCameraInfo:(roswasmc_bounded_1_robot_calibration_msgs_ExtendedCameraInfo const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_robot_calibration_msgs_ExtendedCameraInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Sensor_msgsPointField:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_PointField*)output
{
    return roswasmc_bounded_1_sensor_msgs_PointField_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Sensor_msgsPointField:(roswasmc_bounded_1_sensor_msgs_PointField const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_1_sensor_msgs_PointField_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Sensor_msgsPointCloud2:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_PointCloud2*)output
{
    return roswasmc_bounded_1_sensor_msgs_PointCloud2_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Sensor_msgsPointCloud2:(roswasmc_bounded_1_sensor_msgs_PointCloud2 const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_1_sensor_msgs_PointCloud2_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Sensor_msgsImage:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_sensor_msgs_Image*)output
{
    return roswasmc_bounded_1_sensor_msgs_Image_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Sensor_msgsImage:(roswasmc_bounded_1_sensor_msgs_Image const*)value
                                      into:(void*)output
                                  capacity:(size_t)capacity
                                    length:(size_t*)length
{
    return roswasmc_bounded_1_sensor_msgs_Image_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_calibration_msgsObservation:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_robot_calibration_msgs_Observation*)output
{
    return roswasmc_bounded_1_robot_calibration_msgs_Observation_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_calibration_msgsObservation:(roswasmc_bounded_1_robot_calibration_msgs_Observation const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_robot_calibration_msgs_Observation_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_calibration_msgsCalibrationData:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_robot_calibration_msgs_CalibrationData*)output
{
    return roswasmc_bounded_1_robot_calibration_msgs_CalibrationData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_calibration_msgsCalibrationData:(roswasmc_bounded_1_robot_calibration_msgs_CalibrationData const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_robot_calibration_msgs_CalibrationData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_calibration_msgsCaptureConfig:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_robot_calibration_msgs_CaptureConfig*)output
{
    return roswasmc_bounded_1_robot_calibration_msgs_CaptureConfig_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_calibration_msgsCaptureConfig:(roswasmc_bounded_1_robot_calibration_msgs_CaptureConfig const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_robot_calibration_msgs_CaptureConfig_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_calibration_msgsGripperLedCommandGoal:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandGoal*)output
{
    return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandGoal_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_calibration_msgsGripperLedCommandGoal:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandGoal const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandGoal_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_calibration_msgsGripperLedCommandResult:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult*)output
{
    return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_calibration_msgsGripperLedCommandResult:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_calibration_msgsGripperLedCommandFeedback:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback*)output
{
    return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_calibration_msgsGripperLedCommandFeedback:(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationFromLLRequest:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_robot_localization_FromLLRequest*)output
{
    return roswasmc_bounded_1_robot_localization_FromLLRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationFromLLRequest:(roswasmc_bounded_1_robot_localization_FromLLRequest const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_FromLLRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationFromLLResponse:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_robot_localization_FromLLResponse*)output
{
    return roswasmc_bounded_1_robot_localization_FromLLResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationFromLLResponse:(roswasmc_bounded_1_robot_localization_FromLLResponse const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_FromLLResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationGetStateRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_robot_localization_GetStateRequest*)output
{
    return roswasmc_bounded_1_robot_localization_GetStateRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationGetStateRequest:(roswasmc_bounded_1_robot_localization_GetStateRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_GetStateRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationGetStateResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_robot_localization_GetStateResponse*)output
{
    return roswasmc_bounded_1_robot_localization_GetStateResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationGetStateResponse:(roswasmc_bounded_1_robot_localization_GetStateResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_GetStateResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationSetDatumRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_robot_localization_SetDatumRequest*)output
{
    return roswasmc_bounded_1_robot_localization_SetDatumRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationSetDatumRequest:(roswasmc_bounded_1_robot_localization_SetDatumRequest const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_SetDatumRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationSetDatumResponse:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_robot_localization_SetDatumResponse*)output
{
    return roswasmc_bounded_1_robot_localization_SetDatumResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationSetDatumResponse:(roswasmc_bounded_1_robot_localization_SetDatumResponse const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_SetDatumResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationSetPoseRequest:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_robot_localization_SetPoseRequest*)output
{
    return roswasmc_bounded_1_robot_localization_SetPoseRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationSetPoseRequest:(roswasmc_bounded_1_robot_localization_SetPoseRequest const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_SetPoseRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationSetPoseResponse:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_1_robot_localization_SetPoseResponse*)output
{
    return roswasmc_bounded_1_robot_localization_SetPoseResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationSetPoseResponse:(roswasmc_bounded_1_robot_localization_SetPoseResponse const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_SetPoseResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationSetUTMZoneRequest:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_robot_localization_SetUTMZoneRequest*)output
{
    return roswasmc_bounded_1_robot_localization_SetUTMZoneRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationSetUTMZoneRequest:(roswasmc_bounded_1_robot_localization_SetUTMZoneRequest const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_SetUTMZoneRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationSetUTMZoneResponse:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_robot_localization_SetUTMZoneResponse*)output
{
    return roswasmc_bounded_1_robot_localization_SetUTMZoneResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationSetUTMZoneResponse:(roswasmc_bounded_1_robot_localization_SetUTMZoneResponse const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_SetUTMZoneResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationToLLRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_robot_localization_ToLLRequest*)output
{
    return roswasmc_bounded_1_robot_localization_ToLLRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationToLLRequest:(roswasmc_bounded_1_robot_localization_ToLLRequest const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_ToLLRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationToLLResponse:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_robot_localization_ToLLResponse*)output
{
    return roswasmc_bounded_1_robot_localization_ToLLResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationToLLResponse:(roswasmc_bounded_1_robot_localization_ToLLResponse const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_ToLLResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationToggleFilterProcessingRequest:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_robot_localization_ToggleFilterProcessingRequest*)output
{
    return roswasmc_bounded_1_robot_localization_ToggleFilterProcessingRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationToggleFilterProcessingRequest:(roswasmc_bounded_1_robot_localization_ToggleFilterProcessingRequest const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_ToggleFilterProcessingRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Robot_localizationToggleFilterProcessingResponse:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_robot_localization_ToggleFilterProcessingResponse*)output
{
    return roswasmc_bounded_1_robot_localization_ToggleFilterProcessingResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Robot_localizationToggleFilterProcessingResponse:(roswasmc_bounded_1_robot_localization_ToggleFilterProcessingResponse const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_robot_localization_ToggleFilterProcessingResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Taiji_trigger_nodePerformTaijiRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_taiji_trigger_node_PerformTaijiRequest*)output
{
    return roswasmc_bounded_1_taiji_trigger_node_PerformTaijiRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Taiji_trigger_nodePerformTaijiRequest:(roswasmc_bounded_1_taiji_trigger_node_PerformTaijiRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_taiji_trigger_node_PerformTaijiRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Taiji_trigger_nodePerformTaijiResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_taiji_trigger_node_PerformTaijiResponse*)output
{
    return roswasmc_bounded_1_taiji_trigger_node_PerformTaijiResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Taiji_trigger_nodePerformTaijiResponse:(roswasmc_bounded_1_taiji_trigger_node_PerformTaijiResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_taiji_trigger_node_PerformTaijiResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1User_pkgPiddebug:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_user_pkg_piddebug*)output
{
    return roswasmc_bounded_1_user_pkg_piddebug_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1User_pkgPiddebug:(roswasmc_bounded_1_user_pkg_piddebug const*)value
                                      into:(void*)output
                                  capacity:(size_t)capacity
                                    length:(size_t*)length
{
    return roswasmc_bounded_1_user_pkg_piddebug_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1User_pkgUwbdebug:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_user_pkg_uwbdebug*)output
{
    return roswasmc_bounded_1_user_pkg_uwbdebug_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1User_pkgUwbdebug:(roswasmc_bounded_1_user_pkg_uwbdebug const*)value
                                      into:(void*)output
                                  capacity:(size_t)capacity
                                    length:(size_t*)length
{
    return roswasmc_bounded_1_user_pkg_uwbdebug_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1WiimoteIrSourceInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_wiimote_IrSourceInfo*)output
{
    return roswasmc_bounded_1_wiimote_IrSourceInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1WiimoteIrSourceInfo:(roswasmc_bounded_1_wiimote_IrSourceInfo const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_1_wiimote_IrSourceInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1WiimoteState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_wiimote_State*)output
{
    return roswasmc_bounded_1_wiimote_State_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1WiimoteState:(roswasmc_bounded_1_wiimote_State const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_wiimote_State_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1WiimoteTimedSwitch:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_wiimote_TimedSwitch*)output
{
    return roswasmc_bounded_1_wiimote_TimedSwitch_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1WiimoteTimedSwitch:(roswasmc_bounded_1_wiimote_TimedSwitch const*)value
                                        into:(void*)output
                                    capacity:(size_t)capacity
                                      length:(size_t*)length
{
    return roswasmc_bounded_1_wiimote_TimedSwitch_encode(value, output, capacity, length);
}

@end
