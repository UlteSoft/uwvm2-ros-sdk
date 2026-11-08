// SPDX-License-Identifier: Apache-2.0
#pragma once
// Value-only adapter for the upstream trajectory algorithm. This is not an
// rclcpp implementation: no node, executor, clock read, transport or host call.
#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <limits>
#include <stdexcept>
#include <string>
#include <vector>
#if defined(__wasm_atomics__)
#error "The trajectory component requires serial access to each private instance"
#endif
namespace uwvm_ros::trajectory_types {
struct TimeMessage { std::int32_t sec{}; std::uint32_t nanosec{}; };
struct DurationMessage { std::int32_t sec{}; std::uint32_t nanosec{}; };
enum class Clock { ros = 1, system = 2, steady = 3 };
inline std::int64_t add(std::int64_t a, std::int64_t b) {
  if (b > 0 && a > INT64_MAX - b) throw std::overflow_error("time addition overflow");
  if (b < 0 && a < INT64_MIN - b) throw std::underflow_error("time addition underflow");
  return a + b;
}
inline std::int64_t subtract(std::int64_t a, std::int64_t b) {
  if (b < 0 && a > INT64_MAX + b) throw std::overflow_error("time subtraction overflow");
  if (b > 0 && a < INT64_MIN + b) throw std::underflow_error("time subtraction underflow");
  return a - b;
}
class Duration {
  std::int64_t value_{};
public:
  Duration() = default;
  Duration(DurationMessage const& value)
    : value_(std::int64_t(value.sec) * INT64_C(1000000000) + value.nanosec) {}
  static Duration from_nanoseconds(std::int64_t value) { Duration r; r.value_ = value; return r; }
  static Duration from_seconds(double value) {
    double ns = value * 1e9;
    if (!std::isfinite(ns) || ns < -0x1p63 || ns >= 0x1p63)
      throw std::overflow_error("duration is outside the nanosecond representation");
    return from_nanoseconds(static_cast<std::int64_t>(ns));
  }
  std::int64_t nanoseconds() const { return value_; }
  double seconds() const { return std::chrono::duration<double>(std::chrono::nanoseconds(value_)).count(); }
};
class Time {
  std::int64_t value_{};
  Clock clock_ = Clock::system;
  void same_clock(Time const& rhs) const {
    if (clock_ != rhs.clock_) throw std::runtime_error("times have different clock sources");
  }
public:
  explicit Time(std::int64_t ns = 0, Clock clock = Clock::system) : value_(ns), clock_(clock) {}
  Time(TimeMessage const& value) : clock_(Clock::ros) {
    if (value.sec < 0) throw std::runtime_error("negative message timestamp");
    value_ = std::int64_t(value.sec) * INT64_C(1000000000) + value.nanosec;
  }
  std::int64_t nanoseconds() const { return value_; }
  double seconds() const { return std::chrono::duration<double>(std::chrono::nanoseconds(value_)).count(); }
  bool operator<(Time const& rhs) const { same_clock(rhs); return value_ < rhs.value_; }
  bool operator>=(Time const& rhs) const { same_clock(rhs); return value_ >= rhs.value_; }
  bool operator==(Time const& rhs) const { same_clock(rhs); return value_ == rhs.value_; }
  Time operator+(Duration const& rhs) const { return Time(add(value_, rhs.nanoseconds()), clock_); }
  Duration operator-(Time const& rhs) const { same_clock(rhs); return Duration::from_nanoseconds(subtract(value_, rhs.value_)); }
};
struct JointTrajectoryPoint {
  std::vector<double> positions, velocities, accelerations, effort;
  DurationMessage time_from_start;
};
struct Header { TimeMessage stamp; std::string frame_id; };
struct JointTrajectory { Header header; std::vector<std::string> joint_names; std::vector<JointTrajectoryPoint> points; };
}
