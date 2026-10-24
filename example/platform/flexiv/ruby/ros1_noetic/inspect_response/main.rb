# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "flexiv/ruby/ros1/flexiv_ros1_noetic_complete/records"
bytes = STDIN.binmode.read(2) || "".b
value = Uwvm::Flexiv::Ros1Noetic::Ros1Flexiv_msgsMode.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
