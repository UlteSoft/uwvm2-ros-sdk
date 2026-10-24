/** @file Records.h
 * @brief Complete original fourier types through genuine Objective-C class dispatch.
 * @details The selected LLVM 23 Objective-C runtime must be supplied by the
 * shared native-language owner. Caller-owned C-compatible record storage
 * preserves every original field. No Foundation, ARC or ROS grant is inferred.
 */
#pragma once
#import <objc/Object.h>
#include <fourier/c/ros1/fourier-ros1-aurora-bridge-v1-complete/bounded_records.h>

@interface FourierRos1AuroraBridgeV1Records : Object
/** @brief Decode all original uwvm_fourier_bridge/MotionRecipe fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeMotionRecipe:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeMotionRecipe:(roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/ExecuteMoveRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeExecuteMoveRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeExecuteMoveRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/ExecuteMoveResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeExecuteMoveResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeExecuteMoveResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetBaseDataRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetBaseDataRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetBaseDataRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetBaseDataResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetBaseDataResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetBaseDataResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetCartesianStateRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetCartesianStateResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetContactDataRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetContactDataRequest:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetContactDataRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetContactDataResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetContactDataResponse:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetContactDataResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetFsmNameRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetFsmNameRequest:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetFsmNameRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetFsmNameResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetFsmNameResponse:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetFsmNameResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetFsmStateRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetFsmStateRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetFsmStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetFsmStateResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetFsmStateResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetFsmStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetGroupMotionStateRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetGroupMotionStateResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetGroupMotorCfgRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetGroupMotorCfgResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetGroupStateRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupStateRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetGroupStateResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetGroupStateResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetGroupStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetSnapshotRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetSnapshotRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetSnapshotRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GroupState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGroupState:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_uwvm_fourier_bridge_GroupState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGroupState:(roswasmc_bounded_1_uwvm_fourier_bridge_GroupState const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/Status fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_uwvm_fourier_bridge_Status*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeStatus:(roswasmc_bounded_1_uwvm_fourier_bridge_Status const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetSnapshotResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetSnapshotResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetSnapshotResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetStandPoseRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetStandPoseRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetStandPoseRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetStandPoseResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetStandPoseResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetStandPoseResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetUpperFsmNameRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetUpperFsmNameResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetUpperFsmStateRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetUpperFsmStateResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetVelocitySourceRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetVelocitySourceResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetVelocitySourceNameRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GetVelocitySourceNameResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/GroupValues fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeGroupValues:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeGroupValues:(roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetFsmStateRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetFsmStateRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetFsmStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetFsmStateResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetFsmStateResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetFsmStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetGroupCommandRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetGroupCommandResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetMotorCfgPdRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetMotorCfgPdResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetStandPoseRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetStandPoseRequest:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetStandPoseRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetStandPoseResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetStandPoseResponse:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetStandPoseResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetUpperFsmStateRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetUpperFsmStateResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetVelocityRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetVelocityRequest:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetVelocityRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetVelocityResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetVelocityResponse:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetVelocityResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetVelocitySourceRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/SetVelocitySourceResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse:(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/VelocityCommand fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeVelocityCommand:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeVelocityCommand:(roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest:(void const*)bytes
                                                                      length:(size_t)length
                                                                        into:(roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest:
                    (roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest const*)value
                                                                        into:(void*)output
                                                                    capacity:(size_t)capacity
                                                                      length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:(roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse:
                    (roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse const*)value
                                                                         into:(void*)output
                                                                     capacity:(size_t)capacity
                                                                       length:(size_t*)length;

@end
