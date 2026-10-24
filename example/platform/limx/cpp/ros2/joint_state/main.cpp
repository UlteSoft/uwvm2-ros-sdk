/**
 * @file main.cpp
 * @brief Observe the complete uwvm_limx_bridge/msg/JointState.
 * @details One explicit fixture alias; all canonical bytes are emitted after cleanup.
 * No publication, service or physical actuator command is issued.
 */
#include <limx/c/observation.h>
#include <deep_robotics/support/command.h>
#include <limx/cpp/ros2/records.hpp>

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
    uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointState value{};
    auto facts = limx_wait_joint_state(argv[1], &value);
    roswasmcpp::wire::bytes wire;
    uint32_t encoding = 0;
    if(facts.response_present && !roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointState>::encode(value, wire))
    {
        encoding = 22;
    }
    return uwvm_vendor_output(&facts, wire.data(), wire.size(), encoding);
}
