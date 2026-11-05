# @file main.rb
# @brief Observe the whole abb_robot_msgs/SystemState value inside genuine CRuby.
# @details Shared receive closes once; the operator supplies the exact alias.
require "uwvm/observation"
arguments = Uwvm::Native::ARGV
require "abb/ruby/ros1/records"
if arguments.length != 2
    exit(22)
end
codec = Uwvm::Abb::Ros1::Ros1Abb_robot_msgsSystemState
report = Uwvm::Language::RubyObservation.receive(arguments[1], codec, "".b, true)
exit(Uwvm::Language::RubyObservation.output(report))
