/** @file main.cpp
 * @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse C++ codec.
 * @details Values are local fixtures; no native ROS owner or permission is created.
 */
#include <universal_robots/cpp/ros1/universal-robots-ros1-complete/bounded_records.hpp>
#include <cstdio>

int main()
{
    uwvm_custom::Ros1Ur_dashboard_msgsAddToLogResponse value{}, decoded{};
    roswasmcpp::wire::bytes bytes, again;
    using codec = roswasmcpp::Codec<uwvm_custom::Ros1Ur_dashboard_msgsAddToLogResponse>;
    if(!codec::encode(value, bytes) || !codec::decode(bytes, decoded) || !codec::encode(decoded, again) || bytes != again)
        return 22;
    if(std::printf("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":%zu}\n", bytes.size()) < 0)
        return 5;
    return 0;
}
