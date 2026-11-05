/// @file main.mbt
/// @brief Observe every original ROS1 abb_egm_msgs/EGMState field in genuine MoonBit.
/// @details One exact-type owner, complete canonical codec, and checked once-only close.
fn main {
  let arguments = match @observation.read_arguments() {
    Ok(value) => value
    Err(_) => { @observation.exit(22); return }
  }
  if arguments.length() != 2 { @observation.exit(22) }
  let codec = @records.Ros1Abb_egm_msgsEGMStateCodec::new()
  let report = @observation.receive(arguments[1], codec.max_wire_bytes,
    fn(bytes) { codec.decode(bytes) }, fn(value) { codec.encode(value) }, 250, @observation.pause_for_sample)
  @observation.exit(@observation.output_observation(report))
}
