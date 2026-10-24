/**
 * @file main.cpp
 * @brief Revoke two owners of one original fanuc read-service alias.
 * @details Exactly one native request precedes revocation. A second locally
 * open owner must receive stale-handle9, reopening must receive125, and every
 * sentinel response byte must survive. Checked cleanup is recorded separately;
 * no request, close or reopen is retried. This fixture controls no robot hardware.
 */
#include <cstdio>
#include <cstring>
#include <fanuc/cpp/ros2/fanuc-ros2-complete/bounded_interfaces.hpp>
#include <ros2/c/roswasm/ros2.h>

/**
 * @brief Emit canonical bytes without passing module-owned pointers elsewhere.
 * @param bytes Borrowed complete canonical value to emit as hexadecimal.
 */
static void print_wire(roswasmcpp::wire::bytes const& bytes)
{
    for(auto byte: bytes) { std::printf("%02x", static_cast<unsigned>(byte)); }
}

/**
 * @brief Check native positive response, retired handles and immutable sentinels.
 * @param argc Exactly two arguments including the program name.
 * @param argv Borrowed argument array; argv[1] is the operator-granted alias.
 * @return Zero only for all independent lifecycle assertions;22 for bad arity.
 */
int main(int argc, char** argv)
{
    if(argc != 2) { return 22; }
    using Client = uwvm_custom::Ros2Fanuc_msgsSrvGetPayloadValueClient;
    roswasmc_context context{roswasmc_ros2_backend()};
    Client first{context, argv[1]}, second{context, argv[1]};
    auto const first_open = first.error(), second_open = second.error();
    Client::Request request{};
    request.payload_schedule_id = 7;
    Client::Response response{};
    auto const rpc = first.call(request, response);
    roswasmcpp::wire::bytes wire;
    bool const encoded = !rpc.error && roswasmcpp::Codec<Client::Response>::encode(response, wire);
    bool const full_response = response.mass == 12.5f && response.cg_x == 0.25f && response.cg_y == -0.5f && response.cg_z == 1 && response.in_x == 2 &&
                               response.in_y == 3.5f && response.in_z == 4.25f && response.result == 0;
    auto const revoked = first.is_open() ? first.revoke() : 9u;
    Client::Response sentinel{};
    sentinel.mass = 77;
    sentinel.cg_x = 0.5f;
    sentinel.cg_y = -0.25f;
    sentinel.cg_z = 2;
    sentinel.in_x = 3;
    sentinel.in_y = 4;
    sentinel.in_z = 5;
    sentinel.result = 0x1234;
    roswasmcpp::wire::bytes before, after;
    bool const before_encoded = roswasmcpp::Codec<Client::Response>::encode(sentinel, before);
    bool const second_owner_present = second.is_open();
    auto const denied = second.call(request, sentinel);
    bool const after_encoded = roswasmcpp::Codec<Client::Response>::encode(sentinel, after);
    bool const preserved = before_encoded && after_encoded && before == after;
    Client reopened{context, argv[1]};
    auto const reopen = reopened.error();
    auto const cleanup = second.is_open() ? second.close() : 9u;
    bool const retired = !first.is_open() && !second.is_open() && !reopened.is_open();
    bool const passed = !first_open && !second_open && !rpc.error && encoded && full_response && !revoked && second_owner_present && denied.error == 9 &&
                        reopen == 125 && preserved && cleanup == 9 && retired;
    std::printf("{\"first_open\":%u,\"second_open\":%u,\"positive_rpc\":%u,\"revoke\":%u,"
                "\"second_owner_present_before_call\":%s,\"live_owner_denied\":%u,\"reopen_denied\":%u,"
                "\"response_preserved\":%s,\"cleanup\":%u,\"owners_retired\":%s,"
                "\"full_response\":%s,\"passed\":%s,\"wire_hex\":\"",
                first_open, second_open, rpc.error, revoked, second_owner_present ? "true" : "false", denied.error,
                reopen, preserved ? "true" : "false", cleanup, retired ? "true" : "false",
                full_response ? "true" : "false", passed ? "true" : "false");
    print_wire(wire);
    std::fputs("\",\"sentinel_before_hex\":\"", stdout);
    print_wire(before);
    std::fputs("\",\"sentinel_after_hex\":\"", stdout);
    print_wire(after);
    if(std::puts("\"}") < 0 || std::fflush(stdout)) { return 5; }
    return passed ? 0 : 1;
}
