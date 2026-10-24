/** @file Records.m
 * @brief Implement genuine Objective-C full-record codec entry points.
 * @details Class methods delegate only canonical byte conversion to the
 * exact C interop catalog. No source-language application is replaced by C.
 */
#import <fourier/objectc/ros2/aurora_bridge_v1/Records.h>

@implementation FourierRos2AuroraBridgeV1Records

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeMsgGroupState:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeMsgGroupState:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeMsgGroupValues:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeMsgGroupValues:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeMsgMotionRecipe:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeMsgMotionRecipe:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeMsgStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeMsgStatus:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeMsgVelocityCommand:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeMsgVelocityCommand:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response:(void const*)bytes
                                                                      length:(size_t)length
                                                                        into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response:
                    (roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response const*)value
                                                                        into:(void*)output
                                                                    capacity:(size_t)capacity
                                                                      length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request:
                    (roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request const*)value
                                                                         into:(void*)output
                                                                     capacity:(size_t)capacity
                                                                       length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response:(void const*)bytes
                                                                        length:(size_t)length
                                                                          into:
                                                                              (roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response:
                    (roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response const*)value
                                                                          into:(void*)output
                                                                      capacity:(size_t)capacity
                                                                        length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request:(void const*)bytes
                                                                          length:(size_t)length
                                                                            into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request*)
                                                                                     output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request:
                    (roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request const*)value
                                                                            into:(void*)output
                                                                        capacity:(size_t)capacity
                                                                          length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_encode(value, output, capacity, length);
}

+ (unsigned int)
    decodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response*)output
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_decode(bytes, length, output);
}

+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response:
                    (roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response const*)value
                                                                             into:(void*)output
                                                                         capacity:(size_t)capacity
                                                                           length:(size_t*)length
{
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_encode(value, output, capacity, length);
}

@end
