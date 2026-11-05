# @file main.rb
# @brief Exercise the complete original dsr_msgs/GetRobotStateResponse Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "doosan/ruby/ros1/doosan-ros1-aws-robot-complete/records"
codec = Uwvm::DoosanDoosanRos1AwsRobotComplete::Ros1Dsr_msgsGetRobotStateResponse
bytes = codec.encode(codec.new)
raise "complete canonical record changed" unless codec.encode(codec.decode(bytes)) == bytes
puts "{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
