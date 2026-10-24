/** @file main.m
 * @brief Decode all original aimdk_msgs/srv/GetRobotResources_Response fields via genuine Objective-C dispatch.
 * @details Requires actual libobjc and the original complete generated Records
 * class. No native JSON parsing or C replacement entry is used.
 */
#import <agibot/objectc/AgibotClient.h>
#import <agibot/objectc/ros2_sdk_v1_1_0_main/Records.h>
#include <inttypes.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

/** @brief Acquire one explicit alias, then decode and print after retirement. */
int main(int argc, char** argv)
{
    if(argc != 2)
        return 22;
    unsigned char bytes[10236];
    size_t length = 0;
    uint32_t cleanup = 0, cleanup_present = 0, has_required = 0;
    uint64_t required = 0;
    uint32_t primary = [AgibotClient observeAlias:argv[1]
                                        operation:3
                                           output:bytes
                                         capacity:sizeof bytes
                                           length:&length
                                          cleanup:&cleanup
                                   cleanupPresent:&cleanup_present
                                         required:&required
                                      hasRequired:&has_required];
    bool present = false;
    int64_t rpc_status = 0;
    roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response* value = malloc(sizeof *value);
    if(value == NULL)
        return 12;
    if(primary == 0)
    {
        primary = [AgibotRos2SdkV110MainRecords decodeRos2Aimdk_msgsSrvGetRobotResources_Response:bytes length:length into:value];
        present = primary == 0;
        if(present)
            rpc_status = value->header.header.code;
    }
    int written = printf("{\"primary\":%" PRIu32 ",\"cleanup\":%" PRIu32
                         ",\"cleanup_present\":%s,\"response_present\":%s,\"has_required\":%s," "\"required\":\"%" PRIu64
                         "\",\"rpc_status_present\":%s,\"rpc_status\":\"%" PRId64 "\",\"wire_hex\":\"",
                         primary,
                         cleanup,
                         cleanup_present ? "true" : "false",
                         present ? "true" : "false",
                         has_required ? "true" : "false",
                         required,
                         present ? "true" : "false",
                         rpc_status);
    if(present)
        for(size_t index = 0; index < length; ++index)
            printf("%02x", bytes[index]);
    int ended = printf("\"}\n");
    free(value);
    if(written < 0 || ended < 0 || fflush(stdout) != 0)
        return 5;
    uint32_t code = primary != 0 ? primary : cleanup;
    if(code == 0 && present && rpc_status != 0)
        code = 5;
    return code > 125 ? 125 : (int)code;
}
