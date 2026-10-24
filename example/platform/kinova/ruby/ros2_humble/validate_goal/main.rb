# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "kinova/ruby/ros2/mobile_fjt_humble_complete/records"
bytes = STDIN.binmode.read(8581) || "".b
value = Uwvm::Kinova::Ros2Humble::Ros2Control_msgsActionFollowJointTrajectory_Goal.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
