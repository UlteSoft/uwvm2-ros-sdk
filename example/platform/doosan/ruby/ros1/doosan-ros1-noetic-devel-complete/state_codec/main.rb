# @file main.rb
# @brief Exercise the complete original dsr_msgs/RobotState Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "doosan/ruby/ros1/doosan-ros1-noetic-devel-complete/records"
codec = Uwvm::DoosanDoosanRos1NoeticDevelComplete::Ros1Dsr_msgsRobotState
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"dsr_msgs/RobotState\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
