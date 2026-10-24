/** @file Records.h
 * @brief Complete original fourier types through genuine Objective-C class dispatch.
 * @details The selected LLVM 23 Objective-C runtime must be supplied by the
 * shared native-language owner. Caller-owned C-compatible record storage
 * preserves every original field. No Foundation, ARC or ROS grant is inferred.
 */
#pragma once
#import <objc/Object.h>
#include <fourier/c/ros2/fourier-ros2-aurora-bridge-v1-complete/bounded_records.h>

@interface FourierRos2AuroraBridgeV1Records : Object
/** @brief Decode all original uwvm_fourier_bridge/msg/GroupState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeMsgGroupState:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeMsgGroupState:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/msg/GroupValues fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeMsgGroupValues:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeMsgGroupValues:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/msg/MotionRecipe fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeMsgMotionRecipe:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeMsgMotionRecipe:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/msg/Status fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeMsgStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeMsgStatus:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/msg/VelocityCommand fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeMsgVelocityCommand:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeMsgVelocityCommand:(roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/ExecuteMove_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/ExecuteMove_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetBaseData_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetBaseData_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetCartesianState_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetCartesianState_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetContactData_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetContactData_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetFsmName_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetFsmName_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetFsmState_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetFsmState_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetGroupMotionState_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request:(void const*)bytes
                                                                     length:(size_t)length
                                                                       into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request const*)value
                                                                       into:(void*)output
                                                                   capacity:(size_t)capacity
                                                                     length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetGroupMotionState_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response:(void const*)bytes
                                                                      length:(size_t)length
                                                                        into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response:
                    (roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response const*)value
                                                                        into:(void*)output
                                                                    capacity:(size_t)capacity
                                                                      length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetGroupState_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetGroupState_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetSnapshot_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetSnapshot_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetStandPose_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetStandPose_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetUpperFsmName_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetUpperFsmName_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetUpperFsmState_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetUpperFsmState_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetVelocitySource_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetVelocitySource_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetVelocitySourceName_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request:(void const*)bytes
                                                                       length:(size_t)length
                                                                         into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request:
                    (roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request const*)value
                                                                         into:(void*)output
                                                                     capacity:(size_t)capacity
                                                                       length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/GetVelocitySourceName_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response:(void const*)bytes
                                                                        length:(size_t)length
                                                                          into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response*)
                                                                                   output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response:
                    (roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response const*)value
                                                                          into:(void*)output
                                                                      capacity:(size_t)capacity
                                                                        length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetFsmState_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetFsmState_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetGroupCommand_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request:(void const*)bytes
                                                                 length:(size_t)length
                                                                   into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request const*)value
                                                                   into:(void*)output
                                                               capacity:(size_t)capacity
                                                                 length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetGroupCommand_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetMotorCfgPd_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetMotorCfgPd_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetStandPose_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetStandPose_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetUpperFsmState_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetUpperFsmState_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetVelocity_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetVelocity_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetVelocitySource_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/SetVelocitySource_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request:(void const*)bytes
                                                                          length:(size_t)length
                                                                            into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request*)
                                                                                     output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request:
                    (roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request const*)value
                                                                            into:(void*)output
                                                                        capacity:(size_t)capacity
                                                                          length:(size_t*)length;

/** @brief Decode all original uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)
    decodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response:
                    (roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response const*)value
                                                                             into:(void*)output
                                                                         capacity:(size_t)capacity
                                                                           length:(size_t*)length;

@end
