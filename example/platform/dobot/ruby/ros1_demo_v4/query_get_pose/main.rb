# @file main.rb
# @brief Query every original rosdemo_v4/GetPose field.
# @details Actual Ruby Integer/String semantics remain in the genuine CRuby guest.
require "roswasm/transport"
require "dobot/ruby/ros1/demo_v4/records"
include Uwvm::Dobot::Ros1DemoV4

# @brief Observe/query one entire original value and retire its exact owner once.
# @return First operation/codec error, then independent cleanup/output error, capped to 125.
def main
    args = Uwvm::Native::ARGV
    return 22 unless args.length == 2
    owner, primary = Uwvm::RosWasm::Capability.open(args[1])
    cleanup, present, wire = 0, false, "".b
    unless owner.nil?
        begin
            result = owner.invoke("service_call", Ros1Rosdemo_v4GetPoseRequest.new.encode, 264)
            primary, wire = result[0], result[1]
            if primary == 0
                value = Ros1Rosdemo_v4GetPoseResponse.decode(wire)
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
