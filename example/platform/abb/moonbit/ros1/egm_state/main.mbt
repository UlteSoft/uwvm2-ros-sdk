/// @file main.mbt
/// @brief Observe every original ROS1 abb_egm_msgs/EGMState field in genuine MoonBit.
/// @details One exact-type owner, complete canonical codec, and checked once-only close.
fn main {
  let arguments = @observation.read_arguments()
  if arguments.length() != 2 { @observation.exit(22) }
  let codec = @records.Ros1Abb_egm_msgsEGMStateCodec::new()
  let report = @observation.receive(arguments[1], codec.max_wire_bytes, 250,
    codec.decode, codec.encode)
  @observation.exit(@observation.output(report))
}
