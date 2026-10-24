# @file main.rb
# @brief Exercise the complete original urinterfaces/msg/RobotMode Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "universal_robots/ruby/ros2/universal-robots-polyscopex-complete/records"
codec = Uwvm::UniversalRobotsUniversalRobotsPolyscopexComplete::Ros2UrinterfacesMsgRobotMode
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"urinterfaces/msg/RobotMode\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
