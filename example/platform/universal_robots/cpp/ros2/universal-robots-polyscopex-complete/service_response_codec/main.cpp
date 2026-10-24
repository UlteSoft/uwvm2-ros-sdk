/** @file main.cpp
 * @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response C++ codec.
 * @details Values are local fixtures; no native ROS owner or permission is created.
 */
#include <universal_robots/cpp/ros2/universal-robots-polyscopex-complete/bounded_records.hpp>
#include <cstdio>

int main()
{
    uwvm_custom::Ros2UrinterfacesSrvSetAnalogOutput_Response value{}, decoded{};
    roswasmcpp::wire::bytes bytes, again;
    using codec = roswasmcpp::Codec<uwvm_custom::Ros2UrinterfacesSrvSetAnalogOutput_Response>;
    if(!codec::encode(value, bytes) || !codec::decode(bytes, decoded) || !codec::encode(decoded, again) || bytes != again)
        return 22;
    if(std::printf("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":%zu}\n", bytes.size()) < 0)
        return 5;
    return 0;
}
