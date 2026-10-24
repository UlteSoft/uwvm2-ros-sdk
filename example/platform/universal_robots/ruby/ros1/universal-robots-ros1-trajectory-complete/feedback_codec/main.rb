# @file main.rb
# @brief Exercise the complete original control_msgs/FollowJointTrajectoryFeedback Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "universal_robots/ruby/ros1/universal-robots-ros1-trajectory-complete/records"
codec = Uwvm::UniversalRobotsUniversalRobotsRos1TrajectoryComplete::Ros1Control_msgsFollowJointTrajectoryFeedback
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
