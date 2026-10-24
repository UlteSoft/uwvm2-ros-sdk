/// @file main.mbt
/// @brief Encode and transactionally recover every original nav_msgs/Odometry field.
/// @details This source-only codec example grants no ROS authority and makes no native call.
fn main {
  let value = @agilex.Ros1Nav_msgsOdometry::new()
  let codec = @agilex.Ros1Nav_msgsOdometryCodec::new()
  let bytes = match codec.encode(value) {
    Ok(bytes) => bytes
    Err(_) => abort("complete source-language encode failed")
  }
  let decoded = match codec.decode(bytes) {
    Ok(value) => value
    Err(_) => abort("complete source-language decode failed")
  }
  let restored = match codec.encode(decoded) {
    Ok(bytes) => bytes
    Err(_) => abort("complete source-language re-encode failed")
  }
  if bytes != restored { abort("whole original value changed") }
  let truncated = Bytes::makei(bytes.length() - 1, fn(index) { bytes[index] })
  match codec.decode(truncated) {
    Ok(_) => abort("truncated original value was accepted")
    Err(_) => ()
  }
  let trailing = Bytes::makei(bytes.length() + 1, fn(index) {
    if index < bytes.length() { bytes[index] } else { 0 }
  })
  match codec.decode(trailing) {
    Ok(_) => abort("trailing canonical byte was accepted")
    Err(_) => ()
  }
  println(bytes.length())
}
