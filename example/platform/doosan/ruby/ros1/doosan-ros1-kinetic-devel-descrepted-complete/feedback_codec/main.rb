# @file main.rb
# @brief Exercise the complete original dsr_msgs/LogAlarm Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "doosan/ruby/ros1/doosan-ros1-kinetic-devel-descrepted-complete/records"
codec = Uwvm::DoosanDoosanRos1KineticDevelDescreptedComplete::Ros1Dsr_msgsLogAlarm
bytes = codec.encode(codec.new)
raise "complete canonical record changed" unless codec.encode(codec.decode(bytes)) == bytes
puts "{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
