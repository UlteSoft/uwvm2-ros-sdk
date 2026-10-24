/**
 * @file algorithm.c
 * @brief Validate all original response fields in an ungranted shared module.
 * @details Canonical bytes enter one scalar at a time into module-owned memory.
 * There is no imported memory, cross-module pointer or native ROS authority.
 */
#include <fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h>
#include <ros2/c/roswasm/ros2.h>
#include <stdint.h>
#include <string.h>

static unsigned char owned_wire[32];
static uint32_t filled;

/** @brief Reset caller-driven assembly of one complete original response. */
__attribute__((visibility("default"))) void payload_algorithm_reset(void)
{
    memset(owned_wire, 0, sizeof owned_wire);
    filled = 0;
}

/**
 * @brief Copy one canonical byte without borrowing another module's pointer.
 * @param index Sequential byte index0..31.
 * @param byte Exact byte value0..255.
 * @return Zero on commit;22 on invalid order, index or value with storage intact.
 */
__attribute__((visibility("default"))) uint32_t payload_algorithm_put(uint32_t index, uint32_t byte)
{
    if(index >= sizeof owned_wire || index != filled || byte > 255) { return 22; }
    owned_wire[index] = (unsigned char)byte;
    ++filled;
    return 0;
}

/**
 * @brief Decode and check every original GetPayloadValue response field.
 * @param refusal Zero selects success;1 selects the complete refusal fixture.
 * @return Zero on full match;11 for incomplete data;65 for invalid fields/wire.
 */
__attribute__((visibility("default"))) uint32_t payload_algorithm_check(uint32_t refusal)
{
    roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadValue_Response value = {0};
    if(filled != sizeof owned_wire) { return 11; }
    if(roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadValue_Response_decode(owned_wire, filled, &value)) { return 65; }
    if(refusal)
    {
        return value.mass == 99 && value.cg_x == -1 && value.cg_y == 2 && value.cg_z == -3 && value.in_x == 4 && value.in_y == 5 && value.in_z == 6 &&
                       value.result == -7
                   ? 0
                   : 65;
    }
    return value.mass == 12.5f && value.cg_x == 0.25f && value.cg_y == -0.5f && value.cg_z == 1 && value.in_x == 2 && value.in_y == 3.5f &&
                   value.in_z == 4.25f && value.result == 0
               ? 0
               : 65;
}

/** @brief Return the actual ROS13 denial from this independently ungranted module. */
__attribute__((visibility("default"))) uint32_t payload_algorithm_denial(void)
{
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t error = roswasmc_open(&owner, "sample", 6);
    if(!error)
    {
        uint32_t cleanup = roswasmc_close(&owner);
        error = cleanup ? cleanup : 65;
    }
    return error;
}
