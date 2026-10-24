# @file main.rb
# @brief Execute stream_checksum in the genuine ruby language engine.
# @details Standard streams only; no path, clock, random, network or ROS resource is opened.
# Ruby's arbitrary-precision integer arithmetic is reduced explicitly to u32.
def main
  STDIN.binmode
  value = 2166136261
  while (chunk = STDIN.read(256))
    chunk.each_byte { |byte| value = ((value ^ byte) * 16777619) & 0xffffffff }
  end
  STDOUT.write(format("%08x\n", value))
  STDOUT.flush
  0
end

begin
  exit(main)
rescue IOError, SystemCallError
  exit(5)
end
