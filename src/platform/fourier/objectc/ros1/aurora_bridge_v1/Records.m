/** @file Records.m
 * @brief Implement genuine Objective-C full-record codec entry points.
 * @details Class methods delegate only canonical byte conversion to the
 * exact C interop catalog. No source-language application is replaced by C.
 */
#import <fourier/objectc/ros1/aurora_bridge_v1/Records.h>

@implementation FourierRos1AuroraBridgeV1Records

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeMotionRecipe:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeMotionRecipe:(roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeExecuteMoveRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeExecuteMoveRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeExecuteMoveResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeExecuteMoveResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetBaseDataRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetBaseDataRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetBaseDataResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetBaseDataResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetContactDataRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetContactDataRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetContactDataResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetContactDataResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetFsmNameRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetFsmNameRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetFsmNameResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetFsmNameResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetFsmStateRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetFsmStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetFsmStateResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetFsmStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupStateRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupStateResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetSnapshotRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetSnapshotRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGroupState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_uwvm_fourier_bridge_GroupState*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGroupState:(roswasmc_bounded_1_uwvm_fourier_bridge_GroupState const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_uwvm_fourier_bridge_Status*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_Status_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeStatus:(roswasmc_bounded_1_uwvm_fourier_bridge_Status const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_Status_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetSnapshotResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetSnapshotResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetStandPoseRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetStandPoseRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetStandPoseResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetStandPoseResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGroupValues:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGroupValues:(roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetFsmStateRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetFsmStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetFsmStateResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetFsmStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetStandPoseRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetStandPoseRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetStandPoseResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetStandPoseResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetVelocityRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetVelocityRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetVelocityResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetVelocityResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeVelocityCommand:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeVelocityCommand:(roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest:(void const*)bytes
                                                                      length:(size_t)length
                                                                        into:(roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest:
                    (roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest const*)value
                                                                        into:(void*)output
                                                                    capacity:(size_t)capacity
                                                                      length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:(roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse*)output
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse:
                    (roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse const*)value
                                                                         into:(void*)output
                                                                     capacity:(size_t)capacity
                                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_encode(value, output, capacity, length);
}

@end
