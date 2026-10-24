# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "flexiv/ruby/ros2/flexiv_controller_core_humble_complete/records"
bytes = STDIN.binmode.read(16981) || "".b
value = Uwvm::Flexiv::ControllerCoreHumble::Ros2Trajectory_msgsMsgJointTrajectory.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
