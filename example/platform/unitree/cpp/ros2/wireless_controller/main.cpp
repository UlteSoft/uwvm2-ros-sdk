/**
 * @file main.cpp
 * @brief Observe all four joystick axes and the complete key bitmask without generating input.
 * @details A finite observation retains one actual native subscription and
 * closes its owner once. No robot command or service operation is issued.
 * Build this directory with Xmake; run the sole .wasm through uwvm2-ros.
 */
#include <unitree/cpp/observation.hpp>
#include <unitree/support/command_io.h>

/**
 * @brief Execute one exact-type native ROS 2 observation.
 * @param[in] argc Exactly two arguments including the program name.
 * @param[in] argv Borrowed arguments: application EXISTING_ALIAS.
 * @return Original operation/cleanup/encoding/output status, clamped to 125.
 * @details Output includes the entire canonical record and independent error
 * facts. Host policy supplies the exact real topic, native identity, QoS, and
 * limits. All owners are closed before stdout; no physical robot is required.
 */
int main(int argc, char** argv)
{
    if(argc != 2)
    {
        return 22;
    }
    roswasmc_context context = {unitree_backend()};
    auto result = unitree::observe<unitree_wireless_controller>(context, argv[1], 250, unitree_command_pause);
    unitree_observation const& facts = result.facts;
    auto const& value = result.value;
    unsigned char wire[UNITREE_WIRELESS_CONTROLLER_WIRE_BYTES];
    size_t length = 0;
    uint32_t encoding = facts.response_present ? unitree_wireless_controller_encode(&value, wire, sizeof wire, &length) : 0;
    return unitree_command_output(&facts, wire, length, encoding);
}
