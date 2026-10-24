# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "franka/ruby/ros2/franka_ros2_complete/records"
bytes = STDIN.binmode.read(41) || "".b
value = Uwvm::Franka::Ros2::Ros2Franka_msgsActionGrasp_Goal.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
