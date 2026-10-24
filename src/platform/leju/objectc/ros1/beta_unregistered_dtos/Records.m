/** @file Records.m
 * @brief Implement genuine Objective-C full-record codec entry points.
 * @details Class methods delegate only canonical byte conversion to the
 * exact C interop catalog. No source-language application is replaced by C.
 */
#import <leju/objectc/ros1/beta_unregistered_dtos/Records.h>

@implementation LejuRos1BetaUnregisteredDtosRecords

+ (unsigned int)decodeRos1Kuavo_sdkQv:(void const*)bytes length:(size_t)length into:(roswasmc_bounded_1_kuavo_sdk_qv*)output
{
    return roswasmc_bounded_1_kuavo_sdk_qv_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_sdkQv:(roswasmc_bounded_1_kuavo_sdk_qv const*)value into:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_sdk_qv_encode(value, output, capacity, length);
}

+ (unsigned int)decodeRos1Kuavo_sdkFullBodyTargetTrajectories:(void const*)bytes
                                                       length:(size_t)length
                                                         into:(roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories*)output
{
    return roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_decode(bytes, length, output);
}

+ (unsigned int)encodeRos1Kuavo_sdkFullBodyTargetTrajectories:(roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories const*)value
                                                         into:(void*)output
                                                     capacity:(size_t)capacity
                                                       length:(size_t*)length
{
    return roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_encode(value, output, capacity, length);
}

@end
