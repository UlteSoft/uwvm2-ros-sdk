/** @file Records.m
 * @brief Implement genuine Objective-C full-record codec entry points.
 * @details Class methods delegate only canonical byte conversion to the
 * exact C interop catalog. No source-language application is replaced by C.
 */
#import <leju/objectc/ros1/main_packaged_ik/Records.h>

@implementation LejuRos1MainPackagedIkRecords

+ (unsigned int)decodeRos1Motion_capture_ikArmHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_motion_capture_ik_armHandPose*)output
{
    return roswasmc_bounded_1_motion_capture_ik_armHandPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikArmHandPose:(roswasmc_bounded_1_motion_capture_ik_armHandPose const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_armHandPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikArmHandPoseFree:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_motion_capture_ik_armHandPoseFree*)output
{
    return roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikArmHandPoseFree:(roswasmc_bounded_1_motion_capture_ik_armHandPoseFree const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikChangeArmCtrlModeRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest*)output
{
    return roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikChangeArmCtrlModeRequest:(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikChangeArmCtrlModeResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse*)output
{
    return roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikChangeArmCtrlModeResponse:(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_motion_capture_ik_handPose*)output
{
    return roswasmc_bounded_1_motion_capture_ik_handPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikHandPose:(roswasmc_bounded_1_motion_capture_ik_handPose const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_handPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikIkSolveError:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_motion_capture_ik_ikSolveError*)output
{
    return roswasmc_bounded_1_motion_capture_ik_ikSolveError_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikIkSolveError:(roswasmc_bounded_1_motion_capture_ik_ikSolveError const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_ikSolveError_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikIkSolveParam:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_motion_capture_ik_ikSolveParam*)output
{
    return roswasmc_bounded_1_motion_capture_ik_ikSolveParam_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikIkSolveParam:(roswasmc_bounded_1_motion_capture_ik_ikSolveParam const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_ikSolveParam_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikRecordArmHandPose:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_motion_capture_ik_recordArmHandPose*)output
{
    return roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikRecordArmHandPose:(roswasmc_bounded_1_motion_capture_ik_recordArmHandPose const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikRecordArmHandPoseFree:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree*)output
{
    return roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikRecordArmHandPoseFree:(roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikRobotArmQVVD:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_motion_capture_ik_robotArmQVVD*)output
{
    return roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikRobotArmQVVD:(roswasmc_bounded_1_motion_capture_ik_robotArmQVVD const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_encode(value, output, capacity, length);
}

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

+ (unsigned int)decodeRos1Motion_capture_ikRobotHandPosition:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_motion_capture_ik_robotHandPosition*)output
{
    return roswasmc_bounded_1_motion_capture_ik_robotHandPosition_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikRobotHandPosition:(roswasmc_bounded_1_motion_capture_ik_robotHandPosition const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_robotHandPosition_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikTwoArmHandPose:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPose*)output
{
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikTwoArmHandPose:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPose const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikTwoArmHandPoseCmd:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd*)output
{
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikTwoArmHandPoseCmd:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikTwoArmHandPoseFree:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree*)output
{
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikTwoArmHandPoseFree:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Motion_capture_ikTwoArmHandPoseCmdFree:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree*)output
{
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Motion_capture_ikTwoArmHandPoseCmdFree:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_encode(value, output, capacity, length);
}

@end
