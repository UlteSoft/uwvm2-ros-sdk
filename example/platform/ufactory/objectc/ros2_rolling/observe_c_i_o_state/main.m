/**
 * @file main.m
 * @brief Read every original xarm_msgs/msg/CIOState field through genuine Objective-C owning methods.
 * @details No Foundation/ARC or automatic finalizer is required. The common producer
 * links this selected profile's records.m and genuine Objective-C runtime into one Wasm.
 */
#include <ufactory/objectc/ros2/rolling/records.h>
#include <ros2/c/roswasm/ros2.h>
#include <ros/c/command.h>
#include <stdio.h>
#include <string.h>

/**
 * @brief Observe/query once, invoke full object codecs and retire all actual owners.
 * @param argc Exactly two arguments including the command name.
 * @param argv Process-owned arguments; argv[1] names one independently granted alias.
 * @return Primary transport/allocation/codec error, then close/output error, capped at 125.
 * @details Only idle 11 repeats; an admitted service is never replayed. Each object
 * is disposed once and each acquired capability closes once before process exit.
 */
int main(int argc, char** argv)
{
    if(argc != 2)
        return 22;
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    unsigned char bytes[328];
    size_t length = 0;
    uint32_t primary = context.backend->abi_version() == 1 ? 0u : 38u, cleanup = 0u;
    int acquired = 0, present = 0;
    if(!primary)
        primary = roswasmc_open(&owner, argv[1], strlen(argv[1]));
    if(!primary)
    {
        acquired = 1;
        Ufactory_ros2_rolling_Ros2Xarm_msgsMsgCIOState* value = [Ufactory_ros2_rolling_Ros2Xarm_msgsMsgCIOState new];
        if(!value)
            primary = 12;
        if(!primary)
        {
            primary = roswasmc_subscribe(&owner);
            for(unsigned attempt = 0; !primary && attempt < 250; ++attempt)
            {
                roswasmc_result result = roswasmc_poll(&owner, bytes, sizeof bytes);
                primary = result.error;
                if(!primary)
                {
                    if(!result.has_length || result.length > sizeof bytes)
                        primary = 22;
                    else
                        length = (size_t)result.length;
                }
                if(primary != 11 || attempt == 249)
                    break;
                primary = uwvm_ros_command_pause(UINT64_C(20000000));
            }
            if(!primary)
                primary = [value decode:bytes length:length];
            if(!primary)
                primary = [value encode:bytes capacity:sizeof bytes length:&length];
            if(!primary)
                present = 1;
        }
        if(value)
            [value dispose];
        cleanup = roswasmc_close(&owner);
    }
    uint32_t output = 0;
    if(printf("{\"primary\":%u,\"cleanup\":%u,\"cleanup_present\":%s,\"response_present\":%s,\"wire_hex\":\"",
              primary,
              cleanup,
              acquired ? "true" : "false",
              present ? "true" : "false") < 0)
        output = 5;
    if(!output && present)
        for(size_t index = 0; index < length; ++index)
            if(printf("%02x", bytes[index]) < 0)
            {
                output = 5;
                break;
            }
    if(!output && puts("\"}") < 0)
        output = 5;
    uint32_t status = primary ? primary : cleanup ? cleanup : output;
    return (int)(status > 125 ? 125 : status);
}
