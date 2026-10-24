/**
 * @file main.c
 * @brief Receive and validate the complete original flexiv_msgs/msg/RobotStates from native ROS.
 * @details The explicit alias is opened once and activated once. Only idle 11
 * permits another poll, with an explicitly granted monotonic clock between
 * attempts. Decode and re-encode every original field before printing bytes.
 * Retire the capability with one close and report cleanup independently.
 * Native test publishers are offline fixtures and invoke no physical controller.
 */
#include <stdio.h>
#include <string.h>
#include <flexiv/c/ros2/flexiv-ros2-jazzy-v2-2-complete/bounded_records.h>
#include <platform/ros2/c/roswasm/ros2.h>
#include <platform/ros/c/command.h>

/**
 * @brief Validate the requested original record and preserve operation status.
 * @param argc Number of command-line arguments.
 * @param argv Program name followed by the documented alias or encoded value.
 * @return Zero after validation and cleanup, otherwise the primary or cleanup error.
 */
int main(int argc, char** argv)
{
    static roswasmc_bounded_2_flexiv_msgs_msg_RobotStates value;
    static unsigned char wire[5161], encoded[5161];
    size_t length = 0, encoded_length = 0, index;
    unsigned primary = 0, cleanup = 0, attempt;
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    if(argc != 2)
    {
        return 22;
    }
    roswasmc_capability_init(&owner, &context);
    primary = roswasmc_open(&owner, argv[1], strlen(argv[1]));
    if(!primary)
    {
        primary = roswasmc_subscribe(&owner);
    }
    for(attempt = 0; !primary && attempt < 250; ++attempt)
    {
        roswasmc_result result = roswasmc_poll(&owner, wire, sizeof wire);
        if(result.error == 11)
        {
            primary = attempt == 249 ? 110 : uwvm_ros_command_pause(UINT64_C(20000000));
            continue;
        }
        primary = result.error;
        if(!primary && (!result.has_length || result.length > sizeof wire))
        {
            primary = 22;
        }
        if(!primary)
        {
            length = (size_t)result.length;
        }
        break;
    }
    if(!primary)
    {
        primary = roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_decode(wire, length, &value);
    }
    if(!primary)
    {
        primary = roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode(&value, encoded, sizeof encoded, &encoded_length);
    }
    if(!primary && (length != encoded_length || memcmp(wire, encoded, length)))
    {
        primary = 22;
    }
    if(owner.handle)
    {
        cleanup = roswasmc_close(&owner);
    }
    if(!primary)
    {
        printf("flexiv_msgs/msg/RobotStates bytes=%zu\n", encoded_length);
        for(index = 0; index < encoded_length; ++index)
        {
            printf("%02x", (unsigned)encoded[index]);
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=%u\n", primary, cleanup);
    return primary ? (int)primary : (int)cleanup;
}
