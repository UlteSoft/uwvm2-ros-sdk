/** @file ros_comm.c
 * @brief Own the complete original RobotStatus observation and its exact ROS grant.
 * @details All capability, scratch and value storage stays in this module's
 * memory. Retain primary/cleanup/presence independently; only idle11 polls again.
 */
#include <dobot/c/module_demo.h>
#include <dobot/c/ros2/dobot-ros2-v4-complete/bounded_records.h>
#include <ros2/c/roswasm/ros2.h>
#include <ros/c/command.h>
static uint32_t last_cleanup, last_present, last_bits;
static int busy;

__attribute__((export_name("observe"))) uint32_t uwvm_demo_observe(void)
{
    if(busy)
        return 17;
    busy = 1;
    last_cleanup = last_present = last_bits = 0;
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t primary = roswasmc_open(&owner, "dobot.status", 12);
    if(!primary)
    {
        unsigned char bytes[2];
        roswasmc_bounded_2_dobot_msgs_v4_msg_RobotStatus value = {0};
        primary = roswasmc_subscribe(&owner);
        for(unsigned attempt = 0; !primary && attempt < 250; ++attempt)
        {
            roswasmc_result received = roswasmc_poll(&owner, bytes, sizeof bytes);
            primary = received.error;
            if(!primary)
            {
                if(!received.has_length || received.length != sizeof bytes)
                    primary = 22;
                else
                    primary = roswasmc_bounded_2_dobot_msgs_v4_msg_RobotStatus_decode(bytes, sizeof bytes, &value);
                if(!primary)
                {
                    last_present = 1;
                    last_bits = (value.is_enable ? 1u : 0u) | (value.is_connected ? 2u : 0u);
                }
            }
            if(primary != 11 || attempt == 249)
                break;
            primary = uwvm_ros_command_pause(UINT64_C(20000000));
        }
        last_cleanup = roswasmc_close(&owner);
    }
    busy = 0;
    return primary;
}

__attribute__((export_name("cleanup_status"))) uint32_t uwvm_demo_cleanup(void)
{
    return last_cleanup;
}

__attribute__((export_name("response_present"))) uint32_t uwvm_demo_present(void)
{
    return last_present;
}

__attribute__((export_name("source_bits"))) uint32_t uwvm_demo_bits(void)
{
    return last_bits;
}
