# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "franka/ruby/ros2/franka_ros2_complete/records"
bytes = STDIN.binmode.read(262) || "".b
value = Uwvm::Franka::Ros2::Ros2Franka_msgsSrvSetCartesianStiffness_Response.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
