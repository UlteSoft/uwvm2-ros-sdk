# @file main.rb
# @brief Observe the whole abb_egm_msgs/EGMState value inside genuine CRuby.
# @details Shared receive closes once; the operator supplies the exact alias.
require "roswasm/observation"
require "abb/ruby/ros1/records"
if ARGV.length != 1
    exit(22)
end
codec = Uwvm::Abb::Ros1::Ros1Abb_egm_msgsEGMState
report = Uwvm::RosWasm::Observation.receive(ARGV[0], codec, 250, -> { Uwvm::Native.pause_ms(20) })
exit(Uwvm::RosWasm::Observation.output(report))
