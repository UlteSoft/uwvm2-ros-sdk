/** @file Records.h
 * @brief Complete original agibot types through genuine Objective-C class dispatch.
 * @details The selected LLVM 23 Objective-C runtime must be supplied by the
 * shared native-language owner. Caller-owned C-compatible record storage
 * preserves every original field. No Foundation, ARC or ROS grant is inferred.
 */
#pragma once
#import <objc/Object.h>
#include <agibot/c/ros2/agibot-ros2-sdk-v1-1-0-main-complete/bounded_records.h>

@interface AgibotRos2SdkV110MainRecords : Object
/** @brief Decode all original aimdk_msgs/msg/AgentPropertyIdType fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgAgentPropertyIdType:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgAgentPropertyIdType:(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/AgentPropertiesValue fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgAgentPropertiesValue:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgAgentPropertiesValue:(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/AgentProperties fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgAgentProperties:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgAgentProperties:(roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/AlertCode fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgAlertCode:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AlertCode*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgAlertCode:(roswasmc_bounded_2_aimdk_msgs_msg_AlertCode const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

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

/** @brief Decode all original aimdk_msgs/msg/MessageHeader fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMessageHeader:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMessageHeader:(roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/AlertCodeArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgAlertCodeArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AlertCodeArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgAlertCodeArray:(roswasmc_bounded_2_aimdk_msgs_msg_AlertCodeArray const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/AudioInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioInfo:(roswasmc_bounded_2_aimdk_msgs_msg_AudioInfo const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/AudioData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioData:(roswasmc_bounded_2_aimdk_msgs_msg_AudioData const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/AudioCapture fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioCapture:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioCapture*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioCapture:(roswasmc_bounded_2_aimdk_msgs_msg_AudioCapture const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/AudioFile fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioFile:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioFile*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioFile:(roswasmc_bounded_2_aimdk_msgs_msg_AudioFile const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/AudioPlayback fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioPlayback:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioPlayback*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioPlayback:(roswasmc_bounded_2_aimdk_msgs_msg_AudioPlayback const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/AudioVadStateType fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgAudioVadStateType:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgAudioVadStateType:(roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/RequestHeader fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgRequestHeader:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgRequestHeader:(roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/CommonRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgCommonRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgCommonRequest:(roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/ResponseHeader fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgResponseHeader:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgResponseHeader:(roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/CommonState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgCommonState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_CommonState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgCommonState:(roswasmc_bounded_2_aimdk_msgs_msg_CommonState const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/CommonResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgCommonResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgCommonResponse:(roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/CommonTaskRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgCommonTaskRequest:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgCommonTaskRequest:(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskRequest const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/CommonTaskResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgCommonTaskResponse:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgCommonTaskResponse:(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/CurrentVersion fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgCurrentVersion:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_CurrentVersion*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgCurrentVersion:(roswasmc_bounded_2_aimdk_msgs_msg_CurrentVersion const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/DiagnosticType fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgDiagnosticType:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticType*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgDiagnosticType:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticType const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/DiagnosticInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgDiagnosticInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgDiagnosticInfo:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfo const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/DiagnosticInfoArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgDiagnosticInfoArray:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfoArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgDiagnosticInfoArray:(roswasmc_bounded_2_aimdk_msgs_msg_DiagnosticInfoArray const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/DomainErrorState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgDomainErrorState:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgDomainErrorState:(roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/FaceEmojiStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgFaceEmojiStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgFaceEmojiStatus:(roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/FixLineIntroState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgFixLineIntroState:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_msg_FixLineIntroState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgFixLineIntroState:(roswasmc_bounded_2_aimdk_msgs_msg_FixLineIntroState const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/FocusRequester fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgFocusRequester:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_FocusRequester*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgFocusRequester:(roswasmc_bounded_2_aimdk_msgs_msg_FocusRequester const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/FocusResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgFocusResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_FocusResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgFocusResponse:(roswasmc_bounded_2_aimdk_msgs_msg_FocusResponse const*)value
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

/** @brief Decode all original aimdk_msgs/msg/QRCode fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgQRCode:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_QRCode*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgQRCode:(roswasmc_bounded_2_aimdk_msgs_msg_QRCode const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/HRPoint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgHRPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HRPoint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgHRPoint:(roswasmc_bounded_2_aimdk_msgs_msg_HRPoint const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/HandCommand fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgHandCommand:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HandCommand*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgHandCommand:(roswasmc_bounded_2_aimdk_msgs_msg_HandCommand const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/HandType fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgHandType:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HandType*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgHandType:(roswasmc_bounded_2_aimdk_msgs_msg_HandType const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/HandCommandArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgHandCommandArray:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgHandCommandArray:(roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/HandState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgHandState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HandState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgHandState:(roswasmc_bounded_2_aimdk_msgs_msg_HandState const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/HandTouchSensorData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgHandTouchSensorData:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_msg_HandTouchSensorData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgHandTouchSensorData:(roswasmc_bounded_2_aimdk_msgs_msg_HandTouchSensorData const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/HandStateArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgHandStateArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgHandStateArray:(roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/HdsEventQuery fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgHdsEventQuery:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HdsEventQuery*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgHdsEventQuery:(roswasmc_bounded_2_aimdk_msgs_msg_HdsEventQuery const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/HdsEventRecord fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgHdsEventRecord:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_HdsEventRecord*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgHdsEventRecord:(roswasmc_bounded_2_aimdk_msgs_msg_HdsEventRecord const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/JointCommand fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgJointCommand:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_JointCommand*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgJointCommand:(roswasmc_bounded_2_aimdk_msgs_msg_JointCommand const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/JointCommandArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgJointCommandArray:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgJointCommandArray:(roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/JointState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgJointState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_JointState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgJointState:(roswasmc_bounded_2_aimdk_msgs_msg_JointState const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/JointStateArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgJointStateArray:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgJointStateArray:(roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McAction fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcAction:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McAction*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcAction:(roswasmc_bounded_2_aimdk_msgs_msg_McAction const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McActionCommand fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcActionCommand:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcActionCommand:(roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McActionStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcActionStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcActionStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McActionInfo fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcActionInfo:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcActionInfo:(roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McBodyPoseStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcBodyPoseStatus:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_msg_McBodyPoseStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcBodyPoseStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McBodyPoseStatus const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McInputSource fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcInputSource:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McInputSource*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcInputSource:(roswasmc_bounded_2_aimdk_msgs_msg_McInputSource const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McHandStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcHandStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McHandStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcHandStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McHandStatus const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McRuntimeModel fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcRuntimeModel:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McRuntimeModel*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcRuntimeModel:(roswasmc_bounded_2_aimdk_msgs_msg_McRuntimeModel const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McPlayerState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcPlayerState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McPlayerState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcPlayerState:(roswasmc_bounded_2_aimdk_msgs_msg_McPlayerState const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McControlArea fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcControlArea:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McControlArea*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcControlArea:(roswasmc_bounded_2_aimdk_msgs_msg_McControlArea const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McMotionType fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcMotionType:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McMotionType*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcMotionType:(roswasmc_bounded_2_aimdk_msgs_msg_McMotionType const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McMotionStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcMotionStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McMotionStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcMotionStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McMotionStatus const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McServoStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcServoStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McServoStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcServoStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McServoStatus const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McFsmState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcFsmState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McFsmState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcFsmState:(roswasmc_bounded_2_aimdk_msgs_msg_McFsmState const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McLocomotionSpeedMode fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcLocomotionSpeedMode:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedMode*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcLocomotionSpeedMode:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedMode const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McLocomotionSpeedBounds fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcLocomotionSpeedBounds:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedBounds*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcLocomotionSpeedBounds:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedBounds const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McLocomotionSpeedStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedStatus const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McCommonState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcCommonState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McCommonState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcCommonState:(roswasmc_bounded_2_aimdk_msgs_msg_McCommonState const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McInputAction fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcInputAction:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McInputAction*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcInputAction:(roswasmc_bounded_2_aimdk_msgs_msg_McInputAction const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McLocomotionVelocity fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcLocomotionVelocity:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcLocomotionVelocity:(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/McPresetMotion fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgMcPresetMotion:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgMcPresetMotion:(roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original geometry_msgs/msg/Pose2D fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Geometry_msgsMsgPose2D:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Pose2D*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Geometry_msgsMsgPose2D:(roswasmc_bounded_2_geometry_msgs_msg_Pose2D const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/NaviPoint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgNaviPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_NaviPoint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgNaviPoint:(roswasmc_bounded_2_aimdk_msgs_msg_NaviPoint const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/Path fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPath:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_Path*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPath:(roswasmc_bounded_2_aimdk_msgs_msg_Path const*)value
                                       into:(void*)output
                                   capacity:(size_t)capacity
                                     length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/PilotState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPilotState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PilotState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPilotState:(roswasmc_bounded_2_aimdk_msgs_msg_PilotState const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/PlayStateType fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPlayStateType:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PlayStateType*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPlayStateType:(roswasmc_bounded_2_aimdk_msgs_msg_PlayStateType const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/PlayStateChange fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPlayStateChange:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PlayStateChange*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPlayStateChange:(roswasmc_bounded_2_aimdk_msgs_msg_PlayStateChange const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/TtsPriorityLevel fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgTtsPriorityLevel:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgTtsPriorityLevel:(roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/PlayTtsRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPlayTtsRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPlayTtsRequest:(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/PlayTtsResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPlayTtsResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPlayTtsResponse:(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/PmuLedState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPmuLedState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PmuLedState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPmuLedState:(roswasmc_bounded_2_aimdk_msgs_msg_PmuLedState const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/PmuState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPmuState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PmuState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPmuState:(roswasmc_bounded_2_aimdk_msgs_msg_PmuState const*)value
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

/** @brief Decode all original geometry_msgs/msg/Vector3 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Geometry_msgsMsgVector3:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Vector3*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Geometry_msgsMsgVector3:(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original geometry_msgs/msg/Twist fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Geometry_msgsMsgTwist:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Twist*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Geometry_msgsMsgTwist:(roswasmc_bounded_2_geometry_msgs_msg_Twist const*)value
                                           into:(void*)output
                                       capacity:(size_t)capacity
                                         length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/PncTaskRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPncTaskRequest:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PncTaskRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPncTaskRequest:(roswasmc_bounded_2_aimdk_msgs_msg_PncTaskRequest const*)value
                                                 into:(void*)output
                                             capacity:(size_t)capacity
                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/PncTaskResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPncTaskResponse:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PncTaskResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPncTaskResponse:(roswasmc_bounded_2_aimdk_msgs_msg_PncTaskResponse const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/SigSet fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgSigSet:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_SigSet*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgSigSet:(roswasmc_bounded_2_aimdk_msgs_msg_SigSet const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/PostProcSig fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPostProcSig:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_PostProcSig*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPostProcSig:(roswasmc_bounded_2_aimdk_msgs_msg_PostProcSig const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/PostProcSigArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPostProcSigArray:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_msg_PostProcSigArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPostProcSigArray:(roswasmc_bounded_2_aimdk_msgs_msg_PostProcSigArray const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/ProcessedAudioOutput fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgProcessedAudioOutput:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgProcessedAudioOutput:(roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/QRPoint fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgQRPoint:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_QRPoint*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgQRPoint:(roswasmc_bounded_2_aimdk_msgs_msg_QRPoint const*)value
                                          into:(void*)output
                                      capacity:(size_t)capacity
                                        length:(size_t*)length;

/** @brief Decode all original geometry_msgs/msg/Point32 fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Geometry_msgsMsgPoint32:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Point32*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Geometry_msgsMsgPoint32:(roswasmc_bounded_2_geometry_msgs_msg_Point32 const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original geometry_msgs/msg/Polygon fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Geometry_msgsMsgPolygon:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_geometry_msgs_msg_Polygon*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Geometry_msgsMsgPolygon:(roswasmc_bounded_2_geometry_msgs_msg_Polygon const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/Region fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgRegion:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_Region*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgRegion:(roswasmc_bounded_2_aimdk_msgs_msg_Region const*)value
                                         into:(void*)output
                                     capacity:(size_t)capacity
                                       length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/RobotResource fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgRobotResource:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_RobotResource*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgRobotResource:(roswasmc_bounded_2_aimdk_msgs_msg_RobotResource const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/SlaveDevice fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgSlaveDevice:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_SlaveDevice*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgSlaveDevice:(roswasmc_bounded_2_aimdk_msgs_msg_SlaveDevice const*)value
                                              into:(void*)output
                                          capacity:(size_t)capacity
                                            length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/SystemStatus fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgSystemStatus:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_SystemStatus*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgSystemStatus:(roswasmc_bounded_2_aimdk_msgs_msg_SystemStatus const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/SmSystemState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgSmSystemState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_SmSystemState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgSmSystemState:(roswasmc_bounded_2_aimdk_msgs_msg_SmSystemState const*)value
                                                into:(void*)output
                                            capacity:(size_t)capacity
                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/TaskMasterState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgTaskMasterState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_TaskMasterState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgTaskMasterState:(roswasmc_bounded_2_aimdk_msgs_msg_TaskMasterState const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/TouchState fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgTouchState:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_msg_TouchState*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgTouchState:(roswasmc_bounded_2_aimdk_msgs_msg_TouchState const*)value
                                             into:(void*)output
                                         capacity:(size_t)capacity
                                           length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/msg/UpperBodyCommandArray fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgUpperBodyCommandArray:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_2_aimdk_msgs_msg_UpperBodyCommandArray*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgUpperBodyCommandArray:(roswasmc_bounded_2_aimdk_msgs_msg_UpperBodyCommandArray const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/AbandonAudioFocus_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request:(roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Request const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/AbandonAudioFocus_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response:(roswasmc_bounded_2_aimdk_msgs_srv_AbandonAudioFocus_Response const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/ExecuteActionResource_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvExecuteActionResource_Request:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvExecuteActionResource_Request:(roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Request const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/ExecuteActionResource_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvExecuteActionResource_Response:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvExecuteActionResource_Response:(roswasmc_bounded_2_aimdk_msgs_srv_ExecuteActionResource_Response const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetAllJointState_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetAllJointState_Request:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetAllJointState_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetAllJointState_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetAllJointState_Response:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetAllJointState_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetCurrentInputSource_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetCurrentInputSource_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetHandType_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetHandType_Request:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetHandType_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetHandType_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetHandType_Response:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetHandType_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetHdsEventHistory_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetHdsEventHistory_Request:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetHdsEventHistory_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Request const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetHdsEventHistory_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetHdsEventHistory_Response:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetHdsEventHistory_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetHdsEventHistory_Response const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetMcAction_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcAction_Request:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcAction_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetMcAction_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcAction_Response:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcAction_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Request const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response:(void const*)bytes
                                                                    length:(size_t)length
                                                                      into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcLocomotionSpeedStatus_Response const*)value
                                                                      into:(void*)output
                                                                  capacity:(size_t)capacity
                                                                    length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetMcPresetMotionState_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcPresetMotionState_Request:(void const*)bytes
                                                               length:(size_t)length
                                                                 into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcPresetMotionState_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Request const*)value
                                                                 into:(void*)output
                                                             capacity:(size_t)capacity
                                                               length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetMcPresetMotionState_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMcPresetMotionState_Response:(void const*)bytes
                                                                length:(size_t)length
                                                                  into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMcPresetMotionState_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetMcPresetMotionState_Response const*)value
                                                                  into:(void*)output
                                                              capacity:(size_t)capacity
                                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetMicSourceRequest_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Request const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetMicSourceRequest_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetMicSourceRequest_Response const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetMute_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMute_Request:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMute_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetMute_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetMute_Response:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetMute_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetRobotResources_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetRobotResources_Request:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetRobotResources_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Request const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetRobotResources_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetRobotResources_Response:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetRobotResources_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetStoredMapByName_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetStoredMapByName_Request:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetStoredMapByName_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Request const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original nav_msgs/msg/MapMetaData fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Nav_msgsMsgMapMetaData:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_nav_msgs_msg_MapMetaData*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Nav_msgsMsgMapMetaData:(roswasmc_bounded_2_nav_msgs_msg_MapMetaData const*)value
                                            into:(void*)output
                                        capacity:(size_t)capacity
                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetStoredMapByName_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetStoredMapByName_Response:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetStoredMapByName_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetStoredMapByName_Response const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetSystemState_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetSystemState_Request:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetSystemState_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Request const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetSystemState_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetSystemState_Response:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetSystemState_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetSystemState_Response const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetVolume_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetVolume_Request:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetVolume_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GetVolume_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGetVolume_Response:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGetVolume_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GroupControlTimeSync_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGroupControlTimeSync_Request:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGroupControlTimeSync_Request:(roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Request const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/GroupControlTimeSync_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvGroupControlTimeSync_Response:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvGroupControlTimeSync_Response:(roswasmc_bounded_2_aimdk_msgs_srv_GroupControlTimeSync_Response const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/MigrateSystemState_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvMigrateSystemState_Request:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvMigrateSystemState_Request:(roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Request const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/MigrateSystemState_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvMigrateSystemState_Response:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvMigrateSystemState_Response:(roswasmc_bounded_2_aimdk_msgs_srv_MigrateSystemState_Response const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayAudioFile_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayAudioFile_Request:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayAudioFile_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Request const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayAudioFile_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayAudioFile_Response:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayAudioFile_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayAudioFile_Response const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayEmoji_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayEmoji_Request:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayEmoji_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayEmoji_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayEmoji_Response:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayEmoji_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayEmojiGroup_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayEmojiGroup_Request:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayEmojiGroup_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Request const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayEmojiGroup_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayEmojiGroup_Response:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayEmojiGroup_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmojiGroup_Response const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayTts_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayTts_Request:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayTts_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayTts_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayTts_Response:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayTts_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayVideo_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayVideo_Request:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayVideo_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayVideo_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayVideo_Response:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayVideo_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayVideoGroup_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayVideoGroup_Request:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayVideoGroup_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Request const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayVideoGroup_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayVideoGroup_Response:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayVideoGroup_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideoGroup_Response const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/RequestAudioFocus_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvRequestAudioFocus_Request:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvRequestAudioFocus_Request:(roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Request const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/RequestAudioFocus_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvRequestAudioFocus_Response:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvRequestAudioFocus_Response:(roswasmc_bounded_2_aimdk_msgs_srv_RequestAudioFocus_Response const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetAgentPropertiesRequest_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request:(void const*)bytes
                                                                  length:(size_t)length
                                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request const*)value
                                                                    into:(void*)output
                                                                capacity:(size_t)capacity
                                                                  length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetAgentPropertiesRequest_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response:(void const*)bytes
                                                                   length:(size_t)length
                                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response const*)value
                                                                     into:(void*)output
                                                                 capacity:(size_t)capacity
                                                                   length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetMcAction_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcAction_Request:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcAction_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetMcAction_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcAction_Response:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcAction_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response const*)value
                                                       into:(void*)output
                                                   capacity:(size_t)capacity
                                                     length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetMcInputSource_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcInputSource_Request:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcInputSource_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request const*)value
                                                           into:(void*)output
                                                       capacity:(size_t)capacity
                                                         length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetMcInputSource_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcInputSource_Response:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcInputSource_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetMcPresetMotion_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetMcPresetMotion_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response:(void const*)bytes
                                                           length:(size_t)length
                                                             into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response const*)value
                                                             into:(void*)output
                                                         capacity:(size_t)capacity
                                                           length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetMicSourceRequest_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request:(void const*)bytes
                                                            length:(size_t)length
                                                              into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Request const*)value
                                                              into:(void*)output
                                                          capacity:(size_t)capacity
                                                            length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetMicSourceRequest_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetMicSourceRequest_Response const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetMute_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMute_Request:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMute_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetMute_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetMute_Response:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetMute_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetPmuLed_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetPmuLed_Request:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetPmuLed_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Request const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetPmuLed_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetPmuLed_Response:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetPmuLed_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetPmuLed_Response const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetVolume_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetVolume_Request:(void const*)bytes
                                                  length:(size_t)length
                                                    into:(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetVolume_Request:(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request const*)value
                                                    into:(void*)output
                                                capacity:(size_t)capacity
                                                  length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/SetVolume_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvSetVolume_Response:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvSetVolume_Response:(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/StopAudioPlay_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvStopAudioPlay_Request:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvStopAudioPlay_Request:(roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Request const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/StopAudioPlay_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvStopAudioPlay_Response:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvStopAudioPlay_Response:(roswasmc_bounded_2_aimdk_msgs_srv_StopAudioPlay_Response const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

@end
