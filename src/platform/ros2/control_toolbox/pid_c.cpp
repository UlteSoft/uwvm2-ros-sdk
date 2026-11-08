// SPDX-License-Identifier: Apache-2.0
#include <control_toolbox/pid.hpp>
#include <uwvm_ros/pid.h>
#include <limits>
#include <cmath>
struct uwvm_ros_pid {
  static control_toolbox::AntiWindupStrategy strategy() {
    control_toolbox::AntiWindupStrategy result;
    result.type = control_toolbox::AntiWindupStrategy::NONE;
    return result;
  }
  control_toolbox::Pid controller;
  uwvm_ros_pid(double p, double i, double d)
    : controller(p, i, d, std::numeric_limits<double>::infinity(),
                 -std::numeric_limits<double>::infinity(), strategy()) {}
};
extern "C" uwvm_ros_pid *uwvm_ros_pid_create(double p, double i, double d) {
  try { return new uwvm_ros_pid(p, i, d); } catch (...) { return nullptr; }
}
extern "C" void uwvm_ros_pid_destroy(uwvm_ros_pid *pid) { delete pid; }
extern "C" int uwvm_ros_pid_compute(uwvm_ros_pid *pid, double error, double seconds, double *output) {
  if (!pid || !output) return 1;
  try {
    double result = pid->controller.compute_command(error, seconds);
    *output = result;
    return 0;
  } catch (std::invalid_argument const&) { return 1; } catch (...) { return 2; }
}

extern "C" int uwvm_ros_pid_set_limits(uwvm_ros_pid *pid, double lower, double upper) {
  if (!pid || std::isnan(lower) || std::isnan(upper) || lower >= upper) return 1;
  try {
    auto gains = pid->controller.get_gains();
    gains.u_min_ = lower; gains.u_max_ = upper;
    gains.antiwindup_strat_.type = std::isfinite(lower) || std::isfinite(upper) ?
      control_toolbox::AntiWindupStrategy::CONDITIONAL_INTEGRATION :
      control_toolbox::AntiWindupStrategy::NONE;
    return pid->controller.set_gains(gains) ? 0 : 1;
  } catch (std::invalid_argument const&) { return 1; } catch (...) { return 2; }
}
