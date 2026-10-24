/** @file ros_comm.c
 * @brief Sole ROS-granted module: one real native String observation.
 * @details Own the capability and wire storage here. Only copied uint32 values
 * leave this module. Idle alone permits another poll; no consumed event,
 * capacity error, open, subscription activation or failed close is replayed.
 */
#define FRANKA_BUILD_ROS_COMM
#include <franka/c/module_pipeline.h>
#include <ros/c/command.h>
#include <ros/c/roswasm/codec.h>
#include <stdio.h>
static roswasmc_context context;
static roswasmc_capability owner;
static unsigned phase;
static unsigned char wire[256];
static uint32_t text_length, text_digest;
static volatile uint32_t initialized;

/** @brief Observe Core start completion before this module acquires native resources. */
__attribute__((constructor(201))) static void initialize_ros(void)
{
    if(puts("ros-init") != EOF && fflush(stdout) == 0)
    {
        initialized = 203;
    }
}

__attribute__((export_name("ready"))) uint32_t franka_module_ros_ready(void)
{
    return initialized;
}

__attribute__((export_name("open"))) uint32_t franka_module_ros_open(void)
{
    uint32_t result;
    if(initialized != 203)
    {
        return 78;
    }
    if(phase)
    {
        return 17;
    }
    phase = 1;
    context.backend = roswasmc_ros1_backend();
    roswasmc_capability_init(&owner, &context);
    result = roswasmc_open(&owner, "sample", 6);
    if(!result)
    {
        result = roswasmc_subscribe(&owner);
    }
    return result;
}

__attribute__((export_name("poll"))) uint32_t franka_module_ros_poll(void)
{
    roswasmc_result result;
    roswasmc_string text;
    uint32_t error, digest = UINT32_C(2166136261);
    size_t index;
    if(phase != 1 || !owner.handle)
    {
        return 9;
    }
    result = roswasmc_poll(&owner, wire, sizeof wire);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length > sizeof wire)
    {
        return 22;
    }
    error = roswasmc_decode_string(wire, (size_t)result.length, &text);
    if(error || text.size > 252 || !roswasmc_utf8(text, 0))
    {
        return error ? error : 22;
    }
    for(index = 0; index < text.size; ++index)
    {
        digest ^= (unsigned char)text.data[index];
        digest *= UINT32_C(16777619);
    }
    text_length = (uint32_t)text.size;
    text_digest = digest;
    return 0;
}

__attribute__((export_name("length"))) uint32_t franka_module_ros_length(void)
{
    return text_length;
}

__attribute__((export_name("digest"))) uint32_t franka_module_ros_digest(void)
{
    return text_digest;
}

__attribute__((export_name("pause"))) uint32_t franka_module_ros_pause(void)
{
    return uwvm_ros_command_pause(UINT64_C(20000000));
}

__attribute__((export_name("close"))) uint32_t franka_module_ros_close(void)
{
    phase = 2;
    return owner.handle ? roswasmc_close(&owner) : 0;
}
