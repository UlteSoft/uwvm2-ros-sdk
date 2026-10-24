/**
 * @file main.cpp
 * @brief Read the complete RAPID motion speed ratio once.
 * @details The empty request changes no speed override. Controller refusal retains the full reply.
 * Build in this directory with xmake. The output is a wasm32-wasip1 command
 * importing the real ROS 2 capability ABI. Run through a configured uwvm2 ROS
 * host with the exact selected native schema and an externally granted alias.
 * @see abb_observation, abb_example_output
 */
#include <abb/cpp/observation.hpp>
#include <abb/support/observation_cli.h>

/**
 * @brief Execute the read_speed observation and emit its complete result as JSON.
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
    roswasmc_context context = {roswasmc_ros2_backend()};
    auto result = abb::read_speed(context, argv[1]);
    abb_observation const& facts = result.facts;
    auto const& response = result.value;
    unsigned char wire[ROSWASMC_BOUNDED_2_ABB_ROBOT_MSGS_SRV_GETSPEEDRATIO_RESPONSE_MAX_WIRE_BYTES];
    size_t size = 0;
    uint32_t encoded = 0;
    if(facts.response_present)
    {
        encoded = roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_Response_encode(&response, wire, sizeof wire, &size);
    }
    return abb_example_output(&facts, wire, size, encoded);
}
