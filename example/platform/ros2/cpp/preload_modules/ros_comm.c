/** @file ros_comm.c
 * @brief Keep the sole ROS owner and all canonical String buffers module local.
 * @details begin/end bracket exactly one capability lifetime; send consumes
 * only a scalar value. Each successful begin has one independent close.
 */
#include <preload_api.h>
#if PRELOAD_ROS_VERSION == 1
# include <ros1/c/roswasm.h>
# define SELECTED_BACKEND roswasmc_ros1_backend
#else
# include <ros2/c/roswasm.h>
# define SELECTED_BACKEND roswasmc_ros2_backend
#endif
#include <ros/c/roswasm/codec.h>
static roswasmc_context context;
static roswasmc_capability owner;
static uint32_t active;

MODULE_EXPORT("begin") uint32_t ros_begin(void)
{
    uint32_t result;
    if(active)
    {
        return 22;
    }
    context.backend = SELECTED_BACKEND();
    roswasmc_capability_init(&owner, &context);
    result = roswasmc_open(&owner, "sample", 6);
    active = result == 0;
    return result;
}

MODULE_EXPORT("send") uint32_t ros_send(int32_t value)
{
    uint8_t wire[32];
    size_t size = 0;
    uint32_t result;
    char text[] = "value=00";
    if(!active || value < 0 || value > 99)
    {
        return 22;
    }
    text[6] = (char)('0' + value / 10);
    text[7] = (char)('0' + value % 10);
    result = roswasmc_encode_string(roswasmc_string_init(text, 8), wire, sizeof wire, &size);
    return result ? result : roswasmc_publish(&owner, wire, size);
}

MODULE_EXPORT("end") uint32_t ros_end(void)
{
    if(!active)
    {
        return 22;
    }
    active = 0;
    return roswasmc_close(&owner);
}
