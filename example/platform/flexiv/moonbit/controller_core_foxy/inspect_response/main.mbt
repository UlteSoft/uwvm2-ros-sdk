/// @brief Validate bounded runtime hexadecimal input with genuine MoonBit code.
fn main {
  let args = @env.args()
  if args.length() != 2 { abort("supply exactly one canonical hexadecimal argument") }
  let text = args[1]
  if text.length() > 33962 || text.length() % 2 != 0 { abort("input extent") }
  let bytes = @hex.decode(text[:]) catch { _ => abort("invalid hexadecimal input") }
  let codec = @records.Ros2Trajectory_msgsMsgJointTrajectoryCodec::new()
  let value = match codec.decode(bytes) {
    Ok(value) => value
    Err(code) => abort("complete decoder status " + code.to_string())
  }
  let encoded = match codec.encode(value) {
    Ok(value) => value
    Err(code) => abort("complete encoder status " + code.to_string())
  }
  println(@hex.encode(encoded[:]))
}
