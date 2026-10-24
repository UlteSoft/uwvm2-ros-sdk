# @file observation.rb
# @brief Own complete Unitree observations with independent original operation/close facts.
# @details Genuine CRuby owns all choices and codecs; no callback or finalizer hides cleanup.
module Uwvm
    module Unitree
        module Observation
            module_function

            # @brief Create local empty facts without native effects. @return Owned complete result.
            def empty
                { primary: 0, cleanup: 0, cleanup_present: 0, rpc_status: 0, rpc_present: 0,
                  response_present: 0, polls: 0, required_present: 0, required: "0",
                  length: "18446744073709551615", wire_hex: "", value: nil }
            end

            # @brief Receive one whole original native record under a finite caller budget.
            # @param name Exact native-type capability alias; no fallback is attempted.
            # @param codec Complete generated original record class.
            # @param attempts Integer 1..250, including the immediate poll.
            # @param pause Caller synchronous wait, required when attempts exceeds one.
            # @return Whole owned value with original unsigned RPC/length and separate cleanup.
            # @details Only idle 11 permits a new poll. Every ordinary post-open path closes
            # once; fatal traps and unrecoverable allocations require outer retirement.
            def receive(name, codec, attempts, pause)
                result = empty
                valid_budget = attempts.instance_of?(Integer) && attempts.between?(1, 250)
                valid_pause = attempts == 1 || pause.respond_to?(:call)
                unless valid_budget && valid_pause
                    return result.merge(primary: 22)
                end
                owner, result[:primary] = Uwvm::RosWasm::Capability.open(name)
                return result if owner.nil?
                begin
                    result[:primary] = owner.invoke("topic_subscribe")[0]
                    if result[:primary] == 0
                        frame = nil
                        attempts.times do |attempt|
                            frame = owner.invoke("event_poll", "".b, codec::MAX_WIRE_BYTES)
                            result[:polls] += 1
                            result[:rpc_present], result[:rpc_status], result[:primary] = 1, frame[0], frame[0]
                            unless frame[2].nil?
                                result[:required_present] = 1
                                result[:required] = result[:length] = frame[2].to_s
                            end
                            break unless frame[0] == 11 && attempt + 1 < attempts
                            code = pause.call
                            result[:primary] = code.instance_of?(Integer) && code.between?(0, 4294967295) ? code : 22
                            break if result[:primary] != 0
                        end
                        if result[:primary] == 0 && !frame.nil?
                            value = codec.decode(frame[1])
                            encoded = codec.encode(value)
                            raise ArgumentError, "noncanonical complete record" unless encoded == frame[1]
                            result[:value] = value
                            result[:response_present] = 1
                            result[:wire_hex] = encoded.unpack1("H*")
                        end
                    end
                rescue ArgumentError, RangeError
                    result[:primary] = 22 if result[:primary] == 0
                rescue StandardError
                    result[:primary] = 5 if result[:primary] == 0
                ensure
                    result[:cleanup_present] = 1
                    begin
                        result[:cleanup] = owner.close
                    rescue StandardError
                        result[:cleanup] = 5
                    end
                end
                result
            end

            # @brief Write every canonical byte after close. @param result Whole owned outcome.
            # @return Original primary, cleanup or stdout failure clamped to 125.
            def output(result)
                status = result[:primary] == 0 ? result[:cleanup] : result[:primary]
                fields = result.reject { |key, _| key == :value }.map do |key, value|
                    '"' + key.to_s + '":' + (value.instance_of?(String) ? '"' + value + '"' : value.to_s)
                end
                begin
                    STDOUT.write("{" + fields.join(",") + "}\n")
                    STDOUT.flush
                rescue IOError, SystemCallError
                    status = 5 if status == 0
                end
                [status, 125].min
            end
        end
    end
end
