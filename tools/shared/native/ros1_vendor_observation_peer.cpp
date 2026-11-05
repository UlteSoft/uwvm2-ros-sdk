// SPDX-License-Identifier: Apache-2.0
// Independent native ROS messages for the complete PAL, Robotis and Trossen guests.
#include <ros/ros.h>
#include <thread>
#include <type_traits>
#include <pal_device_msgs/BatteryState.h>
#include <pal_device_msgs/Bumper.h>
#include <pal_device_msgs/LedGroup.h>
#include <turtlebot3_msgs/SensorState.h>
#include <turtlebot3_msgs/Sound.h>
#include <turtlebot3_msgs/VersionInfo.h>
#include <interbotix_xs_msgs/JointGroupCommand.h>
#include <interbotix_xs_msgs/JointSingleCommand.h>
#include <interbotix_xs_msgs/JointTrajectoryCommand.h>
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
        ros::M_string remappings;
        ros::init(remappings,"sdk_vendor_observation_peer",ros::init_options::NoSigintHandler);
        ros::NodeHandle node;
        std::function<bool()> matched;std::function<void()> publish;
        auto prepare=[&](auto const& value) {
            using T=std::decay_t<decltype(value)>;
            auto p=node.advertise<T>(topic,10,false);
            matched=[p]{return p.getNumSubscribers()>0;};
            publish=[p,value]{p.publish(value);};
        };
        if(scenario=="battery_state") {
            pal_device_msgs::BatteryState v;v.chargeState=4;v.batteryPercentage=87.5f;prepare(v);
        } else if(scenario=="bumper") {
            pal_device_msgs::Bumper v;v.header.stamp.sec=23;v.header.stamp.nsec=456000000;
            v.header.frame_id="bumper_中";v.is_pressed=true;prepare(v);
        } else if(scenario=="led_group") {
            pal_device_msgs::LedGroup v;v.ledMask=3;prepare(v);
        } else if(scenario=="sensor_state") {
            turtlebot3_msgs::SensorState v;v.header.stamp.sec=29;v.header.stamp.nsec=987654;
            v.header.frame_id="base_🙂";v.bumper=3;v.cliff=.25f;v.sonar=1.5f;v.illumination=42.25f;
            v.led=3;v.button=2;v.torque=true;v.left_encoder=-2147483647;v.right_encoder=2147483646;
            v.battery=12.5f;prepare(v);
        } else if(scenario=="sound") {
            turtlebot3_msgs::Sound v;v.value=4;prepare(v);
        } else if(scenario=="version_info") {
            turtlebot3_msgs::VersionInfo v;v.hardware="2026.11.04";v.firmware="1.2.3";
            v.software="2.4.6-中";prepare(v);
        } else if(scenario=="joint_group_command") {
            interbotix_xs_msgs::JointGroupCommand v;v.name="arm_中";v.cmd={.125f,-.25f,.5f};prepare(v);
        } else if(scenario=="joint_single_command") {
            interbotix_xs_msgs::JointSingleCommand v;v.name="wrist_🙂";v.cmd=-.75f;prepare(v);
        } else if(scenario=="joint_trajectory_command") {
            interbotix_xs_msgs::JointTrajectoryCommand v;v.cmd_type="group";v.name="arm_中";
            auto& t=v.traj;t.header.stamp.sec=17;t.header.stamp.nsec=123456789;t.header.frame_id="map_中";
            t.joint_names={"left","right_🙂"};t.points.resize(1);auto& p=t.points[0];
            p.positions={1.25,-2.5};p.velocities={.125,-.25};p.accelerations={.5,-.75};p.effort={2.,3.};
            p.time_from_start.sec=3;p.time_from_start.nsec=250000000;prepare(v);
        } else return 22;
        std::puts("READY");std::fflush(stdout);
        auto const deadline=std::chrono::steady_clock::now()+std::chrono::seconds(seconds);
        auto next=std::chrono::steady_clock::now();std::size_t count=0;bool observed=false;
        while(ros::ok() && std::chrono::steady_clock::now()<deadline) {
            ros::spinOnce();bool const connected=matched();auto const now=std::chrono::steady_clock::now();
            if(connected && !observed) {observed=true;std::puts("MATCHED");std::fflush(stdout);}
            if(connected && mode=="sample" && count==0 && now>=next) {
                publish();std::printf("PUBLISHED %zu\n",++count);std::fflush(stdout);
                next=now+std::chrono::milliseconds(50);
            }
            std::this_thread::sleep_for(std::chrono::milliseconds(2));
        }
        ros::shutdown();return 0;
    } catch(std::exception const& e) {
        std::fprintf(stderr,"native vendor observation peer failed: %s\n",e.what());return 1;
    }
}
