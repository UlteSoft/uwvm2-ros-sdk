/** @file Records.m
 * @brief Implement genuine Objective-C full-record codec entry points.
 * @details Class methods delegate only canonical byte conversion to the
 * exact C interop catalog. No source-language application is replaced by C.
 */
#import <agibot/objectc/ros2_sdk_v1_1_0_main/Records.h>

@implementation AgibotRos2SdkV110MainRecords

+ (unsigned int)decodeRos2Aimdk_msgsMsgAgentPropertyIdType:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgAgentPropertyIdType:(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgAgentPropertiesValue:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgAgentPropertiesValue:(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgAgentProperties:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgAgentProperties:(roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgAlertCode:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AlertCode*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AlertCode_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgAlertCode:(roswasmc_bounded_2_aimdk_msgs_msg_AlertCode const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AlertCode_encode(value, output, capacity, length);
}

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

+ (unsigned int)decodeRos2Aimdk_msgsMsgMessageHeader:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMessageHeader:(roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgAlertCodeArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AlertCodeArray*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AlertCodeArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgAlertCodeArray:(roswasmc_bounded_2_aimdk_msgs_msg_AlertCodeArray const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AlertCodeArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioInfo*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioInfo:(roswasmc_bounded_2_aimdk_msgs_msg_AudioInfo const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioData*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioData:(roswasmc_bounded_2_aimdk_msgs_msg_AudioData const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioCapture:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioCapture*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioCapture_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioCapture:(roswasmc_bounded_2_aimdk_msgs_msg_AudioCapture const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioCapture_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioFile:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioFile*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioFile_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioFile:(roswasmc_bounded_2_aimdk_msgs_msg_AudioFile const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioFile_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioPlayback:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioPlayback*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioPlayback_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioPlayback:(roswasmc_bounded_2_aimdk_msgs_msg_AudioPlayback const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioPlayback_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioVadStateType:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioVadStateType:(roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgRequestHeader:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgRequestHeader:(roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgCommonRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgCommonRequest:(roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgResponseHeader:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgResponseHeader:(roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgCommonState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_CommonState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgCommonState:(roswasmc_bounded_2_aimdk_msgs_msg_CommonState const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgCommonResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgCommonResponse:(roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgCommonTaskRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskRequest*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgCommonTaskRequest:(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgCommonTaskResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgCommonTaskResponse:(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgCurrentVersion:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_CurrentVersion*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CurrentVersion_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgCurrentVersion:(roswasmc_bounded_2_aimdk_msgs_msg_CurrentVersion const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_CurrentVersion_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgDiagnosticType:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticType*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticType_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgDiagnosticType:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticType const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticType_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgDiagnosticInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfo*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgDiagnosticInfo:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfo const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgDiagnosticInfoArray:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfoArray*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfoArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgDiagnosticInfoArray:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfoArray const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfoArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgDomainErrorState:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgDomainErrorState:(roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgFaceEmojiStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgFaceEmojiStatus:(roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgFixLineIntroState:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_msg_FixLineIntroState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_FixLineIntroState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgFixLineIntroState:(roswasmc_bounded_2_aimdk_msgs_msg_FixLineIntroState const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_FixLineIntroState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgFocusRequester:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_FocusRequester*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_FocusRequester_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgFocusRequester:(roswasmc_bounded_2_aimdk_msgs_msg_FocusRequester const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_FocusRequester_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgFocusResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_FocusResponse*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_FocusResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgFocusResponse:(roswasmc_bounded_2_aimdk_msgs_msg_FocusResponse const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_FocusResponse_encode(value, output, capacity, length);
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

+ (unsigned int)decodeRos2Aimdk_msgsMsgQRCode:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_QRCode*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_QRCode_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgQRCode:(roswasmc_bounded_2_aimdk_msgs_msg_QRCode const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_QRCode_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgHRPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HRPoint*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HRPoint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgHRPoint:(roswasmc_bounded_2_aimdk_msgs_msg_HRPoint const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HRPoint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgHandCommand:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HandCommand*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgHandCommand:(roswasmc_bounded_2_aimdk_msgs_msg_HandCommand const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgHandType:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HandType*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandType_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgHandType:(roswasmc_bounded_2_aimdk_msgs_msg_HandType const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandType_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgHandCommandArray:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgHandCommandArray:(roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgHandState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HandState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgHandState:(roswasmc_bounded_2_aimdk_msgs_msg_HandState const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgHandTouchSensorData:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_msg_HandTouchSensorData*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandTouchSensorData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgHandTouchSensorData:(roswasmc_bounded_2_aimdk_msgs_msg_HandTouchSensorData const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandTouchSensorData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgHandStateArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgHandStateArray:(roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgHdsEventQuery:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HdsEventQuery*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HdsEventQuery_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgHdsEventQuery:(roswasmc_bounded_2_aimdk_msgs_msg_HdsEventQuery const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HdsEventQuery_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgHdsEventRecord:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HdsEventRecord*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HdsEventRecord_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgHdsEventRecord:(roswasmc_bounded_2_aimdk_msgs_msg_HdsEventRecord const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_HdsEventRecord_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgJointCommand:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_JointCommand*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgJointCommand:(roswasmc_bounded_2_aimdk_msgs_msg_JointCommand const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgJointCommandArray:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgJointCommandArray:(roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgJointState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_JointState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_JointState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgJointState:(roswasmc_bounded_2_aimdk_msgs_msg_JointState const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_JointState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgJointStateArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgJointStateArray:(roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcAction:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McAction*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McAction_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcAction:(roswasmc_bounded_2_aimdk_msgs_msg_McAction const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McAction_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcActionCommand:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcActionCommand:(roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcActionStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcActionStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcActionInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcActionInfo:(roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcBodyPoseStatus:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_msg_McBodyPoseStatus*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McBodyPoseStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcBodyPoseStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McBodyPoseStatus const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McBodyPoseStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcInputSource:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McInputSource*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcInputSource:(roswasmc_bounded_2_aimdk_msgs_msg_McInputSource const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcHandStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McHandStatus*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McHandStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcHandStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McHandStatus const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McHandStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcRuntimeModel:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McRuntimeModel*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McRuntimeModel_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcRuntimeModel:(roswasmc_bounded_2_aimdk_msgs_msg_McRuntimeModel const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McRuntimeModel_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcPlayerState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McPlayerState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McPlayerState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcPlayerState:(roswasmc_bounded_2_aimdk_msgs_msg_McPlayerState const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McPlayerState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcControlArea:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McControlArea*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcControlArea:(roswasmc_bounded_2_aimdk_msgs_msg_McControlArea const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcMotionType:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McMotionType*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McMotionType_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcMotionType:(roswasmc_bounded_2_aimdk_msgs_msg_McMotionType const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McMotionType_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcMotionStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McMotionStatus*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McMotionStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcMotionStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McMotionStatus const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McMotionStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcServoStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McServoStatus*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McServoStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcServoStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McServoStatus const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McServoStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcFsmState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McFsmState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McFsmState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcFsmState:(roswasmc_bounded_2_aimdk_msgs_msg_McFsmState const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McFsmState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcLocomotionSpeedMode:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedMode*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedMode_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcLocomotionSpeedMode:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedMode const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedMode_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcLocomotionSpeedBounds:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedBounds*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedBounds_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcLocomotionSpeedBounds:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedBounds const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedBounds_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedStatus*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedStatus const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcCommonState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McCommonState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McCommonState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcCommonState:(roswasmc_bounded_2_aimdk_msgs_msg_McCommonState const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McCommonState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcInputAction:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McInputAction*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcInputAction:(roswasmc_bounded_2_aimdk_msgs_msg_McInputAction const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcLocomotionVelocity:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcLocomotionVelocity:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgMcPresetMotion:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgMcPresetMotion:(roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Geometry_msgsMsgPose2D:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Pose2D*)output
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose2D_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Geometry_msgsMsgPose2D:(roswasmc_bounded_2_geometry_msgs_msg_Pose2D const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose2D_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgNaviPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_NaviPoint*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_NaviPoint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgNaviPoint:(roswasmc_bounded_2_aimdk_msgs_msg_NaviPoint const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_NaviPoint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPath:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_Path*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_Path_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPath:(roswasmc_bounded_2_aimdk_msgs_msg_Path const*)value
                                       into:(void*)output
                                   capacity:(size_t)capacity
                                     length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_Path_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPilotState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PilotState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PilotState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPilotState:(roswasmc_bounded_2_aimdk_msgs_msg_PilotState const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PilotState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPlayStateType:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PlayStateType*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PlayStateType_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPlayStateType:(roswasmc_bounded_2_aimdk_msgs_msg_PlayStateType const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PlayStateType_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPlayStateChange:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PlayStateChange*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PlayStateChange_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPlayStateChange:(roswasmc_bounded_2_aimdk_msgs_msg_PlayStateChange const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PlayStateChange_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgTtsPriorityLevel:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgTtsPriorityLevel:(roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPlayTtsRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPlayTtsRequest:(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPlayTtsResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPlayTtsResponse:(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPmuLedState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PmuLedState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PmuLedState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPmuLedState:(roswasmc_bounded_2_aimdk_msgs_msg_PmuLedState const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PmuLedState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPmuState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PmuState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PmuState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPmuState:(roswasmc_bounded_2_aimdk_msgs_msg_PmuState const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PmuState_encode(value, output, capacity, length);
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

+ (unsigned int)decodeRos2Geometry_msgsMsgVector3:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Vector3*)output
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Geometry_msgsMsgVector3:(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Geometry_msgsMsgTwist:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Twist*)output
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Geometry_msgsMsgTwist:(roswasmc_bounded_2_geometry_msgs_msg_Twist const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPncTaskRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PncTaskRequest*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PncTaskRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPncTaskRequest:(roswasmc_bounded_2_aimdk_msgs_msg_PncTaskRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PncTaskRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPncTaskResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PncTaskResponse*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PncTaskResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPncTaskResponse:(roswasmc_bounded_2_aimdk_msgs_msg_PncTaskResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PncTaskResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgSigSet:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_SigSet*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_SigSet_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgSigSet:(roswasmc_bounded_2_aimdk_msgs_msg_SigSet const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_SigSet_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPostProcSig:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PostProcSig*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PostProcSig_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPostProcSig:(roswasmc_bounded_2_aimdk_msgs_msg_PostProcSig const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PostProcSig_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgPostProcSigArray:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_msg_PostProcSigArray*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PostProcSigArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgPostProcSigArray:(roswasmc_bounded_2_aimdk_msgs_msg_PostProcSigArray const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_PostProcSigArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgProcessedAudioOutput:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgProcessedAudioOutput:(roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgQRPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_QRPoint*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_QRPoint_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgQRPoint:(roswasmc_bounded_2_aimdk_msgs_msg_QRPoint const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_QRPoint_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Geometry_msgsMsgPoint32:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Point32*)output
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point32_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Geometry_msgsMsgPoint32:(roswasmc_bounded_2_geometry_msgs_msg_Point32 const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point32_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Geometry_msgsMsgPolygon:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Polygon*)output
{
    return roswasmc_bounded_2_geometry_msgs_msg_Polygon_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Geometry_msgsMsgPolygon:(roswasmc_bounded_2_geometry_msgs_msg_Polygon const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Polygon_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgRegion:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_Region*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_Region_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgRegion:(roswasmc_bounded_2_aimdk_msgs_msg_Region const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_Region_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgRobotResource:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_RobotResource*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_RobotResource_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgRobotResource:(roswasmc_bounded_2_aimdk_msgs_msg_RobotResource const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_RobotResource_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgSlaveDevice:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_SlaveDevice*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_SlaveDevice_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgSlaveDevice:(roswasmc_bounded_2_aimdk_msgs_msg_SlaveDevice const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_SlaveDevice_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgSystemStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_SystemStatus*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_SystemStatus_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgSystemStatus:(roswasmc_bounded_2_aimdk_msgs_msg_SystemStatus const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_SystemStatus_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgSmSystemState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_SmSystemState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_SmSystemState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgSmSystemState:(roswasmc_bounded_2_aimdk_msgs_msg_SmSystemState const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_SmSystemState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgTaskMasterState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_TaskMasterState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_TaskMasterState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgTaskMasterState:(roswasmc_bounded_2_aimdk_msgs_msg_TaskMasterState const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_TaskMasterState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgTouchState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_TouchState*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_TouchState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgTouchState:(roswasmc_bounded_2_aimdk_msgs_msg_TouchState const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_TouchState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgUpperBodyCommandArray:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_2_aimdk_msgs_msg_UpperBodyCommandArray*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_UpperBodyCommandArray_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgUpperBodyCommandArray:(roswasmc_bounded_2_aimdk_msgs_msg_UpperBodyCommandArray const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_UpperBodyCommandArray_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request:(roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Request const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response:(roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Response const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvExecuteActionResource_Request:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvExecuteActionResource_Request:(roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Request const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvExecuteActionResource_Response:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvExecuteActionResource_Response:(roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Response const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetAllJointState_Request:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetAllJointState_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetAllJointState_Response:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetAllJointState_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetHandType_Request:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetHandType_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetHandType_Response:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetHandType_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetHdsEventHistory_Request:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetHdsEventHistory_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Request const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetHdsEventHistory_Response:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetHdsEventHistory_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Response const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcAction_Request:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcAction_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcAction_Response:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcAction_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Request const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Response const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcPresetMotionState_Request:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcPresetMotionState_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Request const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcPresetMotionState_Response:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcPresetMotionState_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Response const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Request const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Response const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMute_Request:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMute_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMute_Response:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMute_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetRobotResources_Request:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetRobotResources_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Request const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetRobotResources_Response:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetRobotResources_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetStoredMapByName_Request:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetStoredMapByName_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Request const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Nav_msgsMsgMapMetaData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_nav_msgs_msg_MapMetaData*)output
{
    return roswasmc_bounded_2_nav_msgs_msg_MapMetaData_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Nav_msgsMsgMapMetaData:(roswasmc_bounded_2_nav_msgs_msg_MapMetaData const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length
{
    return roswasmc_bounded_2_nav_msgs_msg_MapMetaData_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetStoredMapByName_Response:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetStoredMapByName_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Response const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetSystemState_Request:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetSystemState_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Request const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetSystemState_Response:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetSystemState_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Response const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetVolume_Request:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetVolume_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGetVolume_Response:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGetVolume_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGroupControlTimeSync_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGroupControlTimeSync_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvGroupControlTimeSync_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvGroupControlTimeSync_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvMigrateSystemState_Request:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvMigrateSystemState_Request:(roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Request const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvMigrateSystemState_Response:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvMigrateSystemState_Response:(roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Response const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayAudioFile_Request:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayAudioFile_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Request const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayAudioFile_Response:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayAudioFile_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Response const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayEmoji_Request:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayEmoji_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayEmoji_Response:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayEmoji_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayEmojiGroup_Request:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayEmojiGroup_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Request const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayEmojiGroup_Response:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayEmojiGroup_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Response const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayTts_Request:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayTts_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayTts_Response:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayTts_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayVideo_Request:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayVideo_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayVideo_Response:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayVideo_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayVideoGroup_Request:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayVideoGroup_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Request const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayVideoGroup_Response:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayVideoGroup_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Response const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvRequestAudioFocus_Request:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvRequestAudioFocus_Request:(roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Request const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvRequestAudioFocus_Response:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvRequestAudioFocus_Response:(roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Response const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcAction_Request:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcAction_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcAction_Response:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcAction_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcInputSource_Request:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcInputSource_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcInputSource_Response:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcInputSource_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Request const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Response const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMute_Request:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMute_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMute_Response:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMute_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetPmuLed_Request:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetPmuLed_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Request const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetPmuLed_Response:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetPmuLed_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Response const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetVolume_Request:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetVolume_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvSetVolume_Response:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvSetVolume_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvStopAudioPlay_Request:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Request*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvStopAudioPlay_Request:(roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Request const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsSrvStopAudioPlay_Response:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Response*)output
{
    return roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsSrvStopAudioPlay_Response:(roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Response const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Response_encode(value, output, capacity, length);
}

@end
