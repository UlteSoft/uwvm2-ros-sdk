# @file main.rb
# @brief Observe the whole industrial_msgs/msg/RobotStatus value inside genuine CRuby.
# @details Shared receive closes once; the operator supplies the exact alias.
require "roswasm/observation"
require "yaskawa/ruby/ros2/records"
if ARGV.length != 1
    exit(22)
end
codec = Uwvm::Yaskawa::Ros2::Ros2Industrial_msgsMsgRobotStatus
report = Uwvm::RosWasm::Observation.receive(ARGV[0], codec, 250, -> { Uwvm::Native.pause_ms(20) })
exit(Uwvm::RosWasm::Observation.output(report))
