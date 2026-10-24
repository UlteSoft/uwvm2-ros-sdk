# @file main.rb
# @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "universal_robots/ruby/ros1/universal-robots-ros1-trajectory-complete/records"
codec = Uwvm::UniversalRobotsUniversalRobotsRos1TrajectoryComplete::Ros1Ur_dashboard_msgsAddToLogResponse
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
