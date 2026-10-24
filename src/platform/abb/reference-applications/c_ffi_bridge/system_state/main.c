/**
 * @file main.c
 * @brief Subscribe and attempt one complete nonblocking ABB SystemState read.
 * @details Idle status 11 remains observable. The complete header, flags, tasks, and units are preserved.
 * Build in this directory with xmake. The output is a wasm32-wasip1 command
 * importing the real ROS 2 capability ABI. Run through a configured uwvm2 ROS
 * host with the exact selected native schema and an externally granted alias.
 * These C examples validate the shared C FFI bridge only. They add
 * no Swift, Haskell, Nim, D, or Odin language qualification.
 * @see abb_observation, abb_example_output
 */
#include <abb/c_ffi_bridge/observation.h>
#include <abb/support/observation_cli.h>

/**
 * @brief Execute the system_state observation and emit its complete result as JSON.
 * @param[in] argc Argument count; exactly 2 entries are required.
 * @param[in] argv Borrowed WASI arguments: application ALIAS.
 * @return Original operation/cleanup/encoding/IO status, clamped to 125.
 * @details Invalid argument count returns 22 before acquisition. A complete
 * controller refusal keeps its response. Every normally acquired capability
 * is closed before stdout output. No retry or background executor is started.
 * @see abb_example_output
 */
int main(int argc, char** argv)
{
    if(argc != 2)
    {
        return 22;
    }
    roswasmc_context context = {abb_c_ffi_backend()};
    roswasmc_bounded_2_abb_robot_msgs_msg_SystemState response = {0};
    abb_observation facts = abb_read_system_state(&context, argv[1], &response);
    unsigned char wire[ROSWASMC_BOUNDED_2_ABB_ROBOT_MSGS_MSG_SYSTEMSTATE_MAX_WIRE_BYTES];
    size_t size = 0;
    uint32_t encoded = 0;
    if(facts.response_present)
    {
        encoded = roswasmc_bounded_2_abb_robot_msgs_msg_SystemState_encode(&response, wire, sizeof wire, &size);
    }
    return abb_example_output(&facts, wire, size, encoded);
}
