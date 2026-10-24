/**
 * @file main.cpp
 * @brief Own one typed ABB GetSpeedRatio client and retain the complete reply.
 * @details The nonmoving C++ client borrows a stable immutable backend. A single
 * empty request reads integer percent without changing an override. Explicit
 * close is observed independently from transport/controller status. The actual
 * C++ canonical codec preserves every original response field.
 * Build in this directory with xmake. The output is a wasm32-wasip1 command
 * importing the real ROS 2 capability ABI. Run through a configured uwvm2 ROS
 * host with the exact selected native schema and an externally granted alias.
 * @see abb_observation, abb_example_output
 */
#include <abb/cpp/ros2/abb-ros2-complete/bounded_interfaces.hpp>
#include <abb/c/observation.h>
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
        abb_observation refused{};
        refused.primary = 22;
        return abb_example_output(&refused, nullptr, 0, 0);
    }
    using Client = uwvm_custom::Ros2Abb_robot_msgsSrvGetSpeedRatioClient;
    roswasmc_context context{roswasmc_ros2_backend()};
    Client client{context, argv[1]};
    Client::Request request{};
    Client::Response response{};
    abb_observation facts{};
    facts.primary = client.error();
    if(!facts.primary)
    {
        facts.rpc = client.call(request, response);
        facts.rpc_present = 1;
        facts.primary = facts.rpc.error;
        if(!facts.primary)
        {
            facts.response_present = 1;
            if(response.result_code != 1 || response.speed_ratio > 100)
            {
                facts.primary = 5;
            }
        }
    }
    if(client.is_open())
    {
        facts.cleanup_present = 1;
        facts.cleanup = client.close();
    }
    roswasmcpp::wire::bytes wire;
    uint32_t encoded = 0;
    if(facts.response_present && !roswasmcpp::Codec<Client::Response>::encode(response, wire))
    {
        encoded = 22;
    }
    return abb_example_output(&facts, wire.data(), wire.size(), encoded);
}
