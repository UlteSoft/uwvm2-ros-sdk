/** @file Records.m
 * @brief Implement genuine Objective-C full-record codec entry points.
 * @details Class methods delegate only canonical byte conversion to the
 * exact C interop catalog. No source-language application is replaced by C.
 */
#import <agibot/objectc/ros2_sdk_v1_1_0_rl/Records.h>

@implementation AgibotRos2SdkV110RlRecords

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

+ (unsigned int)decodeRos2Aimdk_msgsMsgModuleChannelInfo:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgModuleChannelInfo:(roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgModuleRpcInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgModuleRpcInfo:(roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgModuleResourceInfo:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgModuleResourceInfo:(roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgThreadResourceInfo:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgThreadResourceInfo:(roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgProcessResourceInfo:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgProcessResourceInfo:(roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Aimdk_msgsMsgProcessInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo*)output
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Aimdk_msgsMsgProcessInfo:(roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length
{
    return roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_encode(value, output, capacity, length);
}

@end
