/** @file Records.h
 * @brief Complete original leju types through genuine Objective-C class dispatch.
 * @details The selected LLVM 23 Objective-C runtime must be supplied by the
 * shared native-language owner. Caller-owned C-compatible record storage
 * preserves every original field. No Foundation, ARC or ROS grant is inferred.
 */
#pragma once
#import <objc/Object.h>
#include <leju/c/ros1/leju-ros1-master-packaged-ik-complete/bounded_records.h>

@interface LejuRos1MasterPackagedIkRecords : Object
/** @brief Decode all original motion_capture_ik/armHandPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikArmHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_motion_capture_ik_armHandPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikArmHandPose:(roswasmc_bounded_1_motion_capture_ik_armHandPose const*)value
                                                  into:(void*)output
                                              capacity:(size_t)capacity
                                                length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/armHandPoseFree fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikArmHandPoseFree:(void const*)bytes
                                                    length:(size_t)length
                                                      into:(roswasmc_bounded_1_motion_capture_ik_armHandPoseFree*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikArmHandPoseFree:(roswasmc_bounded_1_motion_capture_ik_armHandPoseFree const*)value
                                                      into:(void*)output
                                                  capacity:(size_t)capacity
                                                    length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/changeArmCtrlModeRequest fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikChangeArmCtrlModeRequest:(void const*)bytes
                                                             length:(size_t)length
                                                               into:(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikChangeArmCtrlModeRequest:(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest const*)value
                                                               into:(void*)output
                                                           capacity:(size_t)capacity
                                                             length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/changeArmCtrlModeResponse fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikChangeArmCtrlModeResponse:(void const*)bytes
                                                              length:(size_t)length
                                                                into:(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikChangeArmCtrlModeResponse:(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse const*)value
                                                                into:(void*)output
                                                            capacity:(size_t)capacity
                                                              length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/handPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikHandPose:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_motion_capture_ik_handPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikHandPose:(roswasmc_bounded_1_motion_capture_ik_handPose const*)value
                                               into:(void*)output
                                           capacity:(size_t)capacity
                                             length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/ikSolveError fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikIkSolveError:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_motion_capture_ik_ikSolveError*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikIkSolveError:(roswasmc_bounded_1_motion_capture_ik_ikSolveError const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/ikSolveParam fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikIkSolveParam:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_motion_capture_ik_ikSolveParam*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikIkSolveParam:(roswasmc_bounded_1_motion_capture_ik_ikSolveParam const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/recordArmHandPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikRecordArmHandPose:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_motion_capture_ik_recordArmHandPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikRecordArmHandPose:(roswasmc_bounded_1_motion_capture_ik_recordArmHandPose const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/recordArmHandPoseFree fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikRecordArmHandPoseFree:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikRecordArmHandPoseFree:(roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/robotArmQVVD fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikRobotArmQVVD:(void const*)bytes
                                                 length:(size_t)length
                                                   into:(roswasmc_bounded_1_motion_capture_ik_robotArmQVVD*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikRobotArmQVVD:(roswasmc_bounded_1_motion_capture_ik_robotArmQVVD const*)value
                                                   into:(void*)output
                                               capacity:(size_t)capacity
                                                 length:(size_t*)length;

/** @brief Decode all original time fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Time:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_time*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Time:(roswasmc_bounded_1_time const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length;

/** @brief Decode all original std_msgs/Header fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Std_msgsHeader:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_std_msgs_Header*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Std_msgsHeader:(roswasmc_bounded_1_std_msgs_Header const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/robotHandPosition fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikRobotHandPosition:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_motion_capture_ik_robotHandPosition*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikRobotHandPosition:(roswasmc_bounded_1_motion_capture_ik_robotHandPosition const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/twoArmHandPose fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikTwoArmHandPose:(void const*)bytes
                                                   length:(size_t)length
                                                     into:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPose*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikTwoArmHandPose:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPose const*)value
                                                     into:(void*)output
                                                 capacity:(size_t)capacity
                                                   length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/twoArmHandPoseCmd fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikTwoArmHandPoseCmd:(void const*)bytes
                                                      length:(size_t)length
                                                        into:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikTwoArmHandPoseCmd:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd const*)value
                                                        into:(void*)output
                                                    capacity:(size_t)capacity
                                                      length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/twoArmHandPoseFree fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikTwoArmHandPoseFree:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikTwoArmHandPoseFree:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

/** @brief Decode all original motion_capture_ik/twoArmHandPoseCmdFree fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Motion_capture_ikTwoArmHandPoseCmdFree:(void const*)bytes
                                                          length:(size_t)length
                                                            into:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Motion_capture_ikTwoArmHandPoseCmdFree:(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree const*)value
                                                            into:(void*)output
                                                        capacity:(size_t)capacity
                                                          length:(size_t*)length;

@end
