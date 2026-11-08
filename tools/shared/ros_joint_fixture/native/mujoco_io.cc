// SPDX-License-Identifier: Apache-2.0
#include "physics_io.hpp"
#include <mujoco/mujoco.h>
#include <cerrno>
#include <memory>
#include <time.h>
int main(int argc, char** argv) {
  try {
    if (argc < 5) throw std::runtime_error("Expected model, original keyframe (or -), namespace and joint names");
    char error[1024]{};
    std::unique_ptr<mjModel, decltype(&mj_deleteModel)> model(mj_loadXML(argv[1], nullptr, error, sizeof error), mj_deleteModel);
    if (!model) throw std::runtime_error(error);
    std::unique_ptr<mjData, decltype(&mj_deleteData)> data(mj_makeData(model.get()), mj_deleteData);
    if (!data) throw std::runtime_error("MuJoCo could not create model state");
    if (std::string(argv[2]) != "-") {
      int key = mj_name2id(model.get(), mjOBJ_KEY, argv[2]);
      if (key < 0) throw std::runtime_error("Original keyframe not found");
      mj_resetDataKeyframe(model.get(), data.get(), key);
    }
    mj_forward(model.get(), data.get());
    std::vector<std::string> names(argv + 4, argv + argc);
    std::vector<int> joints, actuators;
    for (auto const& name : names) {
      int joint = mj_name2id(model.get(), mjOBJ_JOINT, name.c_str());
      if (joint < 0 || model->jnt_type[joint] != mjJNT_HINGE)
        throw std::runtime_error("Select an original scalar hinge joint");
      int actuator = -1;
      for (int i = 0; i < model->nu; ++i) {
        if (model->actuator_trntype[i] == mjTRN_JOINT && model->actuator_trnid[2 * i] == joint) {
          if (actuator >= 0) throw std::runtime_error("Ambiguous native joint actuator");
          actuator = i;
        }
      }
      if (actuator < 0 || model->actuator_gainprm[mjNGAIN * actuator] <= 0 ||
          model->actuator_biasprm[mjNBIAS * actuator + 1] >= 0)
        throw std::runtime_error("Select an original position actuator");
      joints.push_back(joint);
      actuators.push_back(actuator);
    }
    int ros_argc = 0;
    rclcpp::init(ros_argc, nullptr);
    uwvm_fixture::JointIo io(argv[3], names, [&](std::vector<double> const& frame) {
      for (std::size_t i = 0; i < frame.size(); ++i) {
        int a = actuators[i];
        if (model->actuator_ctrllimited[a] &&
            (frame[i] < model->actuator_ctrlrange[2 * a] || frame[i] > model->actuator_ctrlrange[2 * a + 1]))
          return false;
      }
      for (std::size_t i = 0; i < frame.size(); ++i) data->ctrl[actuators[i]] = frame[i];
      return true;
    });
    std::vector<double> lower, upper;
    for (int a : actuators) {
      lower.push_back(model->actuator_ctrllimited[a] ? model->actuator_ctrlrange[2 * a] :
                      -std::numeric_limits<double>::infinity());
      upper.push_back(model->actuator_ctrllimited[a] ? model->actuator_ctrlrange[2 * a + 1] :
                      std::numeric_limits<double>::infinity());
    }
    io.report_limits(lower, upper);
    double dt = model->opt.timestep;
    if (!std::isfinite(dt) || dt <= 0 || dt >= 1) throw std::runtime_error("Invalid original integration step");
    auto step_ns = static_cast<std::int64_t>(std::llround(dt * 1e9));
    timespec next{};
    if (clock_gettime(CLOCK_MONOTONIC, &next)) throw std::runtime_error("Monotonic clock unavailable");
    double last_publication = -1;
    std::puts("PHYSICS_IO_READY");
    std::fflush(stdout);
    while (rclcpp::ok()) {
      rclcpp::spin_some(io.node);
      mj_step(model.get(), data.get());
      if (data->time - last_publication >= 0.01) {
        std::vector<double> positions, velocities, efforts;
        for (int j : joints) {
          positions.push_back(data->qpos[model->jnt_qposadr[j]]);
          velocities.push_back(data->qvel[model->jnt_dofadr[j]]);
          efforts.push_back(data->qfrc_actuator[model->jnt_dofadr[j]]);
        }
        io.publish(data->time, std::move(positions), std::move(velocities), std::move(efforts));
        last_publication = data->time;
      }
      next.tv_nsec += step_ns;
      next.tv_sec += next.tv_nsec / 1000000000;
      next.tv_nsec %= 1000000000;
      int code;
      do { code = clock_nanosleep(CLOCK_MONOTONIC, TIMER_ABSTIME, &next, nullptr); }
      while (code == EINTR && rclcpp::ok());
      if (code && code != EINTR) throw std::runtime_error("Monotonic device timer failed");
    }
    rclcpp::shutdown();
    return 0;
  } catch (std::exception const& error) {
    std::fprintf(stderr, "physics_io: %s\n", error.what());
    if (rclcpp::ok()) rclcpp::shutdown();
    return 1;
  }
}
