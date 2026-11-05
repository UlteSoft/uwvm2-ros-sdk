# @file main.rb
# @brief Observe the whole sensor_msgs/msg/JointState value inside genuine CRuby.
# @details Shared receive closes once; the operator supplies the exact alias.
require "uwvm/observation"
arguments = Uwvm::Native::ARGV
require "yaskawa/ruby/ros2/records"
if arguments.length != 2
    exit(22)
end
codec = Uwvm::Yaskawa::Ros2::Ros2Sensor_msgsMsgJointState
report = Uwvm::Language::RubyObservation.receive(arguments[1], codec, "".b, true)
exit(Uwvm::Language::RubyObservation.output(report))
