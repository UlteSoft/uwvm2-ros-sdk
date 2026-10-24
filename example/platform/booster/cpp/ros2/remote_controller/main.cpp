/**
 * @file main.cpp
 * @brief Observe the complete booster_interface/msg/RemoteControllerState.
 * @details One explicit fixture alias; all canonical bytes are emitted after cleanup.
 * No publication, service or physical actuator command is issued.
 */
#include <booster/c/observation.h>
#include <deep_robotics/support/command.h>
#include <booster/cpp/ros2/records.hpp>

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
    uwvm_custom::Ros2Booster_interfaceMsgRemoteControllerState value{};
    auto facts = booster_wait_remote_controller(argv[1], &value);
    roswasmcpp::wire::bytes wire;
    uint32_t encoding = 0;
    if(facts.response_present && !roswasmcpp::Codec<uwvm_custom::Ros2Booster_interfaceMsgRemoteControllerState>::encode(value, wire))
    {
        encoding = 22;
    }
    return uwvm_vendor_output(&facts, wire.data(), wire.size(), encoding);
}
