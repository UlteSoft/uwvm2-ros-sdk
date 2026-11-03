# @file transport.rb
# @brief Own raw ROS capability lifetimes in genuine Ruby.
# @details No finalizer, callback, operation replay or fallback alias is hidden.
module Uwvm
    module RosWasm
        # @brief Own one full-width instance-local handle until explicit retirement.
        class Capability
            # @brief Adopt one successful exact unsigned handle.
            # @param handle Full Ruby Integer; zero and out-of-range values fail.
            def initialize(handle)
                unless handle.instance_of?(Integer) && handle > 0 && handle < (1 << 64)
                    raise RangeError, "exact owned handle required"
                end
                @handle = handle
            end

            # @brief Open a single granted alias after strict local validation.
            # @param name Original UTF-8 alias; no fallback occurs.
            # @return [owner or nil, original errno].
            def self.open(name)
                unless name.instance_of?(String) && !name.empty? && name.bytesize <= 255 &&
                    name.dup.force_encoding(Encoding::UTF_8).valid_encoding? && !name.include?("\0")
                    return [nil, 22]
                end
                version = Uwvm::Native.invoke("abi_version", 0, "".b, 0)
                unless version[0] == 0 && version[3] == 1
                    return [nil, version[0] == 0 ? 95 : version[0]]
                end
                result = Uwvm::Native.invoke("capability_open", 0, name.b, 0)
                [result[0] == 0 ? new(result[3]) : nil, result[0]]
            end

            # @brief Issue one original operation while the owner remains live.
            # @param operation Exact raw import.
            # @param bytes Complete owning request.
            # @param capacity Finite full response capacity.
            # @return Independent [errno, bytes, required or nil, value or nil].
            def invoke(operation, bytes = "".b, capacity = 0, other = 0, correlation = 0)
                if @handle.nil?
                    return [9, "".b, nil, nil]
                end
                Uwvm::Native.invoke(operation, @handle, bytes, capacity, other, correlation)
            end

            # @brief Borrow the exact live owner word for explicit watch/submit composition.
            # @return Full Integer handle; retired owners raise ArgumentError.
            # @details The word creates no authority and remains Instance-local.
            # Keep this owner live through the synchronous operation using it.
            def borrow_handle
                raise ArgumentError, "retired capability" if @handle.nil?
                @handle
            end

            # @brief Return four exact u64 readiness counters without consuming.
            # @return [original errno, named Integer counters or nil].
            # @details Genuine Ruby Integers preserve all64 bits. The snapshot
            # reserves no event, admission credit or permission, and never waits.
            def readiness
                frame = invoke("event_ready", "".b, 32)
                return [frame[0], nil] unless frame[0] == 0
                unless frame[1].bytesize == 32 && frame[2].nil? && frame[3].nil?
                    raise ArgumentError, "successful readiness omitted its exact32-byte snapshot"
                end
                values = frame[1].unpack("Q<4")
                [0, [:ready_events, :next_event_bytes, :admission_slots, :admission_bytes].zip(values).to_h]
            end

            # @brief Admit one copied canonical request through separately granted owners.
            # @param observer Explicitly paired live event.observe Capability.
            # @param request Complete canonical String, at most4193778 bytes.
            # @return Original [errno, bytes, required, request-ID-or-nil] frame.
            # @details A request ID is not a capability/rcl signed sequence.
            # Zero means admission only;11 has no admission credit,107/110 may
            # follow effects. No retry or ownership transfer is performed.
            def submit_service(observer, request)
                return [9, "".b, nil, nil] if @handle.nil?
                unless observer.instance_of?(Capability) && request.instance_of?(String) && request.bytesize <= 4193778
                    return [22, "".b, nil, nil]
                end
                begin
                    other = observer.borrow_handle
                rescue ArgumentError
                    return [9, "".b, nil, nil]
                end
                frame = invoke("service_submit", request, 0, other)
                if frame[0] == 0 && (frame[1] != "".b || !frame[2].nil? ||
                    !frame[3].instance_of?(Integer) || frame[3] <= 0 || frame[3] >= (1 << 64))
                    # Admission may already have happened; never infer safe replay.
                    raise ArgumentError, "successful admission omitted its exact nonzero request ID"
                end
                frame
            end

            # @brief Retire before attempting exactly one capability close.
            # @return Original cleanup errno, or 9 if previously retired.
            def close
                if @handle.nil?
                    return 9
                end
                handle, @handle = @handle, nil
                Uwvm::Native.invoke("capability_close", handle, "".b, 0)[0]
            end
        end
    end
end
