# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "franka/ruby/ros1/franka_ros1_complete/records"
bytes = STDIN.binmode.read(41) || "".b
value = Uwvm::Franka::Ros1::Ros1Franka_gripperGraspGoal.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
