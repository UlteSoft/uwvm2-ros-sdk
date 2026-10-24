/**
 * @file tf_groovy.cc
 * @brief Native ROS 1 tf groovy implementation for the bounded gateway.
 * @details This maintained adapter uses the selected original ROS SDK and the
 * shared uwvm2 IPC contracts. Native type metadata and explicit trusted policy
 * remain authoritative; this file grants no guest rights. It is compiled as
 * infrastructure, independently from all guest source languages.
 */
#include <ros/ros.h>
#include <tf2_ros/buffer.h>

int main()
{
    ::tf2::Buffer buffer{::ros::Duration{1.}, false};
    buffer.clear();
    geometry_msgs::TransformStamped transform;
    buffer.setTransform(transform, "compile_only", true);
    buffer.canTransform("parent", "child", ::ros::Time{});
    buffer.lookupTransform("parent", "child", ::ros::Time{});
    return 0;
}
