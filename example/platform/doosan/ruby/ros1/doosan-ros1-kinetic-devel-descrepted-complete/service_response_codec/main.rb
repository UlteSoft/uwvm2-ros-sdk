# @file main.rb
# @brief Exercise the complete original dsr_msgs/GetRobotStateResponse Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "doosan/ruby/ros1/doosan-ros1-kinetic-devel-descrepted-complete/records"
codec = Uwvm::DoosanDoosanRos1KineticDevelDescreptedComplete::Ros1Dsr_msgsGetRobotStateResponse
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
