# @file main.rb
# @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "doosan/ruby/ros2/doosan-ros2-jazzy-complete/records"
codec = Uwvm::DoosanDoosanRos2JazzyComplete::Ros2Dsr_msgs2ActionJogH2r_Feedback
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
