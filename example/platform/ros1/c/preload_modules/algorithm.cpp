/** @file algorithm.c
 * @brief Compute through a scalar ABI with default WASI and no extra grants.
 * @details The normal module imports no ROS, clocks, random or filesystem API.
 * The separately compiled denial variant attempts forbidden APIs explicitly.
 */
#include <preload_api.h>

MODULE_EXPORT("compute") int32_t algorithm_compute(int32_t value)
{
    return value >= -1000 && value <= 1000 ? value * 6 : -1;
}
#ifdef PRELOAD_DENIAL_PROBE
# include <wasi/api.h>
# if PRELOAD_ROS_VERSION == 1
#  include <ros1/c/roswasm.h>
#  define PROBE_BACKEND roswasmc_ros1_backend
# else
#  include <ros2/c/roswasm.h>
#  define PROBE_BACKEND roswasmc_ros2_backend
# endif
MODULE_EXPORT("clock_denial") uint32_t algorithm_clock_denial(void)
{
    __wasi_timestamp_t time = 0;
    return __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 1, &time);
}

MODULE_EXPORT("random_denial") uint32_t algorithm_random_denial(void)
{
    uint8_t byte = 0;
    return __wasi_random_get(&byte, 1);
}

MODULE_EXPORT("ros_denial") uint32_t algorithm_ros_denial(void)
{
    roswasmc_context context = {PROBE_BACKEND()};
    roswasmc_capability owner;
    uint32_t result;
    roswasmc_capability_init(&owner, &context);
    result = roswasmc_open(&owner, "sample", 6);
    if(!result)
    {
        (void)roswasmc_close(&owner);
    }
    return result;
}
#endif
