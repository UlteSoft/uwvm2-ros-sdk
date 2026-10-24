# @file main.rb
# @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "universal_robots/ruby/ros2/universal-robots-polyscopex-complete/records"
codec = Uwvm::UniversalRobotsUniversalRobotsPolyscopexComplete::Ros2UrinterfacesSrvSetAnalogOutput_Response
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
