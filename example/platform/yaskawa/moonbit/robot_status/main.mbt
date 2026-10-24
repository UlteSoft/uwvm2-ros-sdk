/// @file main.mbt
/// @brief Read every original industrial_msgs/msg/RobotStatus field in genuine MoonBit.
/// @details Uses the common owned transport and the exact generated codec.
fn main {
  let arguments = @observation.read_arguments()
  if arguments.length() != 2 { @observation.exit(22) }
  let codec = @records.Ros2Industrial_msgsMsgRobotStatusCodec::new()
  let report = @observation.receive(arguments[1], codec.max_wire_bytes, 250,
    codec.decode, codec.encode)
  @observation.exit(@observation.output(report))
}
