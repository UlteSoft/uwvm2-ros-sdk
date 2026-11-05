# @file main.rb
# @brief Observe the whole fanuc_msgs/msg/Frame value inside genuine CRuby.
# @details Shared receive closes once; the operator supplies the exact alias.
require "uwvm/observation"
arguments = Uwvm::Native::ARGV
require "fanuc/ruby/ros2/records"
if arguments.length != 2
    exit(22)
end
codec = Uwvm::Fanuc::Ros2::Ros2Fanuc_msgsMsgFrame
report = Uwvm::Language::RubyObservation.receive(arguments[1], codec, "".b, true)
exit(Uwvm::Language::RubyObservation.output(report))
