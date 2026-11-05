# @file main.rb
# @brief Exercise the complete original dsr_msgs/AlterMotionStream Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "doosan/ruby/ros1/doosan-ros1-main-complete/records"
codec = Uwvm::DoosanDoosanRos1MainComplete::Ros1Dsr_msgsAlterMotionStream
bytes = codec.encode(codec.new)
raise "complete canonical record changed" unless codec.encode(codec.decode(bytes)) == bytes
puts "{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
