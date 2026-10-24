/** @file main.cpp
 * @brief Exercise the complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback C++ codec.
 * @details Values are local fixtures; no native ROS owner or permission is created.
 */
#include <universal_robots/cpp/ros2/universal-robots-ros2-complete/bounded_records.hpp>
#include <cstdio>

int main()
{
    uwvm_custom::Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback value{}, decoded{};
    roswasmcpp::wire::bytes bytes, again;
    using codec = roswasmcpp::Codec<uwvm_custom::Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback>;
    if(!codec::encode(value, bytes) || !codec::decode(bytes, decoded) || !codec::encode(decoded, again) || bytes != again)
        return 22;
    if(std::printf("{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":%zu}\n", bytes.size()) < 0)
        return 5;
    return 0;
}
