# @file main.rb
# @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "kuka/ruby/ros2/kuka-ros2-complete/records"
codec = Uwvm::KukaKukaRos2Complete::Ros2Kuka_driver_interfacesMsgKssStatus
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
