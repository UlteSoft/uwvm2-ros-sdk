// SPDX-License-Identifier: Apache-2.0
#include <uwvm_ros/trajectory.h>
#include <joint_trajectory_controller/trajectory.hpp>
#include <algorithm>
#include <cmath>
#include <stdexcept>
#if defined(UWVM_TRAJECTORY_NATIVE_ORACLE)
using Point = trajectory_msgs::msg::JointTrajectoryPoint;
using Time = rclcpp::Time;
constexpr auto ros_clock = RCL_ROS_TIME;
#else
using Point = uwvm_ros::trajectory_types::JointTrajectoryPoint;
using Time = uwvm_ros::trajectory_types::Time;
constexpr auto ros_clock = uwvm_ros::trajectory_types::Clock::ros;
#endif
namespace {
void copy_values(std::vector<double>& out, double const* in, std::size_t count) {
  if (!in) return;
  for (std::size_t i = 0; i < count; ++i)
    if (!std::isfinite(in[i])) throw std::invalid_argument("nonfinite trajectory input");
  out.assign(in, in + count);
}
Point point(uwvm_ros_trajectory_point const& in, std::size_t count) {
  if (!in.positions || (in.accelerations && !in.velocities))
    throw std::invalid_argument("incomplete trajectory point");
  Point out;
  copy_values(out.positions, in.positions, count);
  copy_values(out.velocities, in.velocities, count);
  copy_values(out.accelerations, in.accelerations, count);
  copy_values(out.effort, in.effort, count);
  return out;
}
}
struct uwvm_ros_segment {
  std::size_t count;
  Time start{std::int64_t{0}, ros_clock}, finish;
  Point before, after, sampled;
  joint_trajectory_controller::Trajectory trajectory;
  uwvm_ros_segment(std::size_t n, uwvm_ros_trajectory_point const& a,
                   uwvm_ros_trajectory_point const& b, std::int64_t ns)
    : count(n), finish(ns, ros_clock), before(point(a,n)), after(point(b,n)) {}
};
extern "C" uwvm_ros_segment *uwvm_ros_segment_create(size_t count,
    uwvm_ros_trajectory_point const* a, uwvm_ros_trajectory_point const* b, int64_t duration_ns) {
  if (!count || !a || !b || duration_ns < 0 || count > std::vector<double>().max_size()) return nullptr;
  try { return new uwvm_ros_segment(count, *a, *b, duration_ns); } catch (...) { return nullptr; }
}
extern "C" void uwvm_ros_segment_destroy(uwvm_ros_segment* segment) { delete segment; }
extern "C" int uwvm_ros_segment_sample(uwvm_ros_segment* s, int64_t elapsed_ns,
    double* positions, double* velocities, double* accelerations, double* effort, size_t capacity) {
  if (!s || !positions || capacity < s->count || elapsed_ns < 0) return 1;
  try {
    s->trajectory.interpolate_between_points(s->start, s->before, s->finish, s->after,
                                              Time(elapsed_ns, ros_clock), s->sampled);
    for (auto const* values : {&s->sampled.positions, &s->sampled.velocities, &s->sampled.accelerations, &s->sampled.effort})
      if (values->size() != s->count || !std::all_of(values->begin(),values->end(),[](double v){return std::isfinite(v);})) return 3;
    std::copy(s->sampled.positions.begin(),s->sampled.positions.end(),positions);
    if (velocities) std::copy(s->sampled.velocities.begin(),s->sampled.velocities.end(),velocities);
    if (accelerations) std::copy(s->sampled.accelerations.begin(),s->sampled.accelerations.end(),accelerations);
    if (effort) std::copy(s->sampled.effort.begin(),s->sampled.effort.end(),effort);
    return 0;
  } catch (...) { return 2; }
}
