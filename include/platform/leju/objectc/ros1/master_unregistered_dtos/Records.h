/** @file Records.h
 * @brief Complete original leju types through genuine Objective-C class dispatch.
 * @details The selected LLVM 23 Objective-C runtime must be supplied by the
 * shared native-language owner. Caller-owned C-compatible record storage
 * preserves every original field. No Foundation, ARC or ROS grant is inferred.
 */
#pragma once
#import <objc/Object.h>
#include <leju/c/ros1/leju-ros1-master-unregistered-dtos-complete/bounded_records.h>

@interface LejuRos1MasterUnregisteredDtosRecords : Object
/** @brief Decode all original kuavo_sdk/qv fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_sdkQv:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_sdk_qv*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_sdkQv:(roswasmc_bounded_1_kuavo_sdk_qv const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length;

/** @brief Decode all original kuavo_sdk/fullBodyTargetTrajectories fields transactionally.
 * @param bytes Borrowed complete canonical bytes, disjoint from output.
 * @param length Exact active wire extent in bytes.
 * @param output Caller-owned complete record; unchanged on failure.
 * @return 0 on full success; 22 for malformed input or 90 for bounds. */
+ (unsigned int)decodeRos1Kuavo_sdkFullBodyTargetTrajectories:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories*)output;
/** @brief Encode every original field after complete domain validation.
 * @param value Borrowed complete original value.
 * @param output Disjoint caller-owned writable bytes.
 * @param capacity Exact writable capacity in bytes.
 * @param length Disjoint output for the complete successful byte count.
 * @return Original 0/22/90 codec status; no resource is acquired. */
+ (unsigned int)encodeRos1Kuavo_sdkFullBodyTargetTrajectories:(roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length;

@end
