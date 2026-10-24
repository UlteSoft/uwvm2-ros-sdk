/** @file main.cpp
 * @brief Decode every original state field through the genuine public C++ facade.
 * @details Input is bounded by the selected Codec metadata. std::array owns
 * incoming bytes; Codec owns complete typed storage and returns vector bytes.
 * No ROS permission, native event or precomputed state is implied by this codec.
 * @return Original I/O errno 5, validation errno 22, or zero after full success.
 */
#include <flexiv/cpp/ros2/flexiv-ros2-jazzy-v2-2-complete/bounded_records.hpp>
#include <array>
#include <cstdio>

int main()
{
    using Value = uwvm_custom::Ros2Flexiv_msgsMsgRobotStates;
    using Codec = roswasmcpp::Codec<Value>;
    static std::array<unsigned char, Codec::max_wire_bytes + 1> bytes{};
    static Value value{};
    roswasmcpp::wire::bytes encoded;
    unsigned primary = 0;
    auto used = std::fread(bytes.data(), 1, bytes.size(), stdin);
    if(std::ferror(stdin))
    {
        primary = 5;
    }
    if(!primary && !Codec::decode(roswasmcpp::ByteView(bytes.data(), used), value))
    {
        primary = 22;
    }
    if(!primary && !Codec::encode(value, encoded))
    {
        primary = 22;
    }
    if(!primary)
    {
        std::printf("flexiv_msgs/msg/RobotStates bytes=%zu\n", encoded.size());
        for(auto byte: encoded)
        {
            std::printf("%02x", static_cast<unsigned>(byte));
        }
        std::puts("");
    }
    std::fprintf(stderr, "primary=%u cleanup=0\n", primary);
    return static_cast<int>(primary);
}
