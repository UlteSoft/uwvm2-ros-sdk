/**
 * @file io.cpp
 * @brief Use this independent C++ reactor's real default WASI stdout.
 * @details The constructor must run before the export. No ROS alias is granted.
 */
#include <ros2/c/roswasm/ros2.h>
#include <cstdint>
#include <cstdio>
static uint32_t initialized;

/** @brief Observe actual reactor initialization instead of a precomputed IO result. */
__attribute__((constructor)) static void initialize()
{ initialized = 17; }

/** @brief Report the native graph status and this module's actual ROS denial. */
extern "C" __attribute__((visibility("default"))) uint32_t action_io_report(uint32_t primary)
{
    roswasmc_context context{roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t denied = roswasmc_open(&owner, "send", 4);
    if(!denied)
    {
        (void)roswasmc_close(&owner);
        denied = 65;
    }
    std::printf("action_io_cpp primary=%u denied=%u constructor=%u\n", primary, denied, initialized);
    uint32_t output_status = std::fflush(stdout) ? 5 : 0;
    return denied == 13 && initialized == 17 && !output_status ? 0 : 65;
}
