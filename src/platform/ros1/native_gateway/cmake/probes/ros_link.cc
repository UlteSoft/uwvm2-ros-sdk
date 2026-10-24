/**
 * @file ros_link.cc
 * @brief Native ROS 1 ros link implementation for the bounded gateway.
 * @details This maintained adapter uses the selected original ROS SDK and the
 * shared uwvm2 IPC contracts. Native type metadata and explicit trusted policy
 * remain authoritative; this file grants no guest rights. It is compiled as
 * infrastructure, independently from all guest source languages.
 */
// Compile and link only: the std::string-bearing public symbols detect a
// selected libstdc++/roscpp string ABI mismatch without initializing ROS.
#include <ros/ros.h>
#include <string>

int main(int argc, char** argv)
{
    ::ros::init(argc, argv, std::string{"uwvm_ros1_sdk_link_probe"}, ::ros::init_options::NoSigintHandler | ::ros::init_options::NoRosout);
    ::ros::NodeHandle node{std::string{"/"}};
    return node.getNamespace().empty() ? 1 : 0;
}
