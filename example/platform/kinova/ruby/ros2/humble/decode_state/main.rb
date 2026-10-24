# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "kinova/ruby/ros2/mobile_fjt_humble_complete/records"
bytes = STDIN.binmode.read(1405) || "".b
value = Uwvm::Kinova::Ros2Humble::Ros2Sensor_msgsMsgJointState.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
