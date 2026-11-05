// SPDX-License-Identifier: Apache-2.0
// Independent native ROS messages for the complete PAL, Robotis and Trossen guests.
#include <rclcpp/rclcpp.hpp>
#include <pal_device_msgs/msg/battery_state.hpp>
#include <pal_device_msgs/msg/bumper.hpp>
#include <pal_device_msgs/msg/led_group.hpp>
#include <turtlebot3_msgs/msg/sensor_state.hpp>
#include <turtlebot3_msgs/msg/sound.hpp>
#include <turtlebot3_msgs/msg/version_info.hpp>
#include <interbotix_xs_msgs/msg/joint_group_command.hpp>
#include <interbotix_xs_msgs/msg/joint_single_command.hpp>
#include <interbotix_xs_msgs/msg/joint_trajectory_command.hpp>
#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <functional>
#include <string>

int main(int argc,char** argv) {
    if(argc!=5) return 22;
    std::string const scenario=argv[1],topic=argv[2],mode=argv[3];
    char* end=nullptr;long const seconds=std::strtol(argv[4],&end,10);
    if(!end || *end || seconds<1 || seconds>3600 || topic.empty() || topic[0]!='/' ||
       (mode!="sample" && mode!="silent")) return 22;
    try {
        rclcpp::init(0,nullptr);
        auto node=std::make_shared<rclcpp::Node>("sdk_vendor_observation_peer");
        rclcpp::QoS qos(rclcpp::KeepLast(10));qos.reliable().durability_volatile();
        std::function<bool()> matched;std::function<void()> publish;
        auto prepare=[&](auto const& value) {
            using T=std::decay_t<decltype(value)>;
            auto p=node->create_publisher<T>(topic,qos);
            matched=[p]{return p->get_subscription_count()>0;};
            publish=[p,value]{p->publish(value);};
        };
        if(scenario=="battery_state") {
            pal_device_msgs::msg::BatteryState v;v.charge_state=4;v.battery_percentage=87.5f;prepare(v);
        } else if(scenario=="bumper") {
            pal_device_msgs::msg::Bumper v;v.header.stamp.sec=23;v.header.stamp.nanosec=456000000;
            v.header.frame_id="bumper_中";v.is_pressed=true;prepare(v);
        } else if(scenario=="led_group") {
            pal_device_msgs::msg::LedGroup v;v.led_mask=3;prepare(v);
        } else if(scenario=="sensor_state") {
            turtlebot3_msgs::msg::SensorState v;v.header.stamp.sec=29;v.header.stamp.nanosec=987654;
            v.header.frame_id="base_🙂";v.bumper=3;v.cliff=.25f;v.sonar=1.5f;v.illumination=42.25f;
            v.led=3;v.button=2;v.torque=true;v.left_encoder=-2147483647;v.right_encoder=2147483646;
            v.battery=12.5f;prepare(v);
        } else if(scenario=="sound") {
            turtlebot3_msgs::msg::Sound v;v.value=4;prepare(v);
        } else if(scenario=="version_info") {
            turtlebot3_msgs::msg::VersionInfo v;v.hardware="2026.11.04";v.firmware="1.2.3";
            v.software="2.4.6-中";prepare(v);
        } else if(scenario=="joint_group_command") {
            interbotix_xs_msgs::msg::JointGroupCommand v;v.name="arm_中";v.cmd={.125f,-.25f,.5f};prepare(v);
        } else if(scenario=="joint_single_command") {
            interbotix_xs_msgs::msg::JointSingleCommand v;v.name="wrist_🙂";v.cmd=-.75f;prepare(v);
        } else if(scenario=="joint_trajectory_command") {
            interbotix_xs_msgs::msg::JointTrajectoryCommand v;v.cmd_type="group";v.name="arm_中";
            auto& t=v.traj;t.header.stamp.sec=17;t.header.stamp.nanosec=123456789;t.header.frame_id="map_中";
            t.joint_names={"left","right_🙂"};t.points.resize(1);auto& p=t.points[0];
            p.positions={1.25,-2.5};p.velocities={.125,-.25};p.accelerations={.5,-.75};p.effort={2.,3.};
            p.time_from_start.sec=3;p.time_from_start.nanosec=250000000;prepare(v);
        } else return 22;
        std::puts("READY");std::fflush(stdout);
        auto const deadline=std::chrono::steady_clock::now()+std::chrono::seconds(seconds);
        auto next=std::chrono::steady_clock::now();std::size_t count=0;bool observed=false;
        while(rclcpp::ok() && std::chrono::steady_clock::now()<deadline) {
            rclcpp::spin_some(node);bool const connected=matched();auto const now=std::chrono::steady_clock::now();
            if(connected && !observed) {observed=true;std::puts("MATCHED");std::fflush(stdout);}
            if(connected && mode=="sample" && now>=next) {
                publish();std::printf("PUBLISHED %zu\n",++count);std::fflush(stdout);
                next=now+std::chrono::milliseconds(50);
            }
            rclcpp::sleep_for(std::chrono::milliseconds(2));
        }
        rclcpp::shutdown();return 0;
    } catch(std::exception const& e) {
        std::fprintf(stderr,"native vendor observation peer failed: %s\n",e.what());return 1;
    }
}
