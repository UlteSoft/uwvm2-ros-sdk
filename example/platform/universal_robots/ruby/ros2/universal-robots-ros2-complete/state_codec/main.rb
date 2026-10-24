# @file main.rb
# @brief Exercise the complete original ur_msgs/msg/IOStates Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "universal_robots/ruby/ros2/universal-robots-ros2-complete/records"
codec = Uwvm::UniversalRobotsUniversalRobotsRos2Complete::Ros2Ur_msgsMsgIOStates
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"ur_msgs/msg/IOStates\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
