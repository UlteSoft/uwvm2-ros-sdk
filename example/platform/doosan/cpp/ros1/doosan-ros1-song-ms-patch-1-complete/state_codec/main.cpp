/** @file main.cpp
 * @brief Exercise the complete original dsr_msgs/RobotState C++ codec.
 * @details Values are local fixtures; no native ROS owner or permission is created.
 */
#include <doosan/cpp/ros1/doosan-ros1-song-ms-patch-1-complete/bounded_records.hpp>
#include <cstdio>

int main()
{
    uwvm_custom::Ros1Dsr_msgsRobotState value{}, decoded{};
    roswasmcpp::wire::bytes bytes, again;
    using codec = roswasmcpp::Codec<uwvm_custom::Ros1Dsr_msgsRobotState>;
    if(!codec::encode(value, bytes) || !codec::decode(bytes, decoded) || !codec::encode(decoded, again) || bytes != again)
        return 22;
    if(std::printf("{\"type\":\"dsr_msgs/RobotState\",\"bytes\":%zu}\n", bytes.size()) < 0)
        return 5;
    return 0;
}
