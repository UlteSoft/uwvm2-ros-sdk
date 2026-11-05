# @file main.rb
# @brief Observe the whole abb_robot_msgs/msg/RAPIDTaskState value inside genuine CRuby.
# @details Shared receive closes once; the operator supplies the exact alias.
require "uwvm/observation"
arguments = Uwvm::Native::ARGV
require "abb/ruby/ros2/records"
if arguments.length != 2
    exit(22)
end
codec = Uwvm::Abb::Ros2::Ros2Abb_robot_msgsMsgRAPIDTaskState
report = Uwvm::Language::RubyObservation.receive(arguments[1], codec, "".b, true)
exit(Uwvm::Language::RubyObservation.output(report))
