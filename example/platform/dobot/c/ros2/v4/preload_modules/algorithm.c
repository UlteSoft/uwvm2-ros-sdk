/** @file algorithm.c
 * @brief Export genuine calculation and an explicit ungranted-module check.
 * @details Default WASI basic standard-stream rights remain; no additional
 * resource or ROS capability is granted to algorithm. No pointer escapes.
 */
#include <dobot/c/module_demo.h>
#include <ros2/c/roswasm/ros2.h>

__attribute__((export_name("score"))) uint32_t uwvm_demo_score(uint32_t value)
{
    return uwvm_demo_core_score(value);
}

__attribute__((export_name("denied_probe"))) uint32_t uwvm_demo_denied_probe(void)
{
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t status = roswasmc_open(&owner, "dobot.status", 12);
    if(!status)
    {
        (void)roswasmc_close(&owner);
        return 22;
    }
    return status;
}
