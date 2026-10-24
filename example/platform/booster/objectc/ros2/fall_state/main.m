/**
 * @file main.m
 * @brief Observe the complete booster_interface/msg/FallDownState.
 * @details One explicit fixture alias; all canonical bytes are emitted after cleanup.
 * No publication, service or physical actuator command is issued.
 */
#include <booster/c/observation.h>
#include <deep_robotics/support/command.h>

/** @brief Run one bounded complete-value observation.
 * @param argc Exactly two arguments including the program name.
 * @param argv Borrowed program and explicitly granted native alias.
 * @return Primary, cleanup, codec or output status, capped to 125.
 */
int main(int argc, char** argv)
{
    if(argc != 2)
    {
        return 22;
    }
    roswasmc_bounded_2_booster_interface_msg_FallDownState value;
    memset(&value, 0, sizeof value);
    uwvm_vendor_observation facts = booster_wait_fall_state(argv[1], &value);
    uint8_t wire[5];
    size_t size = 0;
    uint32_t encoding = facts.response_present ? roswasmc_bounded_2_booster_interface_msg_FallDownState_encode(&value, wire, sizeof wire, &size) : 0;
    return uwvm_vendor_output(&facts, wire, size, encoding);
}
