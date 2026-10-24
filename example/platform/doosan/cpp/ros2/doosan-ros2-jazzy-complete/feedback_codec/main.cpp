/** @file main.cpp
 * @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback C++ codec.
 * @details Values are local fixtures; no native ROS owner or permission is created.
 */
#include <doosan/cpp/ros2/doosan-ros2-jazzy-complete/bounded_records.hpp>
#include <cstdio>

int main()
{
    uwvm_custom::Ros2Dsr_msgs2ActionJogH2r_Feedback value{}, decoded{};
    roswasmcpp::wire::bytes bytes, again;
    using codec = roswasmcpp::Codec<uwvm_custom::Ros2Dsr_msgs2ActionJogH2r_Feedback>;
    if(!codec::encode(value, bytes) || !codec::decode(bytes, decoded) || !codec::encode(decoded, again) || bytes != again)
        return 22;
    if(std::printf("{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":%zu}\n", bytes.size()) < 0)
        return 5;
    return 0;
}
