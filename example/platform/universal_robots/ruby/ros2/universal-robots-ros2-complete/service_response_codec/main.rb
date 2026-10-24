# @file main.rb
# @brief Exercise the complete original ur_dashboard_msgs/srv/AddToLog_Response Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "universal_robots/ruby/ros2/universal-robots-ros2-complete/records"
codec = Uwvm::UniversalRobotsUniversalRobotsRos2Complete::Ros2Ur_dashboard_msgsSrvAddToLog_Response
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"ur_dashboard_msgs/srv/AddToLog_Response\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
