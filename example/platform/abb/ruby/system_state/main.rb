# @file main.rb
# @brief Observe the whole abb_robot_msgs/msg/SystemState value inside genuine CRuby.
# @details Shared receive closes once; the operator supplies the exact alias.
require "roswasm/observation"
require "abb/ruby/ros2/records"
if ARGV.length != 1
    exit(22)
end
codec = Uwvm::Abb::Ros2::Ros2Abb_robot_msgsMsgSystemState
report = Uwvm::RosWasm::Observation.receive(ARGV[0], codec, 250, -> { Uwvm::Native.pause_ms(20) })
exit(Uwvm::RosWasm::Observation.output(report))
