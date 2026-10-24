# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "flexiv/ruby/ros2/flexiv_controller_core_foxy_complete/records"
bytes = STDIN.binmode.read(9373) || "".b
value = Uwvm::Flexiv::ControllerCoreFoxy::Ros2Sensor_msgsMsgJointState.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
