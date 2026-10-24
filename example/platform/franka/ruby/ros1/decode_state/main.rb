# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "franka/ruby/ros1/franka_ros1_complete/records"
bytes = STDIN.binmode.read(2620) || "".b
value = Uwvm::Franka::Ros1::Ros1Franka_msgsFrankaState.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
