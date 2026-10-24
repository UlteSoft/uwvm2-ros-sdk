# @file main.rb
# @brief Exercise the complete original urinterfaces/action/SetMode_Feedback Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "universal_robots/ruby/ros2/universal-robots-polyscopex-complete/records"
codec = Uwvm::UniversalRobotsUniversalRobotsPolyscopexComplete::Ros2UrinterfacesActionSetMode_Feedback
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
