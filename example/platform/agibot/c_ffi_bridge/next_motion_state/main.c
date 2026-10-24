/* SPDX-License-Identifier: Apache-2.0 */
/** @file main.c
 * @brief Observe next_motion_state through the runtime's explicit ROS capability.
 * @details argv[1] is the operator-selected alias. The complete original value
 * is decoded inside this Wasm guest; stdout retains every original field as complete JSON.
 * A nonzero ABI, decode, cleanup or vendor error is an unsuccessful execution.
 */
#include <agibot/c_ffi_bridge/client.h>
#include <agibot/c/ros2/agibot-ros2-sdk-v1-1-0-main-complete/bounded_records.h>
#include <string.h>
#include <agibot/shared/output.h>
#include <agibot/c/json.h>
#include <inttypes.h>

int main(int argc, char** argv)
{
    char const* alias;
    if(argc != 2)
    {
        fprintf(stderr, "Expected exactly one granted Agibot alias\n");
        return 22;
    }
    alias = argv[1];
    roswasmc_bounded_2_aimdk_msgs_msg_McCommonState response = {0};
    uint32_t cleanup = 0;
    /* FFI returns canonical bytes; decode the complete original record here. */
    uint8_t bytes[698];
    uint32_t length = 0;
    uint32_t error = agibot_ffi_next_motion_state((uint8_t const*)alias, (uint32_t)strlen(alias), 3000, bytes, sizeof bytes, &length, &cleanup);
    if(!error)
    {
        error = roswasmc_bounded_2_aimdk_msgs_msg_McCommonState_decode(bytes, length, &response);
    }
    if(error)
    {
        fprintf(stderr, "McCommonState failed: %u; close: %u\n", error, cleanup);
        return (int)error;
    }
    uint8_t json[65536];
    uint32_t written = 0;
    uint32_t json_error = agibot_state_json(&response, json, sizeof json, &written);
    if(json_error || fwrite(json, 1, written, stdout) != written || putchar('\n') == EOF)
    {
        fprintf(stderr, "Complete JSON output failed: %u\n", json_error);
        return 1;
    }
    return 0;
}
