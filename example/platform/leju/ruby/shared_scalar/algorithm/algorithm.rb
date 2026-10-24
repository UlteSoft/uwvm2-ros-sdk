# @file algorithm.rb
# @brief Preserve genuine Ruby state, GC, fibers and exceptions across Core calls.
# @details Only exact i32 values cross the native boundary. This module receives
# default WASI standard streams and no additional WASI or native ROS grants.
module Uwvm
    module Library
        @calls = 0

        # @brief Evaluate an original Ruby computation or a denied alias probe.
        # @param limit Exact i32; -100 observes denial, other negatives raise.
        # @return Original Integer result, never a pointer into this VM's memory.
        def self.call_i32(limit)
            if limit == -100
                frame = Uwvm::Native.invoke("capability_open", 0, "chat07-ungranted".b, 0)
                raise "denial exposed an owner" unless frame[1] == "".b && frame[2].nil? && frame[3].nil?
                return frame[0]
            end
            raise RangeError, "bounded nonnegative limit required" unless limit.between?(0, 1000)
            @calls += 1
            GC.start
            fiber = Fiber.new do
                Fiber.yield limit
                (1..limit).sum + @calls
            end
            raise "module fiber argument lost" unless fiber.resume == limit
            fiber.resume
        end
    end
end
