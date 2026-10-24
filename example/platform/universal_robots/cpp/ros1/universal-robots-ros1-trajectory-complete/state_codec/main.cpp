/** @file main.cpp
 * @brief Exercise the complete original ur_msgs/IOStates C++ codec.
 * @details Values are local fixtures; no native ROS owner or permission is created.
 */
#include <universal_robots/cpp/ros1/universal-robots-ros1-trajectory-complete/bounded_records.hpp>
#include <cstdio>

int main()
{
    uwvm_custom::Ros1Ur_msgsIOStates value{}, decoded{};
    roswasmcpp::wire::bytes bytes, again;
    using codec = roswasmcpp::Codec<uwvm_custom::Ros1Ur_msgsIOStates>;
    if(!codec::encode(value, bytes) || !codec::decode(bytes, decoded) || !codec::encode(decoded, again) || bytes != again)
        return 22;
    if(std::printf("{\"type\":\"ur_msgs/IOStates\",\"bytes\":%zu}\n", bytes.size()) < 0)
        return 5;
    return 0;
}
