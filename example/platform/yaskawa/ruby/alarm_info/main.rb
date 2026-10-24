# @file main.rb
# @brief Observe the whole motoros2_interfaces/msg/AlarmInfo value inside genuine CRuby.
# @details Shared receive closes once; the operator supplies the exact alias.
require "roswasm/observation"
require "yaskawa/ruby/ros2/records"
if ARGV.length != 1
    exit(22)
end
codec = Uwvm::Yaskawa::Ros2::Ros2Motoros2_interfacesMsgAlarmInfo
report = Uwvm::RosWasm::Observation.receive(ARGV[0], codec, 250, -> { Uwvm::Native.pause_ms(20) })
exit(Uwvm::RosWasm::Observation.output(report))
