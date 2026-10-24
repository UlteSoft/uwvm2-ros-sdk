# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "kinova/ruby/ros2/mobile_fjt_humble_complete/records"
bytes = STDIN.binmode.read(265) || "".b
value = Uwvm::Kinova::Ros2Humble::Ros2Control_msgsActionFollowJointTrajectory_Result.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
