# @brief Decode a full original value with genuine Ruby Integer/String semantics.
require "flexiv/ruby/ros2/flexiv_ros2_jazzy_v2_complete/records"
bytes = STDIN.binmode.read(262) || "".b
value = Uwvm::Flexiv::Ros2JazzyV2::Ros2Flexiv_msgsActionGrasp_Result.decode(bytes)
STDOUT.write(value.encode.unpack1("H*"), "\n")
