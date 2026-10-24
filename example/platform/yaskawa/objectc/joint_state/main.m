/**
 * @file main.m
 * @brief Observe every original sensor_msgs/msg/JointState field once.
 * @details One retained owner polls at most 250 times; only idle 11 permits a
 * 20 ms monotonic pause. The complete value is decoded and re-encoded before
 * reporting. The alias and native registry come from the deployment operator.
 */
#include <yaskawa/c/ros2/yaskawa-ros2-complete/bounded_records.h>
#include <ros2/c/roswasm/ros2.h>
#include <ros/c/command.h>
#include <inttypes.h>
#include <stdio.h>
#include <string.h>

/** @brief Genuine Objective-C compile-time encoding of the whole C-interoperable value. */
static char const* const record_encoding = @encode(roswasmc_bounded_2_sensor_msgs_msg_JointState);

/** @brief Retain complete decoded value storage outside the small WASI stack. */
static roswasmc_bounded_2_sensor_msgs_msg_JointState response;
/** @brief Own the finite original canonical message and independent re-encoding. */
static unsigned char input[1196], encoded[1196];

/**
 * @brief Read one exact granted alias and retain independent operation/close facts.
 * @param argc Exactly two WASI command arguments including the program name.
 * @param argv Borrowed arguments; argv[1] is the operator's existing alias.
 * @return First primary, independent cleanup or output failure, clamped to 125.
 * @details No resource is acquired for invalid arity. A closed owner never
 * causes another subscription or replay. Ordinary complete refusals are kept.
 */
int main(int argc, char** argv)
{
    if(argc != 2)
    {
        fputs(
            "{\"primary\":22,\"cleanup\":0,\"cleanup_present\":0,\"rpc_present\":0,\"rpc_status\":0,\"required\":" "\"18446744073709551615\",\"response_present\":0,\"encoding\":0,\"wire_hex\":\"\"}\n",
            stdout);
        fflush(stdout);
        return 22;
    }
    (void)record_encoding;
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t primary = roswasmc_open(&owner, argv[1], strlen(argv[1]));
    uint32_t cleanup = 0, rpc = 0;
    int cleanup_present = 0, rpc_present = 0, present = 0;
    size_t size = 0;
    uint64_t required = UINT64_MAX;
    if(!primary)
    {
        primary = roswasmc_subscribe(&owner);
        if(!primary)
        {
            for(unsigned attempt = 0; attempt < 250; ++attempt)
            {
                roswasmc_result result = roswasmc_poll(&owner, input, sizeof input);
                rpc_present = 1;
                primary = rpc = result.error;
                if(result.has_length)
                {
                    required = result.length;
                }
                if(primary != 11 || attempt == 249)
                {
                    if(!primary)
                    {
                        primary = !result.has_length || result.length > sizeof input
                                      ? 22u
                                      : roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(input, (size_t)result.length, &response);
                        if(!primary)
                        {
                            primary = roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(&response, encoded, sizeof encoded, &size);
                        }
                        if(!primary && (size != result.length || memcmp(input, encoded, size)))
                        {
                            primary = 22;
                        }
                        present = !primary;
                    }
                    break;
                }
                primary = uwvm_ros_command_pause(20000000);
                if(primary)
                {
                    break;
                }
            }
        }
        cleanup_present = 1;
        cleanup = roswasmc_close(&owner);
    }
    if(printf("{\"primary\":%" PRIu32 ",\"cleanup\":%" PRIu32 ",\"cleanup_present\":%d,\"rpc_present\":%d,\"rpc_status\":%" PRIu32 ",\"required\":\"%" PRIu64
              "\",\"response_present\":%d,\"wire_hex\":\"",
              primary,
              cleanup,
              cleanup_present,
              rpc_present,
              rpc,
              required,
              present) < 0 &&
       !primary)
    {
        primary = 5;
    }
    if(present)
    {
        for(size_t i = 0; i < size; ++i)
        {
            if(printf("%02x", (unsigned)encoded[i]) < 0 && !primary)
            {
                primary = 5;
            }
        }
    }
    if(printf("\"}\n") < 0 && !primary)
    {
        primary = 5;
    }
    if(fflush(stdout) && !primary)
    {
        primary = 5;
    }
    uint32_t status = primary ? primary : cleanup;
    return status > 125 ? 125 : (int)status;
}
