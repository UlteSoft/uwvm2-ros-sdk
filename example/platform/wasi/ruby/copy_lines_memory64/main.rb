# @file main.rb
# @brief Execute copy_lines in the genuine ruby language engine.
# @details Standard streams only; no path, clock, random, network or ROS resource is opened.
# Copy every binary input byte; never treat a NUL or newline as EOF.
def main
  STDIN.binmode
  STDOUT.binmode
  while (chunk = STDIN.read(256))
    offset = 0
    while offset < chunk.bytesize
      written = STDOUT.write(chunk.byteslice(offset, chunk.bytesize - offset))
      return 5 unless written.positive? && written <= chunk.bytesize - offset
      offset += written
    end
  end
  STDOUT.flush
  0
end

begin
  exit(main)
rescue IOError, SystemCallError
  exit(5)
end
