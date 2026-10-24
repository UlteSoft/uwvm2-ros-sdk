/** @file Records.h
 * @brief Complete original agibot types through genuine Objective-C class dispatch.
 * @details The selected LLVM 23 Objective-C runtime must be supplied by the
 * shared native-language owner. Caller-owned C-compatible record storage
 * preserves every original field. No Foundation, ARC or ROS grant is inferred.
 */
#pragma once
#import <objc/Object.h>
#include <agibot/c/ros2/agibot-ros2-sdk-v0-8-1-main-complete/bounded_records.h>

@interface AgibotRos2SdkV081MainRecords : Object
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

/** @brief Decode all original aimdk_msgs/msg/PlayMediaFileRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsMsgPlayMediaFileRequest:(void const*)bytes
                                                     length:(size_t)length
                                                       into:(roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsMsgPlayMediaFileRequest:(roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest const*)value
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

/** @brief Decode all original aimdk_msgs/srv/LedStripCommand_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvLedStripCommand_Request:(void const*)bytes
                                                        length:(size_t)length
                                                          into:(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvLedStripCommand_Request:(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request const*)value
                                                          into:(void*)output
                                                      capacity:(size_t)capacity
                                                        length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/LedStripCommand_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvLedStripCommand_Response:(void const*)bytes
                                                         length:(size_t)length
                                                           into:(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvLedStripCommand_Response:(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response const*)value
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

/** @brief Decode all original aimdk_msgs/srv/PlayMediaFile_Request fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayMediaFile_Request:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayMediaFile_Request:(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original aimdk_msgs/srv/PlayMediaFile_Response fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos2Aimdk_msgsSrvPlayMediaFile_Response:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos2Aimdk_msgsSrvPlayMediaFile_Response:(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response const*)value
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

@end
