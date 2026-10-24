/** @file ros_comm.c
 * @brief Own the original ROS2 Array capability, decoded value and wire locally.
 * @details Only this module receives ROS Single authority with module-exports
 * boundary. No handle, pointer or native storage leaves the module.
 */
#include "array_modules.h"
#include <nvidia-isaac-ros/c/ros2/complete/records.h>
#include <ros2/c/roswasm/ros2.h>
#include <string.h>
#include <wasi/api.h>

/** @brief Complete original Array retained only in ros_comm-owned storage. */
typedef roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray Array;
static roswasmc_context context;
static roswasmc_capability owner;
static Array value;
static char alias[NV_MAX_ALIAS + 1];
static unsigned char wire[NV_MAX_WIRE];
static int64_t facts[NV_FACT_COUNT];
static uint32_t alias_length, alias_written, opened, subscribed, ready, wire_size;

/** @brief Poll a saved handle into private scratch storage, retaining the exact raw status. */
static uint32_t poll_old(uint64_t handle)
{
    unsigned char output[NV_MAX_WIRE];
    uint64_t length = UINT64_MAX;
    return context.backend->poll(handle, 0, uwvm_ros_address(output), sizeof output, uwvm_ros_address(&length));
}

uint32_t nv_ros_alias_begin(uint32_t length)
{
    if (opened || !length || length > NV_MAX_ALIAS)
    {
        return 22;
    }
    alias_length = length;
    alias_written = 0;
    subscribed = 0;
    ready = 0;
    wire_size = 0;
    memset(facts, 0, sizeof facts);
    alias[length] = 0;
    return 0;
}

uint32_t nv_ros_alias_put(uint32_t index, uint32_t byte)
{
    if (opened || index != alias_written || index >= alias_length || !byte || byte > 255)
    {
        return 22;
    }
    alias[alias_written++] = (char)byte;
    return 0;
}

uint32_t nv_ros_start(void)
{
    if (opened || !alias_length || alias_written != alias_length)
    {
        return 22;
    }
    context.backend = roswasmc_ros2_backend();
    roswasmc_capability_init(&owner, &context);
    uint32_t error = roswasmc_open(&owner, alias, alias_length);
    facts[NV_PRIMARY] = error;
    if (error)
    {
        return error;
    }
    opened = 1;
    error = roswasmc_subscribe(&owner);
    facts[NV_PRIMARY] = error;
    subscribed = !error;
    return error;
}

uint32_t nv_ros_poll(void)
{
    if (!opened || !subscribed || ready)
    {
        return 22;
    }
    roswasmc_result result = roswasmc_poll(&owner, wire, sizeof wire);
    facts[NV_PRIMARY] = result.error;
    if (result.error)
    {
        return result.error;
    }
    if (!result.has_length || result.length > sizeof wire)
    {
        facts[NV_PRIMARY] = 22;
        return 22;
    }
    uint32_t error = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(
        wire, (size_t)result.length, &value);
    facts[NV_PRIMARY] = error;
    if (error)
    {
        return error;
    }
    size_t length = 0;
    error = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(
        &value, wire, sizeof wire, &length);
    facts[NV_ENCODING] = error;
    if (!error)
    {
        wire_size = (uint32_t)length;
        ready = 1;
    }
    return error;
}

uint32_t nv_ros_wire_size(void)
{
    return ready ? wire_size : 0;
}

uint32_t nv_ros_wire_byte(uint32_t index)
{
    return ready && index < wire_size ? wire[index] : 256;
}

uint32_t nv_ros_finish(uint32_t mode)
{
    if (mode > 2)
    {
        return 22;
    }
    if (!opened)
    {
        return 0;
    }
    if (!ready || !mode)
    {
        uint32_t error = roswasmc_close(&owner);
        facts[NV_CLEANUP] = error;
        opened = 0;
        return error;
    }
    uint64_t original = owner.handle;
    uint32_t retired = mode == 2 ? roswasmc_revoke(&owner) : roswasmc_close(&owner);
    facts[NV_RETIRED] = retired;
    facts[NV_CLEANUP] = retired;
    facts[NV_STALE] = poll_old(original);
    facts[NV_CLOSE_AGAIN] = context.backend->close(original);
    facts[NV_REOPEN] = roswasmc_open(&owner, alias, alias_length);
    facts[NV_OLD_AGAIN] = poll_old(original);
    opened = !facts[NV_REOPEN];
    if (opened)
    {
        if (owner.handle == original)
        {
            facts[NV_FRESH_CLOSE_ATTEMPTED] = 1;
            facts[NV_FRESH_CLOSE] = roswasmc_close(&owner);
            opened = 0;
            return 70;
        }
        facts[NV_FRESH_CLOSE_ATTEMPTED] = 1;
        facts[NV_FRESH_CLOSE] = roswasmc_close(&owner);
        opened = 0;
    }
    return retired || facts[NV_STALE] != 9 || facts[NV_CLOSE_AGAIN] != 9 || facts[NV_REOPEN] != (mode == 2 ? 125 : 0) ||
                   facts[NV_OLD_AGAIN] != 9 || facts[NV_FRESH_CLOSE]
               ? 71
               : 0;
}

int64_t nv_ros_fact(uint32_t key)
{
    return key < NV_FACT_COUNT ? facts[key] : -22;
}

uint32_t nv_ros_probe_clock(void)
{
    __wasi_timestamp_t output = UINT64_C(0x1122334455667788);
    uint32_t error = __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 0, &output);
    facts[NV_ROS_CLOCK_UNCHANGED] = output == UINT64_C(0x1122334455667788);
    return error;
}
