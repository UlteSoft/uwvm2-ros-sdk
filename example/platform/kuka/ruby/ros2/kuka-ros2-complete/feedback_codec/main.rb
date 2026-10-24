# @file main.rb
# @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "kuka/ruby/ros2/kuka-ros2-complete/records"
codec = Uwvm::KukaKukaRos2Complete::Ros2Control_msgsActionFollowJointTrajectory_Feedback
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
