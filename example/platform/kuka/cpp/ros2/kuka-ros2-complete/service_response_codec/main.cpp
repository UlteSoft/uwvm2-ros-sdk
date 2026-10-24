/** @file main.cpp
 * @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response C++ codec.
 * @details Values are local fixtures; no native ROS owner or permission is created.
 */
#include <kuka/cpp/ros2/kuka-ros2-complete/bounded_records.hpp>
#include <cstdio>

int main()
{
    uwvm_custom::Ros2Lifecycle_msgsSrvChangeState_Response value{}, decoded{};
    roswasmcpp::wire::bytes bytes, again;
    using codec = roswasmcpp::Codec<uwvm_custom::Ros2Lifecycle_msgsSrvChangeState_Response>;
    if(!codec::encode(value, bytes) || !codec::decode(bytes, decoded) || !codec::encode(decoded, again) || bytes != again)
        return 22;
    if(std::printf("{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":%zu}\n", bytes.size()) < 0)
        return 5;
    return 0;
}
