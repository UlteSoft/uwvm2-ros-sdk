# @file main.rb
# @brief Observe the whole industrial_msgs/msg/RobotStatus value inside genuine CRuby.
# @details Shared receive closes once; the operator supplies the exact alias.
require "uwvm/observation"
arguments = Uwvm::Native::ARGV
require "yaskawa/ruby/ros2/records"
if arguments.length != 2
    exit(22)
end
codec = Uwvm::Yaskawa::Ros2::Ros2Industrial_msgsMsgRobotStatus
report = Uwvm::Language::RubyObservation.receive(arguments[1], codec, "".b, true)
exit(Uwvm::Language::RubyObservation.output(report))
