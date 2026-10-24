# @file main.rb
# @brief Exercise the complete original ur_dashboard_msgs/SetModeFeedback Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "universal_robots/ruby/ros1/universal-robots-ros1-complete/records"
codec = Uwvm::UniversalRobotsUniversalRobotsRos1Complete::Ros1Ur_dashboard_msgsSetModeFeedback
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"ur_dashboard_msgs/SetModeFeedback\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
