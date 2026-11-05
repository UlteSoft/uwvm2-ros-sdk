// SPDX-License-Identifier: Apache-2.0
// Independent native ROS 2 endpoint for finite guest transport tests.
// It sends/observes real DDS samples; it never implements a guest algorithm.
#include <rclcpp/rclcpp.hpp>
#include <std_msgs/msg/string.hpp>
#include <std_srvs/srv/trigger.hpp>
#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <memory>
#include <string>

static void hex(std::string const& bytes) {
    for (unsigned char byte : bytes) std::printf("%02x", unsigned(byte));
}
int main(int argc, char** argv) {
    if (argc != 5) return 22; // operation, absolute topic/service, original text, seconds
    std::string const mode=argv[1], name=argv[2], text=argv[3];
    char* end=nullptr;
    long const seconds=std::strtol(argv[4],&end,10);
    if (!end || *end || seconds<1 || seconds>600 || name.empty() || name[0]!='/') return 22;
    if(mode!="publish-string" && mode!="subscribe-string" && mode!="trigger-true" && mode!="trigger-false") return 22;
    try {
        rclcpp::init(0,nullptr);
        auto node=std::make_shared<rclcpp::Node>("sdk_component_peer");
        rclcpp::QoS qos(rclcpp::KeepLast(10));
        qos.reliable().durability_volatile();
        rclcpp::Publisher<std_msgs::msg::String>::SharedPtr publisher;
        rclcpp::Subscription<std_msgs::msg::String>::SharedPtr subscriber;
        rclcpp::Service<std_srvs::srv::Trigger>::SharedPtr service;
        std::size_t count=0;
        if(mode=="publish-string") publisher=node->create_publisher<std_msgs::msg::String>(name,qos);
        else if(mode=="subscribe-string") {
            subscriber=node->create_subscription<std_msgs::msg::String>(name,qos,
                [&](std_msgs::msg::String::ConstSharedPtr sample) {
                    ++count;std::printf("RECEIVED %zu ",count);hex(sample->data);std::puts("");std::fflush(stdout);
                });
        } else {
            service=node->create_service<std_srvs::srv::Trigger>(name,
                [&](std_srvs::srv::Trigger::Request::SharedPtr, std_srvs::srv::Trigger::Response::SharedPtr response) {
                    response->success=mode=="trigger-true";response->message=text;
                    ++count;std::printf("RESPONDED %zu %d ",count,int(response->success));hex(response->message);
                    std::puts("");std::fflush(stdout);
                });
        }
        std::puts("READY");std::fflush(stdout);
        auto const deadline=std::chrono::steady_clock::now()+std::chrono::seconds(seconds);
        auto next=std::chrono::steady_clock::now();
        while(rclcpp::ok() && std::chrono::steady_clock::now()<deadline) {
            rclcpp::spin_some(node);
            auto now=std::chrono::steady_clock::now();
            if(publisher && publisher->get_subscription_count()>0 && now>=next) {
                std_msgs::msg::String sample;sample.data=text;publisher->publish(sample);++count;
                std::printf("PUBLISHED %zu ",count);hex(text);std::puts("");std::fflush(stdout);
                next=now+std::chrono::milliseconds(50);
            }
            rclcpp::sleep_for(std::chrono::milliseconds(2));
        }
        rclcpp::shutdown();
        return 0;
    } catch(std::exception const& error) {
        std::fprintf(stderr,"native ROS peer failed: %s\n",error.what());return 1;
    }
}
