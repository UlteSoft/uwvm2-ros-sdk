/** @file module_probe.h
 * @brief Probe the calling module's own ROS1 denial without transferring a handle.
 * @details Default WASI retains basic standard-stream rights. This helper does
 * not grant a ROS alias, start a node, subscribe or replay an operation.
 */
#pragma once
#include <stdint.h>
#include <ros1/c/roswasm/ros1.h>

/** @brief Attempt one local capability acquisition through this module's imports.
 * @return Low 32 bits: original open errno. High 32 bits: cleanup errno if an
 * unexpected open succeeded. A legitimate denial is exactly the uint64 value 13.
 * @details An unexpected acquired owner closes once; cleanup cannot disguise
 * a successful open as a denial. No pointer or capability escapes this module.
 */
inline static uint64_t franka_module_denied_probe(void)
{
    roswasmc_context const context = {roswasmc_ros1_backend()};
    roswasmc_capability owner;
    uint32_t primary, cleanup = 0;
    roswasmc_capability_init(&owner, &context);
    primary = roswasmc_open(&owner, "sample", 6);
    if(!primary)
    {
        cleanup = roswasmc_close(&owner);
    }
    return (uint64_t)primary | ((uint64_t)cleanup << 32);
}
