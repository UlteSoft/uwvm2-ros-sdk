# @file algorithm.rb
# @brief Perform the original parameter calculation in genuine Ruby source.
# @details The instance has default WASI and no additional or ROS grants.
module Uwvm
    module Library
        # @brief Compute six times a bounded Integer, or explicitly observe denial.
        # @param value Exact i32; -100 probes ROS and -101 probes the WASI timer.
        # @return Exact source Integer, with VM errors reported separately.
        def self.call_i32(value)
            if value == -100
                frame = Uwvm::Native.invoke("capability_open", 0, "sample".b, 0)
                raise "ungranted alias exposed storage" unless frame[1] == "".b && frame[2].nil? && frame[3].nil?
                return frame[0]
            end
            return Uwvm::Native.pause_ms(1) if value == -101
            raise RangeError, "bounded i32 calculation required" unless value.between?(-1000, 1000)
            GC.start
            Fiber.new { value * 6 }.resume
        end
    end
end
