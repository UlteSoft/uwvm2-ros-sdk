# @file main.rb
# @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "kuka/ruby/ros2/kuka-ros2-complete/records"
codec = Uwvm::KukaKukaRos2Complete::Ros2Lifecycle_msgsSrvChangeState_Response
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
