# @file main.rb
# @brief Execute sum_arguments in the genuine ruby language engine.
# @details Standard streams only; no path, clock, random, network or ROS resource is opened.
# Sum checked signed 32-bit decimals without losing Ruby's exact integer semantics.
def main
  return 22 if ARGV.length > 1024
  total = 0
  ARGV.each do |text|
    return 22 if text.bytesize > 11 || !/\A[+-]?[0-9]+\z/.match?(text)
    value = Integer(text, 10)
    return 22 unless (-2147483648..2147483647).cover?(value)
    total += value
    return 22 unless (-2147483648..2147483647).cover?(total)
  end
  STDOUT.write("#{total}\n")
  STDOUT.flush
  0
end

begin
  exit(main)
rescue IOError, SystemCallError
  exit(5)
end
