# @file observation.rb
# @brief Receive complete canonical values through one explicit ROS capability.
# @details This platform-neutral implementation runs inside genuine CRuby.
# Services are attempted once; only idle subscriptions retry within a finite
# caller-selected poll budget. The owner is retired before decoding returns.
module Uwvm
    module Language
        module RubyObservation
            module_function

            # @brief Create separate operation, cleanup, wire and value facts.
            # @return Owning Hash; absent cleanup is distinct from successful cleanup.
            def outcome
                {primary: 0, cleanup: 0, cleanup_present: false, response_present: false,
                 required: nil, rpc_status_present: false, rpc_status: nil, wire_hex: "", value: nil}
            end

            # @brief Receive exactly one complete original message or service response.
            # @param alias_name Explicit strict UTF-8 capability alias, 1..255 bytes.
            # @param codec Complete original response class with checked canonical codecs.
            # @param request Owning canonical request bytes; validated before acquisition.
            # @param topic True for subscription polling, false for a single service call.
            # @param polls Finite maximum idle polls, 1..250; each idle waits 20 ms.
            # @return Owned observation after one close attempt; no capability escapes.
            def receive(alias_name, codec, request = "".b, topic = true, polls = 250)
                result = outcome
                unless request.instance_of?(String) && request.bytesize <= 32768 &&
                    polls.instance_of?(Integer) && polls.between?(1, 250) &&
                    codec::MAX_WIRE_BYTES <= 32768
                    return result.merge(primary: 22)
                end
                owner, result[:primary] = Uwvm::RosWasm::Capability.open(alias_name)
                return result if owner.nil?
                begin
                    result[:primary] = owner.invoke("topic_subscribe")[0] if topic
                    if result[:primary] == 0
                        frame = nil
                        (topic ? polls : 1).times do |index|
                            frame = owner.invoke(topic ? "event_poll" : "service_call", request, codec::MAX_WIRE_BYTES)
                            break unless topic && frame[0] == 11 && index + 1 < polls
                            result[:primary] = Uwvm::Native.pause_ms(20)
                            break unless result[:primary] == 0
                        end
                        result[:primary] = frame[0] if result[:primary] == 0
                        result[:required] = frame[2]
                        if result[:primary] == 0
                            begin
                                raise ArgumentError, "complete returned extent required" unless frame[2] == frame[1].bytesize
                                result[:value] = codec.decode(frame[1])
                                result[:wire_hex] = frame[1].unpack1("H*")
                                result[:response_present] = true
                            rescue ArgumentError, RangeError
                                result[:primary] = 22
                            end
                        end
                    end
                ensure
                    result[:cleanup_present] = true
                    result[:cleanup] = owner.close
                end
                result
            end

            # @brief Emit full canonical bytes only after resource cleanup.
            # @param result Observation from receive; all fields remain independent.
            # @return Primary errno, cleanup errno or output error, bounded for WASI exit.
            def output(result)
                text = '{"primary":' + result[:primary].to_s + ',"cleanup":' + result[:cleanup].to_s +
                    ',"cleanup_present":' + result[:cleanup_present].to_s + ',"response_present":' +
                    result[:response_present].to_s + ',"required":' +
                    (result[:required].nil? ? 'null' : '"' + result[:required].to_s + '"') +
                    ',"rpc_status_present":' + result[:rpc_status_present].to_s + ',"rpc_status":' +
                    (result[:rpc_status].nil? ? 'null' : '"' + result[:rpc_status] + '"') +
                    ',"wire_hex":"' + result[:wire_hex] + '"}' + "\n"
                written = STDOUT.write(text)
                STDOUT.flush
                status = result[:primary] == 0 ? result[:cleanup] : result[:primary]
                status = 5 if status == 0 && result[:rpc_status_present] && result[:rpc_status] != "0"
                written == text.bytesize ? [status, 125].min : 5
            end
        end
    end
end
