/**
 * @file main.c
 * @brief Read the complete value of one configured ABB IO signal.
 * @details The strict UTF-8 signal name is validated before opening. No IO write is performed.
 * Build in this directory with xmake. The output is a wasm32-wasip1 command
 * importing the real ROS 2 capability ABI. Run through a configured uwvm2 ROS
 * host with the exact selected native schema and an externally granted alias.
 * @see abb_observation, abb_example_output
 */
#include <abb/c/observation.h>
#include <abb/support/observation_cli.h>

/**
 * @brief Execute the read_io observation and emit its complete result as JSON.
 * @param[in] argc Argument count; exactly 3 entries are required.
 * @param[in] argv Borrowed WASI arguments: application ALIAS SIGNAL.
 * @return Original operation/cleanup/encoding/IO status, clamped to 125.
 * @details Invalid argument count returns 22 before acquisition. A complete
 * controller refusal keeps its response. Every normally acquired capability
 * is closed before stdout output. No retry or background executor is started.
 * @see abb_example_output
 */
int main(int argc, char** argv)
{
    if(argc != 3)
    {
        abb_observation refused = {0};
        refused.primary = 22;
        return abb_example_output(&refused, 0, 0, 0);
    }
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_bounded_2_abb_robot_msgs_srv_GetIOSignal_Response response = {0};
    abb_observation facts = abb_read_io(&context, argv[1], argv[2], &response);
    unsigned char wire[ROSWASMC_BOUNDED_2_ABB_ROBOT_MSGS_SRV_GETIOSIGNAL_RESPONSE_MAX_WIRE_BYTES];
    size_t size = 0;
    uint32_t encoded = 0;
    if(facts.response_present)
    {
        encoded = roswasmc_bounded_2_abb_robot_msgs_srv_GetIOSignal_Response_encode(&response, wire, sizeof wire, &size);
    }
    return abb_example_output(&facts, wire, size, encoded);
}
