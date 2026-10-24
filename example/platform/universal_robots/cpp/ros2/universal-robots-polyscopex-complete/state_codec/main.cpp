/** @file main.cpp
 * @brief Exercise the complete original urinterfaces/msg/RobotMode C++ codec.
 * @details Values are local fixtures; no native ROS owner or permission is created.
 */
#include <universal_robots/cpp/ros2/universal-robots-polyscopex-complete/bounded_records.hpp>
#include <cstdio>

int main()
{
    uwvm_custom::Ros2UrinterfacesMsgRobotMode value{}, decoded{};
    roswasmcpp::wire::bytes bytes, again;
    using codec = roswasmcpp::Codec<uwvm_custom::Ros2UrinterfacesMsgRobotMode>;
    if(!codec::encode(value, bytes) || !codec::decode(bytes, decoded) || !codec::encode(decoded, again) || bytes != again)
        return 22;
    if(std::printf("{\"type\":\"urinterfaces/msg/RobotMode\",\"bytes\":%zu}\n", bytes.size()) < 0)
        return 5;
    return 0;
}
