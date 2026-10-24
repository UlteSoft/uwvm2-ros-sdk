# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "flexiv/ruby/ros2/flexiv_ros2_jazzy_v2_2_complete/records"
bytes = STDIN.binmode.read(17651) || "".b
value = Uwvm::Flexiv::Ros2JazzyV22::Ros2Flexiv_msgsSrvGetOperationalStatus_Response.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
