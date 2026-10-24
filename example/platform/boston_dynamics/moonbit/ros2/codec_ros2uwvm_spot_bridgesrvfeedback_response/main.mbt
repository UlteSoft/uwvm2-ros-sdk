/// @file main.mbt
/// @brief Encode and transactionally recover every original uwvm_spot_bridge/srv/Feedback_Response field.
/// @details This source-only codec example grants no ROS authority and makes no native call.
fn main {
  let value = @boston_dynamics.Ros2Uwvm_spot_bridgeSrvFeedback_Response::new()
  value.field_token = 0x8000000000000001UL
  value.field_nonce = 0xffffffffffffffffUL
  value.field_native_proto = Array::makei(16384, fn(index) { index % 251 })
  let codec = @boston_dynamics.Ros2Uwvm_spot_bridgeSrvFeedback_ResponseCodec::new()
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
  let oversized = @boston_dynamics.Ros2Uwvm_spot_bridgeSrvFeedback_Response::new()
  oversized.field_native_proto = Array::makei(16385, fn(_) { 1 })
  match codec.encode(oversized) {
    Ok(_) => abort("original protobuf envelope bound was weakened")
    Err(_) => ()
  }
  println(bytes.length())
}
