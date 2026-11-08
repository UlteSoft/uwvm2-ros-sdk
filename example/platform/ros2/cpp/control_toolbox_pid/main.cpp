// SPDX-License-Identifier: Apache-2.0
// Identical test input for upstream native ROS and the original-source Wasm port.
#include <control_toolbox/pid.hpp>
#include <uwvm_ros/pid.h>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <limits>
#include <stdexcept>

static unsigned checks;
static void require(bool ok) {
  ++checks;
  if (!ok) { std::fprintf(stderr, "PID migration assertion %u failed\n", checks); std::exit(1); }
}
template<class F> static void invalid(F f) {
  bool caught = false;
  try { f(); } catch (std::invalid_argument const&) { caught = true; }
  require(caught);
}
static control_toolbox::AntiWindupStrategy strategy(unsigned mode) {
  using A = control_toolbox::AntiWindupStrategy;
  A a; a.type = static_cast<A::Value>(mode); a.i_min = -0.75; a.i_max = 0.75;
  a.tracking_time_constant = 0.25; a.error_deadband = 0.00001;
  a.legacy_antiwindup = true; return a;
}
int main(int argc, char** argv) {
  using P = control_toolbox::Pid;
  using A = control_toolbox::AntiWindupStrategy;
  bool trace = argc > 1 && !std::strcmp(argv[1], "--trace");
  if (argc > 1 && !std::strcmp(argv[1], "--bench")) {
    unsigned long n = argc > 2 ? std::strtoul(argv[2], nullptr, 10) : 1000000;
    P pid(0.5, 0.125, 0.0625, 1.0, -1.0, strategy(A::BACK_CALCULATION));
    double total = 0; std::uint32_t bits = 7;
    auto started = std::chrono::steady_clock::now();
    for (unsigned long i = 0; i < n; ++i) {
      bits = bits * 1664525u + 1013904223u;
      total += pid.compute_command((int(bits >> 24) - 128) / 128.0, 0.001);
    }
    double seconds = std::chrono::duration<double>(std::chrono::steady_clock::now() - started).count();
    std::printf("PID_BENCH %lu %a %.9f\n", n, total, seconds); return 0;
  }
  for (unsigned mode = A::NONE; mode <= A::CONDITIONAL_INTEGRATION; ++mode) {
    auto a = strategy(mode);
    P p(0.5, 0.125, 0.0625, 1.0, -1.0, a), q(p);
    std::uint32_t bits = 7;
    for (unsigned i = 0; i != 1024; ++i) {
      bits = bits * 1664525u + 1013904223u;
      double error = (int(bits >> 24) - 128) / 32.0;
      double c = p.compute_command(error, 0.001);
      double duplicate = q.compute_command(error, std::chrono::nanoseconds(1000000));
      require(c == duplicate && std::isfinite(c) && c >= -1 && c <= 1);
      double pe, ie, de; p.get_current_pid_errors(pe, ie, de);
      require(ie >= a.i_min && ie <= a.i_max);
      if (trace) std::printf("TRACE %u %u %a %a %a %a\n", mode, i, c, pe, ie, de);
    }
    double held = p.get_current_cmd();
    require(p.compute_command(99.0, 0.0) == held);
    invalid([&] { (void)p.compute_command(0.5, -0.001); });
    invalid([&] { (void)p.compute_command(0.5, 0.0, -0.001); });
    require(p.get_current_cmd() == held);
    p.reset(); q.reset();
    require(p.get_current_cmd() == 0 && p.compute_command(0.0, 0.001) == 0);
    rcl_duration_value_t ns = 1000000;
    require(p.compute_command(0.1, 0.01, ns) ==
            q.compute_command(0.1, 0.01, std::chrono::nanoseconds(ns)));
    P copied(p), fresh(0.5, 0.125, 0.0625, 1.0, -1.0, a);
    require(copied.compute_command(0.2, 0.001) == fresh.compute_command(0.2, 0.001));
    P assigned(fresh); assigned = p;
    P again(0.5, 0.125, 0.0625, 1.0, -1.0, a);
    require(assigned.compute_command(0.2, 0.001) == again.compute_command(0.2, 0.001));
    require(std::isnan(p.compute_command(std::numeric_limits<double>::infinity(), 0.001)));
    p.reset();
    require(std::isnan(p.compute_command(0.1, std::numeric_limits<double>::quiet_NaN(), 0.001)));
    p.reset(); require(std::isfinite(p.compute_command(0.1, 0.001)));
    auto bad = a; bad.i_min = 1.0; invalid([&] { bad.validate(); });
    bad = a; bad.i_max = -1.0; invalid([&] { bad.validate(); });
    invalid([&] { P bad_bounds(1, 1, 1, -1, 1, a); });
    auto previous = p.get_gains();
    require(!p.set_gains(1, 1, 1, -1, 1, a));
    auto after = p.get_gains();
    require(previous.p_gain_ == after.p_gain_ && previous.u_min_ == after.u_min_);
  }
  A undefined; invalid([&] { undefined.validate(); });
  auto bad = strategy(A::BACK_CALCULATION); bad.tracking_time_constant = -1;
  invalid([&] { bad.validate(); });
  auto *handle = uwvm_ros_pid_create(0.4, 1.2, 0.0);
  require(handle != nullptr);
  A unbounded; unbounded.type = A::NONE;
  P reference(0.4, 1.2, 0, std::numeric_limits<double>::infinity(),
              -std::numeric_limits<double>::infinity(), unbounded);
  for (unsigned i = 0; i < 32; ++i) {
    double out = 123.0;
    require(!uwvm_ros_pid_compute(handle, i / 32.0, 0.001, &out));
    require(out == reference.compute_command(i / 32.0, 0.001));
  }
  double unchanged = 123.0;
  require(uwvm_ros_pid_compute(nullptr, 0.1, 0.001, &unchanged) == 1 && unchanged == 123.0);
  require(uwvm_ros_pid_compute(handle, 0.1, -0.001, &unchanged) == 1 && unchanged == 123.0);
  require(uwvm_ros_pid_compute(handle, 0.1, 0.001, nullptr) == 1);
  require(!uwvm_ros_pid_compute(handle, 0.2, 0.001, &unchanged));
  require(unchanged == reference.compute_command(0.2, 0.001));
  auto bounded_gains = reference.get_gains();
  bounded_gains.u_min_ = -0.1; bounded_gains.u_max_ = 0.15;
  bounded_gains.antiwindup_strat_.type = control_toolbox::AntiWindupStrategy::CONDITIONAL_INTEGRATION;
  require(reference.set_gains(bounded_gains));
  require(!uwvm_ros_pid_set_limits(handle, -0.1, 0.15));
  require(uwvm_ros_pid_set_limits(nullptr, -0.1, 0.15) == 1);
  require(uwvm_ros_pid_set_limits(handle, 1, -1) == 1);
  require(uwvm_ros_pid_set_limits(handle, 1, 1) == 1);
  require(uwvm_ros_pid_set_limits(handle, std::numeric_limits<double>::quiet_NaN(), 1) == 1);
  for (unsigned i = 0; i != 256; ++i) {
    double error = i < 128 ? 2.0 : -2.0, out = 99.0;
    require(!uwvm_ros_pid_compute(handle, error, 0.001, &out));
    require(out == reference.compute_command(error, 0.001));
    require(out >= -0.1 && out <= 0.15);
  }
  double infinity = std::numeric_limits<double>::infinity();
  require(!uwvm_ros_pid_set_limits(handle, -infinity, infinity));
  bounded_gains.u_min_ = -infinity; bounded_gains.u_max_ = infinity;
  bounded_gains.antiwindup_strat_.type = control_toolbox::AntiWindupStrategy::NONE;
  require(reference.set_gains(bounded_gains));
  double resumed = 0;
  require(!uwvm_ros_pid_compute(handle, 2, 0.001, &resumed));
  require(resumed == reference.compute_command(2, 0.001) && resumed > 0.15);
  uwvm_ros_pid_destroy(handle); uwvm_ros_pid_destroy(nullptr);
  std::printf("PID_MIGRATION_OK %u\n", checks);
}
