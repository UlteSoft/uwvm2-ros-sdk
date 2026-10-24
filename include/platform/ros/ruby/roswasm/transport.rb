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
