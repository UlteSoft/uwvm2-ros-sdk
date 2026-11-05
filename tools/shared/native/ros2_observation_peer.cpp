// SPDX-License-Identifier: Apache-2.0
// Independent typed DDS source for complete observation tests.
#include <rclcpp/rclcpp.hpp>
#include <control_msgs/msg/joint_tolerance.hpp>
#include <trajectory_msgs/msg/joint_trajectory.hpp>
#include <trajectory_msgs/msg/multi_dof_joint_trajectory.hpp>
#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <functional>
#include <string>

int main(int argc, char** argv) {
    if (argc != 5) return 22;
    std::string const scenario=argv[1], topic=argv[2], mode=argv[3];
    char* end=nullptr; long const seconds=std::strtol(argv[4],&end,10);
    if (!end || *end || seconds<1 || seconds>3600 || topic.empty() || topic[0]!='/' ||
        (mode!="sample" && mode!="silent")) return 22;
    try {
        rclcpp::init(0,nullptr);
        auto node=std::make_shared<rclcpp::Node>("sdk_observation_peer");
        rclcpp::QoS qos(rclcpp::KeepLast(10)); qos.reliable().durability_volatile();
        std::function<bool()> matched;
        std::function<void()> publish;
        if (scenario=="joint_tolerance") {
            auto p=node->create_publisher<control_msgs::msg::JointTolerance>(topic,qos);
            control_msgs::msg::JointTolerance v;
            v.name="joint_中"; v.position=.125; v.velocity=.25; v.acceleration=.5;
            matched=[p]{return p->get_subscription_count()>0;};
            publish=[p,v]{p->publish(v);};
        } else if (scenario=="joint_trajectory") {
            auto p=node->create_publisher<trajectory_msgs::msg::JointTrajectory>(topic,qos);
            trajectory_msgs::msg::JointTrajectory v;
            v.header.stamp.sec=17;v.header.stamp.nanosec=123456789;v.header.frame_id="map_中";
            v.joint_names={"left","right_🙂"};v.points.resize(1);
            auto& point=v.points[0];
            point.positions={1.25,-2.5};point.velocities={.125,-.25};
            point.accelerations={.5,-.75};point.effort={2.,3.};
            point.time_from_start.sec=3;point.time_from_start.nanosec=250000000;
            matched=[p]{return p->get_subscription_count()>0;};
            publish=[p,v]{p->publish(v);};
        } else if (scenario=="multi_d_o_f_joint_trajectory") {
            auto p=node->create_publisher<trajectory_msgs::msg::MultiDOFJointTrajectory>(topic,qos);
            trajectory_msgs::msg::MultiDOFJointTrajectory v;
            v.header.stamp.sec=19;v.header.stamp.nanosec=987654321;v.header.frame_id="odom_中";
            v.joint_names={"base_🙂"};v.points.resize(1);
            auto& point=v.points[0];point.transforms.resize(1);
            auto& transform=point.transforms[0];
            transform.translation.x=1.25;transform.translation.y=-2.5;transform.translation.z=.75;
            transform.rotation.x=0.;transform.rotation.y=0.;transform.rotation.z=0.;transform.rotation.w=1.;
            point.velocities.resize(1);point.accelerations.resize(1);
            point.velocities[0].linear.x=.125;point.velocities[0].linear.y=.25;point.velocities[0].linear.z=.5;
            point.velocities[0].angular.x=-.125;point.velocities[0].angular.y=-.25;point.velocities[0].angular.z=-.5;
            point.accelerations[0].linear.x=1.;point.accelerations[0].linear.y=2.;point.accelerations[0].linear.z=3.;
            point.accelerations[0].angular.x=-1.;point.accelerations[0].angular.y=-2.;point.accelerations[0].angular.z=-3.;
            point.time_from_start.sec=5;point.time_from_start.nanosec=500000000;
            matched=[p]{return p->get_subscription_count()>0;};
            publish=[p,v]{p->publish(v);};
        } else return 22;
        std::puts("READY");std::fflush(stdout);
        auto const deadline=std::chrono::steady_clock::now()+std::chrono::seconds(seconds);
        auto next=std::chrono::steady_clock::now();std::size_t count=0;bool observed=false;
        while(rclcpp::ok() && std::chrono::steady_clock::now()<deadline) {
            rclcpp::spin_some(node);
            bool const connected=matched();auto const now=std::chrono::steady_clock::now();
            if(connected && !observed) {observed=true;std::puts("MATCHED");std::fflush(stdout);}
            if(connected && mode=="sample" && now>=next) {
                publish();std::printf("PUBLISHED %zu\n",++count);std::fflush(stdout);
                next=now+std::chrono::milliseconds(50);
            }
            rclcpp::sleep_for(std::chrono::milliseconds(2));
        }
        rclcpp::shutdown();return 0;
    } catch(std::exception const& e) {std::fprintf(stderr,"native observation peer failed: %s\n",e.what());return 1;}
}
