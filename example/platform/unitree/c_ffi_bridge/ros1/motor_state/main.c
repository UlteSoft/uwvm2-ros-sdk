/**
 * @file main.c
 * @brief Observe a native Gazebo joint-controller state, preserving every original motor field.
 * @details A finite observation retains one actual native subscription and
 * closes its owner once. No robot command or service operation is issued.
 * Build this directory with Xmake; run the sole .wasm through uwvm2-ros.
 */
#include <unitree/c_ffi_bridge/observation.h>
#include <unitree/support/command_io.h>

/**
 * @brief Execute one exact-type native ROS 1 observation.
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
    roswasmc_context context = {unitree_ffi_backend()};
    unitree_motor_state value = {0};
    unitree_observation facts = unitree_wait_motor_state(&context, argv[1], 250, unitree_command_pause, &value);
    unsigned char wire[UNITREE_MOTOR_STATE_WIRE_BYTES];
    size_t length = 0;
    uint32_t encoding = facts.response_present ? unitree_motor_state_encode(&value, wire, sizeof wire, &length) : 0;
    return unitree_command_output(&facts, wire, length, encoding);
}
