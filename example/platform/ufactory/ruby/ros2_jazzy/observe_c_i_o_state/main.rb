# @file main.rb
# @brief Observe every original xarm_msgs/msg/CIOState field.
# @details Actual Ruby Integer/String semantics remain in the genuine CRuby guest.
require "roswasm/transport"
require "ufactory/ruby/ros2_jazzy/records"
include Uwvm::Ufactory::Ros2Jazzy

# @brief Observe/query one entire original value and retire its exact owner once.
# @return First operation/codec error, then independent cleanup/output error, capped to 125.
def main
    args = Uwvm::Native::ARGV
    return 22 unless args.length == 2
    owner, primary = Uwvm::RosWasm::Capability.open(args[1])
    cleanup, present, wire = 0, false, "".b
    unless owner.nil?
        begin
            primary = owner.invoke("topic_subscribe")[0]
            250.times do |attempt|
                break unless primary == 0
                result = owner.invoke("event_poll", "".b, 328)
                primary, wire = result[0], result[1]
                break if primary != 11 || attempt == 249
                primary = Uwvm::Native.pause_ms(20)
            end
            if primary == 0
                value = Ros2Xarm_msgsMsgCIOState.decode(wire)
                wire = value.encode
                present = true
            end
        rescue StandardError
            primary = 22
        ensure
            cleanup = owner.close
        end
    end
    begin
        puts %Q({"primary":#{primary},"cleanup":#{cleanup},"cleanup_present":#{!owner.nil?},"response_present":#{present},"wire_hex":"#{present ? wire.unpack1("H*") : ""}"})
    rescue StandardError
        return [primary == 0 ? (cleanup == 0 ? 5 : cleanup) : primary, 125].min
    end
    [primary == 0 ? cleanup : primary, 125].min
end
$uwvm_exit = main
