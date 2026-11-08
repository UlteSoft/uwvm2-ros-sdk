// SPDX-License-Identifier: Apache-2.0
#include "physics_io.hpp"
#include <webots/robot.h>
#include <webots/device.h>
#include <webots/motor.h>
#include <webots/position_sensor.h>
#include <webots/nodes.h>
int main(int argc, char** argv) {
  bool initialized = false;
  try {
    if (argc < 3) throw std::runtime_error("Expected namespace and original motor device names");
    wb_robot_init(); initialized = true;
    double basic = wb_robot_get_basic_time_step();
    if (!std::isfinite(basic) || basic < 1 || basic > 2147483647 || basic != std::floor(basic))
      throw std::runtime_error("Select an integral Webots device sampling interval");
    int step = static_cast<int>(basic);
    std::vector<std::string> names(argv + 2, argv + argc);
    std::vector<WbDeviceTag> motors, sensors;
    std::vector<double> minimum, maximum;
    for (auto const& name : names) {
      WbDeviceTag motor = wb_robot_get_device(name.c_str());
      if (!motor || wb_device_get_node_type(motor) != WB_NODE_ROTATIONAL_MOTOR)
        throw std::runtime_error("Select an original rotational motor");
      WbDeviceTag sensor = wb_motor_get_position_sensor(motor);
      if (!sensor) throw std::runtime_error("Original motor has no position sensor");
      wb_position_sensor_enable(sensor, step);
      motors.push_back(motor); sensors.push_back(sensor);
      minimum.push_back(wb_motor_get_min_position(motor));
      maximum.push_back(wb_motor_get_max_position(motor));
      if (minimum.back() == maximum.back()) {
        minimum.back() = -std::numeric_limits<double>::infinity();
        maximum.back() = std::numeric_limits<double>::infinity();
      }
    }
    int ros_argc = 0;
    rclcpp::init(ros_argc, nullptr);
    uwvm_fixture::JointIo io(argv[1], names, [&](std::vector<double> const& frame) {
      for (std::size_t i = 0; i < frame.size(); ++i)
        if (minimum[i] != maximum[i] && (frame[i] < minimum[i] || frame[i] > maximum[i]))
          return false;
      for (std::size_t i = 0; i < frame.size(); ++i) wb_motor_set_position(motors[i], frame[i]);
      return true;
    });
    io.report_limits(minimum, maximum);
    bool ready = false;
    while (rclcpp::ok() && wb_robot_step(step) != -1) {
      rclcpp::spin_some(io.node);
      std::vector<double> position;
      for (auto sensor : sensors) {
        double value = wb_position_sensor_get_value(sensor);
        if (!std::isfinite(value)) throw std::runtime_error("Original position sensor is not finite");
        position.push_back(value);
      }
      io.publish(wb_robot_get_time(), std::move(position), {}, {});
      if (!ready) { std::puts("PHYSICS_IO_READY"); std::fflush(stdout); ready = true; }
    }
    rclcpp::shutdown(); wb_robot_cleanup(); return 0;
  } catch (std::exception const& error) {
    std::fprintf(stderr, "physics_io: %s\n", error.what());
    if (rclcpp::ok()) rclcpp::shutdown();
    if (initialized) wb_robot_cleanup();
    return 1;
  }
}
