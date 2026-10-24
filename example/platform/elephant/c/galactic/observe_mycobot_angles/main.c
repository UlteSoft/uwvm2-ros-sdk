/**
 * @file main.c
 * @brief Observe every original mycobot_interfaces/msg/MycobotAngles field.
 * @details Read one whole original value through an explicitly granted alias.
 * No response is printed after a transport/codec refusal; no service is replayed.
 */
#include <elephant/c/ros2/elephant-mycobot-galactic-complete/bounded_records.h>
#include <ros2/c/roswasm/ros2.h>
#include <ros/c/command.h>
#include <stdio.h>
#include <string.h>

/**
 * @brief Execute one finite native fixture observation and preserve cleanup facts.
 * @param argc Exactly two arguments, including the application name.
 * @param argv Caller-owned arguments; argv[1] is an existing policy alias.
 * @return Primary error, then cleanup/output error, clamped to 125.
 * @details At most 250 idle polls, separated by a granted 20 ms clock wait.
 * The capability closes once before stdout. Closing is not an actuator command.
 */
int main(int argc, char** argv)
{
    if(argc != 2)
        return 22;
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    unsigned char bytes[24];
    size_t length = 0;
    roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles value = {0};
    uint32_t primary = context.backend->abi_version() == 1 ? 0 : 38;
    uint32_t cleanup = 0;
    int present = 0, opened = 0;
    if(!primary)
        primary = roswasmc_open(&owner, argv[1], strlen(argv[1]));
    if(!primary)
    {
        opened = 1;
        primary = roswasmc_subscribe(&owner);
        for(unsigned attempt = 0; !primary && attempt < 250; ++attempt)
        {
            roswasmc_result result = roswasmc_poll(&owner, bytes, sizeof bytes);
            primary = result.error;
            if(primary == 11 && attempt < 249)
            {
                primary = uwvm_ros_command_pause(UINT64_C(20000000));
                if(!primary)
                    continue;
            }
            if(!primary)
            {
                if(!result.has_length || result.length > sizeof bytes)
                    primary = 22;
                else
                    length = (size_t)result.length;
            }
            break;
        }
        if(!primary)
        {
            primary = roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_decode(bytes, length, &value);
            if(!primary)
                present = 1;
        }
        cleanup = roswasmc_close(&owner);
    }
    if(printf("{\"primary\":%u,\"cleanup\":%u,\"cleanup_present\":%s,\"response_present\":%s,\"wire_hex\":\"",
              primary,
              cleanup,
              opened ? "true" : "false",
              present ? "true" : "false") < 0)
        return (int)((primary ? primary : cleanup ? cleanup : 5) > 125 ? 125 : (primary ? primary : cleanup ? cleanup : 5));
    if(present)
        for(size_t index = 0; index < length; ++index)
            if(printf("%02x", bytes[index]) < 0)
                return 5;
    uint32_t output = puts("\"}") < 0 ? 5u : 0u;
    uint32_t status = primary ? primary : cleanup ? cleanup : output;
    return (int)(status > 125 ? 125 : status);
}
