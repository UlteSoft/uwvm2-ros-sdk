# @file main.rb
# @brief Exercise the complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback Ruby class.
# @details Runs real Ruby objects and codecs; fixture defaults are not observations.
require "universal_robots/ruby/ros2/universal-robots-ros2-trajectory-complete/records"
codec = Uwvm::UniversalRobotsUniversalRobotsRos2TrajectoryComplete::Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback
bytes = codec.new.encode
raise "complete canonical record changed" unless codec.decode(bytes).encode == bytes
puts "{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":#{bytes.bytesize},\"wire_hex\":\"#{bytes.unpack1('H*')}\"}"
