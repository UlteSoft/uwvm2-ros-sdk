/// @file main.mbt
/// @brief Read every original industrial_msgs/msg/RobotStatus field in genuine MoonBit.
/// @details Uses the common owned transport and the exact generated codec.
fn main {
  let arguments = match @observation.read_arguments() {
    Ok(value) => value
    Err(_) => { @observation.exit(22); return }
  }
  if arguments.length() != 2 { @observation.exit(22) }
  let codec = @records.Ros2Industrial_msgsMsgRobotStatusCodec::new()
  let report = @observation.receive(arguments[1], codec.max_wire_bytes,
    fn(bytes) { codec.decode(bytes) }, fn(value) { codec.encode(value) }, 250, @observation.pause_for_sample)
  @observation.exit(@observation.output_observation(report))
}
