// SPDX-License-Identifier: Apache-2.0
#pragma once
#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/joint_state.hpp>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <functional>
#include <limits>
#include <set>
#include <stdexcept>
#include <string>
#include <vector>
namespace uwvm_fixture {
// Device frames only: trajectories, feedback control and cancellation run in Wasm.
class JointIo {
public:
  using Frame = sensor_msgs::msg::JointState;
  rclcpp::Node::SharedPtr node;
  std::vector<std::string> names;
  std::uint64_t received{}, rejected{}, published{};
private:
  rclcpp::Publisher<Frame>::SharedPtr publisher_;
  rclcpp::Subscription<Frame>::SharedPtr subscription_;
  std::int64_t last_stamp_{-1};
public:
  JointIo(std::string const& ns, std::vector<std::string> selected,
          std::function<bool(std::vector<double> const&)> write)
      : node(std::make_shared<rclcpp::Node>("physics_io", ns)), names(std::move(selected)) {
    if (names.empty() || std::set<std::string>(names.begin(), names.end()).size() != names.size())
      throw std::runtime_error("Select distinct actual hardware joints");
    publisher_ = node->create_publisher<Frame>("joint_states", rclcpp::QoS(10).best_effort());
    subscription_ = node->create_subscription<Frame>(
      "joint_commands", rclcpp::QoS(1).reliable(),
      [this, write = std::move(write)](Frame::ConstSharedPtr msg) {
        bool valid = msg->name == names && msg->position.size() == names.size()
                     && msg->velocity.empty() && msg->effort.empty()
                     && msg->header.stamp.sec >= 0 && msg->header.stamp.nanosec < 1000000000u;
        auto stamp = std::int64_t(msg->header.stamp.sec) * 1000000000 + msg->header.stamp.nanosec;
        for (double value : msg->position) valid = valid && std::isfinite(value);
        if (!valid || stamp <= last_stamp_ || !write(msg->position)) {
          ++rejected;
          std::fprintf(stderr, "physics_io: rejected invalid, stale or out-of-range device frame\n");
          return;
        }
        last_stamp_ = stamp;
        ++received;
      });
  }
  void publish(double simulation_time, std::vector<double> position,
               std::vector<double> velocity, std::vector<double> effort) {
    if (!std::isfinite(simulation_time) || simulation_time < 0 || simulation_time > 2147483646.0)
      throw std::runtime_error("Simulation time is outside ROS timestamp representation");
    Frame msg;
    auto ns = static_cast<std::int64_t>(simulation_time * 1e9);
    msg.header.stamp.sec = static_cast<std::int32_t>(ns / 1000000000);
    msg.header.stamp.nanosec = static_cast<std::uint32_t>(ns % 1000000000);
    msg.name = names;
    msg.position = std::move(position);
    msg.velocity = std::move(velocity);
    msg.effort = std::move(effort);
    publisher_->publish(msg);
    ++published;
  }
  void report_limits(std::vector<double> const& lower, std::vector<double> const& upper) const {
    if (lower.size() != names.size() || upper.size() != names.size())
      throw std::runtime_error("Device limit count differs from selected joints");
    for (std::size_t i = 0; i < names.size(); ++i)
      if (std::isnan(lower[i]) || std::isnan(upper[i]) || lower[i] >= upper[i])
        throw std::runtime_error("Original device limits are invalid");
    // Numeric metadata only; no native trajectory or feedback computation.
    std::printf("{\"format\":\"uwvm-physics-limits-v1\",\"lower\":[");
    for (std::size_t i = 0; i < names.size(); ++i) {
      if (i) std::putchar(',');
      if (std::isfinite(lower[i])) std::printf("%.17g", lower[i]); else std::printf("null");
    }
    std::printf("],\"upper\":[");
    for (std::size_t i = 0; i < names.size(); ++i) {
      if (i) std::putchar(',');
      if (std::isfinite(upper[i])) std::printf("%.17g", upper[i]); else std::printf("null");
    }
    std::puts("]}");
    std::fflush(stdout);
  }
  ~JointIo() {
    std::printf("{\"format\":\"uwvm-physics-io-v1\",\"received\":%llu,\"rejected\":%llu,\"published\":%llu}\n",
      static_cast<unsigned long long>(received), static_cast<unsigned long long>(rejected),
      static_cast<unsigned long long>(published));
    std::fflush(stdout);
  }
};
}
