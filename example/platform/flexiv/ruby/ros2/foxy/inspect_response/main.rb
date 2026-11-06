# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "flexiv/ruby/ros2/flexiv_ros2_foxy_complete/records"
bytes = STDIN.binmode.read(2) || "".b
value = Uwvm::Flexiv::Ros2Foxy::Ros2Flexiv_msgsMsgMode.decode(bytes)
STDOUT.write(Uwvm::Flexiv::Ros2Foxy::Ros2Flexiv_msgsMsgMode.encode(value).unpack1("H*"), "\n")
