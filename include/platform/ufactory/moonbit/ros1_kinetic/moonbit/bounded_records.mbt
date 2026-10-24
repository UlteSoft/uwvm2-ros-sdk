/// @file bounded_records.mbt
/// @brief Preserve the complete original ufactory/ros1_kinetic canonical value domain.
/// @details The selected domain contains 84 complete record/components and 196 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.

// Complete actual IR records follow. No native registration.

/// @brief Own every original xarm_gripper/MoveGoal field.
/// @details 2 ordered fields, canonical extent 8..8 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_gripperMoveGoal {
  /// @brief Original xarm_gripper/MoveGoal.target_pulse field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut target_pulse : Float
  /// @brief Original xarm_gripper/MoveGoal.pulse_speed field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pulse_speed : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_gripperMoveGoal::new() -> Ros1Xarm_gripperMoveGoal {
  {
    target_pulse: (0U).reinterpret_as_float(),
    pulse_speed: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_gripperMoveGoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_gripperMoveGoalCodec::new() -> Ros1Xarm_gripperMoveGoalCodec {
  { ros_version: 1, native_type: "xarm_gripper/MoveGoal",
    native_identity: None,
    codec_identity: "UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_gripperMoveGoalCodec::encode(
  _self : Ros1Xarm_gripperMoveGoalCodec,
  value : Ros1Xarm_gripperMoveGoal,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Xarm_gripperMoveGoal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_gripperMoveGoalCodec::decode(
  _self : Ros1Xarm_gripperMoveGoalCodec,
  input : Bytes,
) -> Result[Ros1Xarm_gripperMoveGoal, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_gripperMoveGoal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_gripperMoveGoal(writer : BoundedWriter, value : Ros1Xarm_gripperMoveGoal) -> Unit {
  let part0 = value.target_pulse
  writer.float32(part0)
  let part1 = value.pulse_speed
  writer.float32(part1)
}
fn read_Ros1Xarm_gripperMoveGoal(reader : BoundedReader) -> Ros1Xarm_gripperMoveGoal {
  let part0 = reader.float32()
  let part1 = reader.float32()
  { target_pulse: part0, pulse_speed: part1 }
}

/// @brief Own every original xarm_gripper/MoveResult field.
/// @details 2 ordered fields, canonical extent 3..3 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_gripperMoveResult {
  /// @brief Original xarm_gripper/MoveResult.success field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut success : Bool
  /// @brief Original xarm_gripper/MoveResult.err_code field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut err_code : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_gripperMoveResult::new() -> Ros1Xarm_gripperMoveResult {
  {
    success: false,
    err_code: 0,
  }
}
pub(all) struct Ros1Xarm_gripperMoveResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_gripperMoveResultCodec::new() -> Ros1Xarm_gripperMoveResultCodec {
  { ros_version: 1, native_type: "xarm_gripper/MoveResult",
    native_identity: None,
    codec_identity: "UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c",
    min_wire_bytes: 3, max_wire_bytes: 3 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_gripperMoveResultCodec::encode(
  _self : Ros1Xarm_gripperMoveResultCodec,
  value : Ros1Xarm_gripperMoveResult,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 3, error: 0 }
  write_Ros1Xarm_gripperMoveResult(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 3 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_gripperMoveResultCodec::decode(
  _self : Ros1Xarm_gripperMoveResultCodec,
  input : Bytes,
) -> Result[Ros1Xarm_gripperMoveResult, Int] {
  if input.length() < 3 || input.length() > 3 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_gripperMoveResult(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_gripperMoveResult(writer : BoundedWriter, value : Ros1Xarm_gripperMoveResult) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.err_code
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_gripperMoveResult(reader : BoundedReader) -> Ros1Xarm_gripperMoveResult {
  let part0 = reader.boolean()
  let part1 = reader.signed16()
  { success: part0, err_code: part1 }
}

/// @brief Own every original xarm_gripper/MoveFeedback field.
/// @details 1 ordered fields, canonical extent 4..4 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_gripperMoveFeedback {
  /// @brief Original xarm_gripper/MoveFeedback.current_pulse field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut current_pulse : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_gripperMoveFeedback::new() -> Ros1Xarm_gripperMoveFeedback {
  {
    current_pulse: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_gripperMoveFeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_gripperMoveFeedbackCodec::new() -> Ros1Xarm_gripperMoveFeedbackCodec {
  { ros_version: 1, native_type: "xarm_gripper/MoveFeedback",
    native_identity: None,
    codec_identity: "UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_gripperMoveFeedbackCodec::encode(
  _self : Ros1Xarm_gripperMoveFeedbackCodec,
  value : Ros1Xarm_gripperMoveFeedback,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros1Xarm_gripperMoveFeedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_gripperMoveFeedbackCodec::decode(
  _self : Ros1Xarm_gripperMoveFeedbackCodec,
  input : Bytes,
) -> Result[Ros1Xarm_gripperMoveFeedback, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_gripperMoveFeedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_gripperMoveFeedback(writer : BoundedWriter, value : Ros1Xarm_gripperMoveFeedback) -> Unit {
  let part0 = value.current_pulse
  writer.float32(part0)
}
fn read_Ros1Xarm_gripperMoveFeedback(reader : BoundedReader) -> Ros1Xarm_gripperMoveFeedback {
  let part0 = reader.float32()
  { current_pulse: part0 }
}

/// @brief Own every original geometry_msgs/Point field.
/// @details 3 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Geometry_msgsPoint {
  /// @brief Original geometry_msgs/Point.x field.
  /// @details float64 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Double
  /// @brief Original geometry_msgs/Point.y field.
  /// @details float64 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Double
  /// @brief Original geometry_msgs/Point.z field.
  /// @details float64 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Double
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Geometry_msgsPoint::new() -> Ros1Geometry_msgsPoint {
  {
    x: 0.0,
    y: 0.0,
    z: 0.0,
  }
}
pub(all) struct Ros1Geometry_msgsPointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Geometry_msgsPointCodec::new() -> Ros1Geometry_msgsPointCodec {
  { ros_version: 1, native_type: "geometry_msgs/Point",
    native_identity: None,
    codec_identity: "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Geometry_msgsPointCodec::encode(
  _self : Ros1Geometry_msgsPointCodec,
  value : Ros1Geometry_msgsPoint,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros1Geometry_msgsPoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Geometry_msgsPointCodec::decode(
  _self : Ros1Geometry_msgsPointCodec,
  input : Bytes,
) -> Result[Ros1Geometry_msgsPoint, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Geometry_msgsPoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Geometry_msgsPoint(writer : BoundedWriter, value : Ros1Geometry_msgsPoint) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
}
fn read_Ros1Geometry_msgsPoint(reader : BoundedReader) -> Ros1Geometry_msgsPoint {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  { x: part0, y: part1, z: part2 }
}

/// @brief Own every original geometry_msgs/Quaternion field.
/// @details 4 ordered fields, canonical extent 32..32 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Geometry_msgsQuaternion {
  /// @brief Original geometry_msgs/Quaternion.x field.
  /// @details float64 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Double
  /// @brief Original geometry_msgs/Quaternion.y field.
  /// @details float64 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Double
  /// @brief Original geometry_msgs/Quaternion.z field.
  /// @details float64 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Double
  /// @brief Original geometry_msgs/Quaternion.w field.
  /// @details float64 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut w : Double
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Geometry_msgsQuaternion::new() -> Ros1Geometry_msgsQuaternion {
  {
    x: 0.0,
    y: 0.0,
    z: 0.0,
    w: 0.0,
  }
}
pub(all) struct Ros1Geometry_msgsQuaternionCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Geometry_msgsQuaternionCodec::new() -> Ros1Geometry_msgsQuaternionCodec {
  { ros_version: 1, native_type: "geometry_msgs/Quaternion",
    native_identity: None,
    codec_identity: "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934",
    min_wire_bytes: 32, max_wire_bytes: 32 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Geometry_msgsQuaternionCodec::encode(
  _self : Ros1Geometry_msgsQuaternionCodec,
  value : Ros1Geometry_msgsQuaternion,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32, error: 0 }
  write_Ros1Geometry_msgsQuaternion(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Geometry_msgsQuaternionCodec::decode(
  _self : Ros1Geometry_msgsQuaternionCodec,
  input : Bytes,
) -> Result[Ros1Geometry_msgsQuaternion, Int] {
  if input.length() < 32 || input.length() > 32 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Geometry_msgsQuaternion(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Geometry_msgsQuaternion(writer : BoundedWriter, value : Ros1Geometry_msgsQuaternion) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
  let part3 = value.w
  writer.float64(part3)
}
fn read_Ros1Geometry_msgsQuaternion(reader : BoundedReader) -> Ros1Geometry_msgsQuaternion {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  { x: part0, y: part1, z: part2, w: part3 }
}

/// @brief Own every original geometry_msgs/Pose field.
/// @details 2 ordered fields, canonical extent 56..56 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Geometry_msgsPose {
  /// @brief Original geometry_msgs/Pose.position field.
  /// @details geometry_msgs/Point scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame
  /// and backing storage through synchronous encoding.
  mut position : Ros1Geometry_msgsPoint
  /// @brief Original geometry_msgs/Pose.orientation field.
  /// @details geometry_msgs/Quaternion scalar; count/quota 0, UTF-8 byte bound 0. Retain original
  /// units/frame and backing storage through synchronous encoding.
  mut orientation : Ros1Geometry_msgsQuaternion
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Geometry_msgsPose::new() -> Ros1Geometry_msgsPose {
  {
    position: Ros1Geometry_msgsPoint::new(),
    orientation: Ros1Geometry_msgsQuaternion::new(),
  }
}
pub(all) struct Ros1Geometry_msgsPoseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Geometry_msgsPoseCodec::new() -> Ros1Geometry_msgsPoseCodec {
  { ros_version: 1, native_type: "geometry_msgs/Pose",
    native_identity: None,
    codec_identity: "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471",
    min_wire_bytes: 56, max_wire_bytes: 56 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Geometry_msgsPoseCodec::encode(
  _self : Ros1Geometry_msgsPoseCodec,
  value : Ros1Geometry_msgsPose,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 56, error: 0 }
  write_Ros1Geometry_msgsPose(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 56 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Geometry_msgsPoseCodec::decode(
  _self : Ros1Geometry_msgsPoseCodec,
  input : Bytes,
) -> Result[Ros1Geometry_msgsPose, Int] {
  if input.length() < 56 || input.length() > 56 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Geometry_msgsPose(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Geometry_msgsPose(writer : BoundedWriter, value : Ros1Geometry_msgsPose) -> Unit {
  let part0 = value.position
  write_Ros1Geometry_msgsPoint(writer, part0)
  let part1 = value.orientation
  write_Ros1Geometry_msgsQuaternion(writer, part1)
}
fn read_Ros1Geometry_msgsPose(reader : BoundedReader) -> Ros1Geometry_msgsPose {
  let part0 = read_Ros1Geometry_msgsPoint(reader)
  let part1 = read_Ros1Geometry_msgsQuaternion(reader)
  { position: part0, orientation: part1 }
}

/// @brief Own every original time field.
/// @details 2 ordered fields, canonical extent 8..8 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Time {
  /// @brief Original time.sec field.
  /// @details uint32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut sec : UInt
  /// @brief Original time.nsec field.
  /// @details uint32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut nsec : UInt
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Time::new() -> Ros1Time {
  {
    sec: 0U,
    nsec: 0U,
  }
}
pub(all) struct Ros1TimeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1TimeCodec::new() -> Ros1TimeCodec {
  { ros_version: 1, native_type: "time",
    native_identity: None,
    codec_identity: "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1TimeCodec::encode(_self : Ros1TimeCodec, value : Ros1Time) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Time(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1TimeCodec::decode(_self : Ros1TimeCodec, input : Bytes) -> Result[Ros1Time, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Time(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Time(writer : BoundedWriter, value : Ros1Time) -> Unit {
  let part0 = value.sec
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.nsec
  writer.unsigned(part1.to_uint64(), 4)
  if part1 >= 1000000000U { writer.error = 22 }
}
fn read_Ros1Time(reader : BoundedReader) -> Ros1Time {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(4).to_uint()
  if part1 >= 1000000000U { reader.error = 22 }
  { sec: part0, nsec: part1 }
}

/// @brief Own every original std_msgs/Header field.
/// @details 3 ordered fields, canonical extent 16..272 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Std_msgsHeader {
  /// @brief Original std_msgs/Header.seq field.
  /// @details uint32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut seq : UInt
  /// @brief Original std_msgs/Header.stamp field.
  /// @details time scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut stamp : Ros1Time
  /// @brief Original std_msgs/Header.frame_id field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut frame_id : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Std_msgsHeader::new() -> Ros1Std_msgsHeader {
  {
    seq: 0U,
    stamp: Ros1Time::new(),
    frame_id: "",
  }
}
pub(all) struct Ros1Std_msgsHeaderCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Std_msgsHeaderCodec::new() -> Ros1Std_msgsHeaderCodec {
  { ros_version: 1, native_type: "std_msgs/Header",
    native_identity: None,
    codec_identity: "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7",
    min_wire_bytes: 16, max_wire_bytes: 272 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Std_msgsHeaderCodec::encode(
  _self : Ros1Std_msgsHeaderCodec,
  value : Ros1Std_msgsHeader,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 272, error: 0 }
  write_Ros1Std_msgsHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Std_msgsHeaderCodec::decode(
  _self : Ros1Std_msgsHeaderCodec,
  input : Bytes,
) -> Result[Ros1Std_msgsHeader, Int] {
  if input.length() < 16 || input.length() > 272 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Std_msgsHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Std_msgsHeader(writer : BoundedWriter, value : Ros1Std_msgsHeader) -> Unit {
  let part0 = value.seq
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.stamp
  write_Ros1Time(writer, part1)
  let part2 = value.frame_id
  writer.text(part2, 256)
}
fn read_Ros1Std_msgsHeader(reader : BoundedReader) -> Ros1Std_msgsHeader {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = read_Ros1Time(reader)
  let part2 = reader.text(256)
  { seq: part0, stamp: part1, frame_id: part2 }
}

/// @brief Own every original xarm_msgs/CIOState field.
/// @details 9 ordered fields, canonical extent 76..332 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsCIOState {
  /// @brief Original xarm_msgs/CIOState.header field.
  /// @details std_msgs/Header scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and
  /// backing storage through synchronous encoding.
  mut header : Ros1Std_msgsHeader
  /// @brief Original xarm_msgs/CIOState.state field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut state : Int
  /// @brief Original xarm_msgs/CIOState.code field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut code : Int
  /// @brief Original xarm_msgs/CIOState.input_digitals field.
  /// @details uint16 array; count/quota 2, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut input_digitals : Array[Int]
  /// @brief Original xarm_msgs/CIOState.output_digitals field.
  /// @details uint16 array; count/quota 2, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut output_digitals : Array[Int]
  /// @brief Original xarm_msgs/CIOState.input_analogs field.
  /// @details float32 array; count/quota 2, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut input_analogs : Array[Float]
  /// @brief Original xarm_msgs/CIOState.output_analogs field.
  /// @details float32 array; count/quota 2, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut output_analogs : Array[Float]
  /// @brief Original xarm_msgs/CIOState.input_conf field.
  /// @details uint8 array; count/quota 16, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut input_conf : Array[Int]
  /// @brief Original xarm_msgs/CIOState.output_conf field.
  /// @details uint8 array; count/quota 16, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut output_conf : Array[Int]
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsCIOState::new() -> Ros1Xarm_msgsCIOState {
  {
    header: Ros1Std_msgsHeader::new(),
    state: 0,
    code: 0,
    input_digitals: Array::makei(2, fn(_) { 0 }),
    output_digitals: Array::makei(2, fn(_) { 0 }),
    input_analogs: Array::makei(2, fn(_) { (0U).reinterpret_as_float() }),
    output_analogs: Array::makei(2, fn(_) { (0U).reinterpret_as_float() }),
    input_conf: Array::makei(16, fn(_) { 0 }),
    output_conf: Array::makei(16, fn(_) { 0 }),
  }
}
pub(all) struct Ros1Xarm_msgsCIOStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsCIOStateCodec::new() -> Ros1Xarm_msgsCIOStateCodec {
  { ros_version: 1, native_type: "xarm_msgs/CIOState",
    native_identity: None,
    codec_identity: "UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057",
    min_wire_bytes: 76, max_wire_bytes: 332 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsCIOStateCodec::encode(
  _self : Ros1Xarm_msgsCIOStateCodec,
  value : Ros1Xarm_msgsCIOState,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 332, error: 0 }
  write_Ros1Xarm_msgsCIOState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 76 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsCIOStateCodec::decode(
  _self : Ros1Xarm_msgsCIOStateCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsCIOState, Int] {
  if input.length() < 76 || input.length() > 332 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsCIOState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsCIOState(writer : BoundedWriter, value : Ros1Xarm_msgsCIOState) -> Unit {
  let part0 = value.header
  write_Ros1Std_msgsHeader(writer, part0)
  let part1 = value.state
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.code
  if part2 < -32768 || part2 > 32767 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part3 = value.input_digitals
  let count3 = part3.length()
  if count3 != 2 { writer.error = 22; return () }
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    if element < 0 || element > 65535 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  }
  let part4 = value.output_digitals
  let count4 = part4.length()
  if count4 != 2 { writer.error = 22; return () }
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    if element < 0 || element > 65535 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  }
  let part5 = value.input_analogs
  let count5 = part5.length()
  if count5 != 2 { writer.error = 22; return () }
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    writer.float32(element)
  }
  let part6 = value.output_analogs
  let count6 = part6.length()
  if count6 != 2 { writer.error = 22; return () }
  for index = 0; index < count6; index = index + 1 {
    let element = part6[index]
    writer.float32(element)
  }
  let part7 = value.input_conf
  let count7 = part7.length()
  if count7 != 16 { writer.error = 22; return () }
  for index = 0; index < count7; index = index + 1 {
    let element = part7[index]
    if element < 0 || element > 255 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 255UL, 1)
  }
  let part8 = value.output_conf
  let count8 = part8.length()
  if count8 != 16 { writer.error = 22; return () }
  for index = 0; index < count8; index = index + 1 {
    let element = part8[index]
    if element < 0 || element > 255 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 255UL, 1)
  }
}
fn read_Ros1Xarm_msgsCIOState(reader : BoundedReader) -> Ros1Xarm_msgsCIOState {
  let part0 = read_Ros1Std_msgsHeader(reader)
  let part1 = reader.signed16()
  let part2 = reader.signed16()
  let part3 : Array[Int] = []
  let count3 = 2
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.unsigned(2).to_int())
  }
  let part4 : Array[Int] = []
  let count4 = 2
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.unsigned(2).to_int())
  }
  let part5 : Array[Float] = []
  let count5 = 2
  for index = 0; index < count5; index = index + 1 {
    part5.push(reader.float32())
  }
  let part6 : Array[Float] = []
  let count6 = 2
  for index = 0; index < count6; index = index + 1 {
    part6.push(reader.float32())
  }
  let part7 : Array[Int] = []
  let count7 = 16
  for index = 0; index < count7; index = index + 1 {
    part7.push(reader.unsigned(1).to_int())
  }
  let part8 : Array[Int] = []
  let count8 = 16
  for index = 0; index < count8; index = index + 1 {
    part8.push(reader.unsigned(1).to_int())
  }
  { header: part0, state: part1, code: part2, input_digitals: part3, output_digitals: part4, input_analogs: part5, output_analogs: part6, input_conf: part7, output_conf: part8 }
}

/// @brief Own every original xarm_msgs/IOState field.
/// @details 4 ordered fields, canonical extent 16..16 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsIOState {
  /// @brief Original xarm_msgs/IOState.digital_1 field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut digital_1 : Int
  /// @brief Original xarm_msgs/IOState.digital_2 field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut digital_2 : Int
  /// @brief Original xarm_msgs/IOState.analog_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut analog_1 : Float
  /// @brief Original xarm_msgs/IOState.analog_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut analog_2 : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsIOState::new() -> Ros1Xarm_msgsIOState {
  {
    digital_1: 0,
    digital_2: 0,
    analog_1: (0U).reinterpret_as_float(),
    analog_2: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_msgsIOStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsIOStateCodec::new() -> Ros1Xarm_msgsIOStateCodec {
  { ros_version: 1, native_type: "xarm_msgs/IOState",
    native_identity: None,
    codec_identity: "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsIOStateCodec::encode(
  _self : Ros1Xarm_msgsIOStateCodec,
  value : Ros1Xarm_msgsIOState,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros1Xarm_msgsIOState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsIOStateCodec::decode(
  _self : Ros1Xarm_msgsIOStateCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsIOState, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsIOState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsIOState(writer : BoundedWriter, value : Ros1Xarm_msgsIOState) -> Unit {
  let part0 = value.digital_1
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.digital_2
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part2 = value.analog_1
  writer.float32(part2)
  let part3 = value.analog_2
  writer.float32(part3)
}
fn read_Ros1Xarm_msgsIOState(reader : BoundedReader) -> Ros1Xarm_msgsIOState {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { digital_1: part0, digital_2: part1, analog_1: part2, analog_2: part3 }
}

/// @brief Own every original xarm_msgs/RobotMsg field.
/// @details 11 ordered fields, canonical extent 82..366 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsRobotMsg {
  /// @brief Original xarm_msgs/RobotMsg.header field.
  /// @details std_msgs/Header scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and
  /// backing storage through synchronous encoding.
  mut header : Ros1Std_msgsHeader
  /// @brief Original xarm_msgs/RobotMsg.state field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut state : Int
  /// @brief Original xarm_msgs/RobotMsg.mode field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut mode : Int
  /// @brief Original xarm_msgs/RobotMsg.cmdnum field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut cmdnum : Int
  /// @brief Original xarm_msgs/RobotMsg.mt_brake field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut mt_brake : Int
  /// @brief Original xarm_msgs/RobotMsg.mt_able field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut mt_able : Int
  /// @brief Original xarm_msgs/RobotMsg.err field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut err : Int
  /// @brief Original xarm_msgs/RobotMsg.warn field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut warn : Int
  /// @brief Original xarm_msgs/RobotMsg.angle field.
  /// @details float32 sequence; count/quota 7, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut angle : Array[Float]
  /// @brief Original xarm_msgs/RobotMsg.pose field.
  /// @details float32 array; count/quota 6, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pose : Array[Float]
  /// @brief Original xarm_msgs/RobotMsg.offset field.
  /// @details float32 array; count/quota 6, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut offset : Array[Float]
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsRobotMsg::new() -> Ros1Xarm_msgsRobotMsg {
  {
    header: Ros1Std_msgsHeader::new(),
    state: 0,
    mode: 0,
    cmdnum: 0,
    mt_brake: 0,
    mt_able: 0,
    err: 0,
    warn: 0,
    angle: [],
    pose: Array::makei(6, fn(_) { (0U).reinterpret_as_float() }),
    offset: Array::makei(6, fn(_) { (0U).reinterpret_as_float() }),
  }
}
pub(all) struct Ros1Xarm_msgsRobotMsgCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsRobotMsgCodec::new() -> Ros1Xarm_msgsRobotMsgCodec {
  { ros_version: 1, native_type: "xarm_msgs/RobotMsg",
    native_identity: None,
    codec_identity: "UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb",
    min_wire_bytes: 82, max_wire_bytes: 366 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsRobotMsgCodec::encode(
  _self : Ros1Xarm_msgsRobotMsgCodec,
  value : Ros1Xarm_msgsRobotMsg,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 366, error: 0 }
  write_Ros1Xarm_msgsRobotMsg(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 82 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsRobotMsgCodec::decode(
  _self : Ros1Xarm_msgsRobotMsgCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsRobotMsg, Int] {
  if input.length() < 82 || input.length() > 366 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsRobotMsg(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsRobotMsg(writer : BoundedWriter, value : Ros1Xarm_msgsRobotMsg) -> Unit {
  let part0 = value.header
  write_Ros1Std_msgsHeader(writer, part0)
  let part1 = value.state
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.mode
  if part2 < -32768 || part2 > 32767 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part3 = value.cmdnum
  if part3 < -32768 || part3 > 32767 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part4 = value.mt_brake
  if part4 < -32768 || part4 > 32767 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part5 = value.mt_able
  if part5 < -32768 || part5 > 32767 { writer.error = 22 }
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part6 = value.err
  if part6 < -32768 || part6 > 32767 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part7 = value.warn
  if part7 < -32768 || part7 > 32767 { writer.error = 22 }
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part8 = value.angle
  let count8 = part8.length()
  if count8 > 7 { writer.error = 22; return () }
  writer.unsigned(count8.to_uint64(), 4)
  for index = 0; index < count8; index = index + 1 {
    let element = part8[index]
    writer.float32(element)
  }
  let part9 = value.pose
  let count9 = part9.length()
  if count9 != 6 { writer.error = 22; return () }
  for index = 0; index < count9; index = index + 1 {
    let element = part9[index]
    writer.float32(element)
  }
  let part10 = value.offset
  let count10 = part10.length()
  if count10 != 6 { writer.error = 22; return () }
  for index = 0; index < count10; index = index + 1 {
    let element = part10[index]
    writer.float32(element)
  }
}
fn read_Ros1Xarm_msgsRobotMsg(reader : BoundedReader) -> Ros1Xarm_msgsRobotMsg {
  let part0 = read_Ros1Std_msgsHeader(reader)
  let part1 = reader.signed16()
  let part2 = reader.signed16()
  let part3 = reader.signed16()
  let part4 = reader.signed16()
  let part5 = reader.signed16()
  let part6 = reader.signed16()
  let part7 = reader.signed16()
  let part8 : Array[Float] = []
  let count8 = reader.count(7, 4)
  for index = 0; index < count8; index = index + 1 {
    part8.push(reader.float32())
  }
  let part9 : Array[Float] = []
  let count9 = 6
  for index = 0; index < count9; index = index + 1 {
    part9.push(reader.float32())
  }
  let part10 : Array[Float] = []
  let count10 = 6
  for index = 0; index < count10; index = index + 1 {
    part10.push(reader.float32())
  }
  { header: part0, state: part1, mode: part2, cmdnum: part3, mt_brake: part4, mt_able: part5, err: part6, warn: part7, angle: part8, pose: part9, offset: part10 }
}

/// @brief Own every original xarm_msgs/VeloMoveMsg field.
/// @details 4 ordered fields, canonical extent 10..138 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsVeloMoveMsg {
  /// @brief Original xarm_msgs/VeloMoveMsg.speeds field.
  /// @details float32 sequence; count/quota 32, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speeds : Array[Float]
  /// @brief Original xarm_msgs/VeloMoveMsg.is_sync field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut is_sync : Bool
  /// @brief Original xarm_msgs/VeloMoveMsg.is_tool_coord field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut is_tool_coord : Bool
  /// @brief Original xarm_msgs/VeloMoveMsg.duration field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut duration : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsVeloMoveMsg::new() -> Ros1Xarm_msgsVeloMoveMsg {
  {
    speeds: [],
    is_sync: false,
    is_tool_coord: false,
    duration: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_msgsVeloMoveMsgCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsVeloMoveMsgCodec::new() -> Ros1Xarm_msgsVeloMoveMsgCodec {
  { ros_version: 1, native_type: "xarm_msgs/VeloMoveMsg",
    native_identity: None,
    codec_identity: "UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032",
    min_wire_bytes: 10, max_wire_bytes: 138 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsVeloMoveMsgCodec::encode(
  _self : Ros1Xarm_msgsVeloMoveMsgCodec,
  value : Ros1Xarm_msgsVeloMoveMsg,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 138, error: 0 }
  write_Ros1Xarm_msgsVeloMoveMsg(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsVeloMoveMsgCodec::decode(
  _self : Ros1Xarm_msgsVeloMoveMsgCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsVeloMoveMsg, Int] {
  if input.length() < 10 || input.length() > 138 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsVeloMoveMsg(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsVeloMoveMsg(writer : BoundedWriter, value : Ros1Xarm_msgsVeloMoveMsg) -> Unit {
  let part0 = value.speeds
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float32(element)
  }
  let part1 = value.is_sync
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.is_tool_coord
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.duration
  writer.float32(part3)
}
fn read_Ros1Xarm_msgsVeloMoveMsg(reader : BoundedReader) -> Ros1Xarm_msgsVeloMoveMsg {
  let part0 : Array[Float] = []
  let count0 = reader.count(32, 4)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float32())
  }
  let part1 = reader.boolean()
  let part2 = reader.boolean()
  let part3 = reader.float32()
  { speeds: part0, is_sync: part1, is_tool_coord: part2, duration: part3 }
}

pub(all) enum Ros1Xarm_msgsCallRequest { Ros1Xarm_msgsCallRequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsCallRequest::new() -> Ros1Xarm_msgsCallRequest { Ros1Xarm_msgsCallRequestEmpty }
pub(all) struct Ros1Xarm_msgsCallRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsCallRequestCodec::new() -> Ros1Xarm_msgsCallRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/CallRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsCallRequestCodec::encode(
  _self : Ros1Xarm_msgsCallRequestCodec,
  value : Ros1Xarm_msgsCallRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Xarm_msgsCallRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsCallRequestCodec::decode(
  _self : Ros1Xarm_msgsCallRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsCallRequest, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsCallRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsCallRequest(writer : BoundedWriter, value : Ros1Xarm_msgsCallRequest) -> Unit {
}
fn read_Ros1Xarm_msgsCallRequest(reader : BoundedReader) -> Ros1Xarm_msgsCallRequest {
  Ros1Xarm_msgsCallRequestEmpty
}

/// @brief Own every original xarm_msgs/CallResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsCallResponse {
  /// @brief Original xarm_msgs/CallResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/CallResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsCallResponse::new() -> Ros1Xarm_msgsCallResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsCallResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsCallResponseCodec::new() -> Ros1Xarm_msgsCallResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/CallResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsCallResponseCodec::encode(
  _self : Ros1Xarm_msgsCallResponseCodec,
  value : Ros1Xarm_msgsCallResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsCallResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsCallResponseCodec::decode(
  _self : Ros1Xarm_msgsCallResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsCallResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsCallResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsCallResponse(writer : BoundedWriter, value : Ros1Xarm_msgsCallResponse) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsCallResponse(reader : BoundedReader) -> Ros1Xarm_msgsCallResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

pub(all) enum Ros1Xarm_msgsClearErrRequest { Ros1Xarm_msgsClearErrRequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsClearErrRequest::new() -> Ros1Xarm_msgsClearErrRequest { Ros1Xarm_msgsClearErrRequestEmpty }
pub(all) struct Ros1Xarm_msgsClearErrRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsClearErrRequestCodec::new() -> Ros1Xarm_msgsClearErrRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/ClearErrRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsClearErrRequestCodec::encode(
  _self : Ros1Xarm_msgsClearErrRequestCodec,
  value : Ros1Xarm_msgsClearErrRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Xarm_msgsClearErrRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsClearErrRequestCodec::decode(
  _self : Ros1Xarm_msgsClearErrRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsClearErrRequest, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsClearErrRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsClearErrRequest(writer : BoundedWriter, value : Ros1Xarm_msgsClearErrRequest) -> Unit {
}
fn read_Ros1Xarm_msgsClearErrRequest(reader : BoundedReader) -> Ros1Xarm_msgsClearErrRequest {
  Ros1Xarm_msgsClearErrRequestEmpty
}

/// @brief Own every original xarm_msgs/ClearErrResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsClearErrResponse {
  /// @brief Original xarm_msgs/ClearErrResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/ClearErrResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsClearErrResponse::new() -> Ros1Xarm_msgsClearErrResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsClearErrResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsClearErrResponseCodec::new() -> Ros1Xarm_msgsClearErrResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/ClearErrResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsClearErrResponseCodec::encode(
  _self : Ros1Xarm_msgsClearErrResponseCodec,
  value : Ros1Xarm_msgsClearErrResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsClearErrResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsClearErrResponseCodec::decode(
  _self : Ros1Xarm_msgsClearErrResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsClearErrResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsClearErrResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsClearErrResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsClearErrResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsClearErrResponse(reader : BoundedReader) -> Ros1Xarm_msgsClearErrResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/ConfigToolModbusRequest field.
/// @details 2 ordered fields, canonical extent 8..8 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsConfigToolModbusRequest {
  /// @brief Original xarm_msgs/ConfigToolModbusRequest.baud_rate field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut baud_rate : Int
  /// @brief Original xarm_msgs/ConfigToolModbusRequest.timeout_ms field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut timeout_ms : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsConfigToolModbusRequest::new() -> Ros1Xarm_msgsConfigToolModbusRequest {
  {
    baud_rate: 0,
    timeout_ms: 0,
  }
}
pub(all) struct Ros1Xarm_msgsConfigToolModbusRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsConfigToolModbusRequestCodec::new() -> Ros1Xarm_msgsConfigToolModbusRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/ConfigToolModbusRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsConfigToolModbusRequestCodec::encode(
  _self : Ros1Xarm_msgsConfigToolModbusRequestCodec,
  value : Ros1Xarm_msgsConfigToolModbusRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Xarm_msgsConfigToolModbusRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsConfigToolModbusRequestCodec::decode(
  _self : Ros1Xarm_msgsConfigToolModbusRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsConfigToolModbusRequest, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsConfigToolModbusRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsConfigToolModbusRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsConfigToolModbusRequest,
) -> Unit {
  let part0 = value.baud_rate
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.timeout_ms
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros1Xarm_msgsConfigToolModbusRequest(reader : BoundedReader) -> Ros1Xarm_msgsConfigToolModbusRequest {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { baud_rate: part0, timeout_ms: part1 }
}

/// @brief Own every original xarm_msgs/ConfigToolModbusResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsConfigToolModbusResponse {
  /// @brief Original xarm_msgs/ConfigToolModbusResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
  /// @brief Original xarm_msgs/ConfigToolModbusResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsConfigToolModbusResponse::new() -> Ros1Xarm_msgsConfigToolModbusResponse {
  {
    message: "",
    ret: 0,
  }
}
pub(all) struct Ros1Xarm_msgsConfigToolModbusResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsConfigToolModbusResponseCodec::new() -> Ros1Xarm_msgsConfigToolModbusResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/ConfigToolModbusResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsConfigToolModbusResponseCodec::encode(
  _self : Ros1Xarm_msgsConfigToolModbusResponseCodec,
  value : Ros1Xarm_msgsConfigToolModbusResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsConfigToolModbusResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsConfigToolModbusResponseCodec::decode(
  _self : Ros1Xarm_msgsConfigToolModbusResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsConfigToolModbusResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsConfigToolModbusResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsConfigToolModbusResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsConfigToolModbusResponse,
) -> Unit {
  let part0 = value.message
  writer.text(part0, 256)
  let part1 = value.ret
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsConfigToolModbusResponse(reader : BoundedReader) -> Ros1Xarm_msgsConfigToolModbusResponse {
  let part0 = reader.text(256)
  let part1 = reader.signed16()
  { message: part0, ret: part1 }
}

/// @brief Own every original xarm_msgs/FtCaliLoadRequest field.
/// @details 2 ordered fields, canonical extent 5..133 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsFtCaliLoadRequest {
  /// @brief Original xarm_msgs/FtCaliLoadRequest.datas field.
  /// @details float32 sequence; count/quota 32, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut datas : Array[Float]
  /// @brief Original xarm_msgs/FtCaliLoadRequest.association_setting_tcp_load field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut association_setting_tcp_load : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsFtCaliLoadRequest::new() -> Ros1Xarm_msgsFtCaliLoadRequest {
  {
    datas: [],
    association_setting_tcp_load: false,
  }
}
pub(all) struct Ros1Xarm_msgsFtCaliLoadRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsFtCaliLoadRequestCodec::new() -> Ros1Xarm_msgsFtCaliLoadRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/FtCaliLoadRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167",
    min_wire_bytes: 5, max_wire_bytes: 133 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsFtCaliLoadRequestCodec::encode(
  _self : Ros1Xarm_msgsFtCaliLoadRequestCodec,
  value : Ros1Xarm_msgsFtCaliLoadRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 133, error: 0 }
  write_Ros1Xarm_msgsFtCaliLoadRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsFtCaliLoadRequestCodec::decode(
  _self : Ros1Xarm_msgsFtCaliLoadRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsFtCaliLoadRequest, Int] {
  if input.length() < 5 || input.length() > 133 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsFtCaliLoadRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsFtCaliLoadRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsFtCaliLoadRequest,
) -> Unit {
  let part0 = value.datas
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float32(element)
  }
  let part1 = value.association_setting_tcp_load
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Xarm_msgsFtCaliLoadRequest(reader : BoundedReader) -> Ros1Xarm_msgsFtCaliLoadRequest {
  let part0 : Array[Float] = []
  let count0 = reader.count(32, 4)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float32())
  }
  let part1 = reader.boolean()
  { datas: part0, association_setting_tcp_load: part1 }
}

/// @brief Own every original xarm_msgs/FtCaliLoadResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsFtCaliLoadResponse {
  /// @brief Original xarm_msgs/FtCaliLoadResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/FtCaliLoadResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsFtCaliLoadResponse::new() -> Ros1Xarm_msgsFtCaliLoadResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsFtCaliLoadResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsFtCaliLoadResponseCodec::new() -> Ros1Xarm_msgsFtCaliLoadResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/FtCaliLoadResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsFtCaliLoadResponseCodec::encode(
  _self : Ros1Xarm_msgsFtCaliLoadResponseCodec,
  value : Ros1Xarm_msgsFtCaliLoadResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsFtCaliLoadResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsFtCaliLoadResponseCodec::decode(
  _self : Ros1Xarm_msgsFtCaliLoadResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsFtCaliLoadResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsFtCaliLoadResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsFtCaliLoadResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsFtCaliLoadResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsFtCaliLoadResponse(reader : BoundedReader) -> Ros1Xarm_msgsFtCaliLoadResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

pub(all) enum Ros1Xarm_msgsFtIdenLoadRequest { Ros1Xarm_msgsFtIdenLoadRequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsFtIdenLoadRequest::new() -> Ros1Xarm_msgsFtIdenLoadRequest { Ros1Xarm_msgsFtIdenLoadRequestEmpty }
pub(all) struct Ros1Xarm_msgsFtIdenLoadRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsFtIdenLoadRequestCodec::new() -> Ros1Xarm_msgsFtIdenLoadRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/FtIdenLoadRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsFtIdenLoadRequestCodec::encode(
  _self : Ros1Xarm_msgsFtIdenLoadRequestCodec,
  value : Ros1Xarm_msgsFtIdenLoadRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Xarm_msgsFtIdenLoadRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsFtIdenLoadRequestCodec::decode(
  _self : Ros1Xarm_msgsFtIdenLoadRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsFtIdenLoadRequest, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsFtIdenLoadRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsFtIdenLoadRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsFtIdenLoadRequest,
) -> Unit {
}
fn read_Ros1Xarm_msgsFtIdenLoadRequest(reader : BoundedReader) -> Ros1Xarm_msgsFtIdenLoadRequest {
  Ros1Xarm_msgsFtIdenLoadRequestEmpty
}

/// @brief Own every original xarm_msgs/FtIdenLoadResponse field.
/// @details 3 ordered fields, canonical extent 10..394 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsFtIdenLoadResponse {
  /// @brief Original xarm_msgs/FtIdenLoadResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/FtIdenLoadResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
  /// @brief Original xarm_msgs/FtIdenLoadResponse.datas field.
  /// @details float32 sequence; count/quota 32, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut datas : Array[Float]
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsFtIdenLoadResponse::new() -> Ros1Xarm_msgsFtIdenLoadResponse {
  {
    ret: 0,
    message: "",
    datas: [],
  }
}
pub(all) struct Ros1Xarm_msgsFtIdenLoadResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsFtIdenLoadResponseCodec::new() -> Ros1Xarm_msgsFtIdenLoadResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/FtIdenLoadResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8",
    min_wire_bytes: 10, max_wire_bytes: 394 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsFtIdenLoadResponseCodec::encode(
  _self : Ros1Xarm_msgsFtIdenLoadResponseCodec,
  value : Ros1Xarm_msgsFtIdenLoadResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 394, error: 0 }
  write_Ros1Xarm_msgsFtIdenLoadResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsFtIdenLoadResponseCodec::decode(
  _self : Ros1Xarm_msgsFtIdenLoadResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsFtIdenLoadResponse, Int] {
  if input.length() < 10 || input.length() > 394 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsFtIdenLoadResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsFtIdenLoadResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsFtIdenLoadResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
  let part2 = value.datas
  let count2 = part2.length()
  if count2 > 32 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float32(element)
  }
}
fn read_Ros1Xarm_msgsFtIdenLoadResponse(reader : BoundedReader) -> Ros1Xarm_msgsFtIdenLoadResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  let part2 : Array[Float] = []
  let count2 = reader.count(32, 4)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float32())
  }
  { ret: part0, message: part1, datas: part2 }
}

/// @brief Own every original xarm_msgs/GetAnalogIORequest field.
/// @details 1 ordered fields, canonical extent 2..2 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGetAnalogIORequest {
  /// @brief Original xarm_msgs/GetAnalogIORequest.port_num field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut port_num : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetAnalogIORequest::new() -> Ros1Xarm_msgsGetAnalogIORequest {
  {
    port_num: 0,
  }
}
pub(all) struct Ros1Xarm_msgsGetAnalogIORequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetAnalogIORequestCodec::new() -> Ros1Xarm_msgsGetAnalogIORequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetAnalogIORequest",
    native_identity: None,
    codec_identity: "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetAnalogIORequestCodec::encode(
  _self : Ros1Xarm_msgsGetAnalogIORequestCodec,
  value : Ros1Xarm_msgsGetAnalogIORequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros1Xarm_msgsGetAnalogIORequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetAnalogIORequestCodec::decode(
  _self : Ros1Xarm_msgsGetAnalogIORequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetAnalogIORequest, Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetAnalogIORequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetAnalogIORequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGetAnalogIORequest,
) -> Unit {
  let part0 = value.port_num
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsGetAnalogIORequest(reader : BoundedReader) -> Ros1Xarm_msgsGetAnalogIORequest {
  let part0 = reader.signed16()
  { port_num: part0 }
}

/// @brief Own every original xarm_msgs/GetAnalogIOResponse field.
/// @details 3 ordered fields, canonical extent 10..266 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGetAnalogIOResponse {
  /// @brief Original xarm_msgs/GetAnalogIOResponse.analog_value field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut analog_value : Float
  /// @brief Original xarm_msgs/GetAnalogIOResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/GetAnalogIOResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetAnalogIOResponse::new() -> Ros1Xarm_msgsGetAnalogIOResponse {
  {
    analog_value: (0U).reinterpret_as_float(),
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsGetAnalogIOResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetAnalogIOResponseCodec::new() -> Ros1Xarm_msgsGetAnalogIOResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetAnalogIOResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835",
    min_wire_bytes: 10, max_wire_bytes: 266 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetAnalogIOResponseCodec::encode(
  _self : Ros1Xarm_msgsGetAnalogIOResponseCodec,
  value : Ros1Xarm_msgsGetAnalogIOResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 266, error: 0 }
  write_Ros1Xarm_msgsGetAnalogIOResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetAnalogIOResponseCodec::decode(
  _self : Ros1Xarm_msgsGetAnalogIOResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetAnalogIOResponse, Int] {
  if input.length() < 10 || input.length() > 266 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetAnalogIOResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetAnalogIOResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGetAnalogIOResponse,
) -> Unit {
  let part0 = value.analog_value
  writer.float32(part0)
  let part1 = value.ret
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.message
  writer.text(part2, 256)
}
fn read_Ros1Xarm_msgsGetAnalogIOResponse(reader : BoundedReader) -> Ros1Xarm_msgsGetAnalogIOResponse {
  let part0 = reader.float32()
  let part1 = reader.signed16()
  let part2 = reader.text(256)
  { analog_value: part0, ret: part1, message: part2 }
}

/// @brief Own every original xarm_msgs/GetControllerDigitalIORequest field.
/// @details 1 ordered fields, canonical extent 2..2 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGetControllerDigitalIORequest {
  /// @brief Original xarm_msgs/GetControllerDigitalIORequest.io_num field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut io_num : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetControllerDigitalIORequest::new() -> Ros1Xarm_msgsGetControllerDigitalIORequest {
  {
    io_num: 0,
  }
}
pub(all) struct Ros1Xarm_msgsGetControllerDigitalIORequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetControllerDigitalIORequestCodec::new() -> Ros1Xarm_msgsGetControllerDigitalIORequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetControllerDigitalIORequest",
    native_identity: None,
    codec_identity: "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetControllerDigitalIORequestCodec::encode(
  _self : Ros1Xarm_msgsGetControllerDigitalIORequestCodec,
  value : Ros1Xarm_msgsGetControllerDigitalIORequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros1Xarm_msgsGetControllerDigitalIORequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetControllerDigitalIORequestCodec::decode(
  _self : Ros1Xarm_msgsGetControllerDigitalIORequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetControllerDigitalIORequest, Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetControllerDigitalIORequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetControllerDigitalIORequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGetControllerDigitalIORequest,
) -> Unit {
  let part0 = value.io_num
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsGetControllerDigitalIORequest(reader : BoundedReader) -> Ros1Xarm_msgsGetControllerDigitalIORequest {
  let part0 = reader.signed16()
  { io_num: part0 }
}

/// @brief Own every original xarm_msgs/GetControllerDigitalIOResponse field.
/// @details 3 ordered fields, canonical extent 8..264 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGetControllerDigitalIOResponse {
  /// @brief Original xarm_msgs/GetControllerDigitalIOResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/GetControllerDigitalIOResponse.value field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut value : Int
  /// @brief Original xarm_msgs/GetControllerDigitalIOResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetControllerDigitalIOResponse::new() -> Ros1Xarm_msgsGetControllerDigitalIOResponse {
  {
    ret: 0,
    value: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsGetControllerDigitalIOResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetControllerDigitalIOResponseCodec::new() -> Ros1Xarm_msgsGetControllerDigitalIOResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetControllerDigitalIOResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161",
    min_wire_bytes: 8, max_wire_bytes: 264 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetControllerDigitalIOResponseCodec::encode(
  _self : Ros1Xarm_msgsGetControllerDigitalIOResponseCodec,
  value : Ros1Xarm_msgsGetControllerDigitalIOResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 264, error: 0 }
  write_Ros1Xarm_msgsGetControllerDigitalIOResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetControllerDigitalIOResponseCodec::decode(
  _self : Ros1Xarm_msgsGetControllerDigitalIOResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetControllerDigitalIOResponse, Int] {
  if input.length() < 8 || input.length() > 264 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetControllerDigitalIOResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetControllerDigitalIOResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGetControllerDigitalIOResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.value
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.message
  writer.text(part2, 256)
}
fn read_Ros1Xarm_msgsGetControllerDigitalIOResponse(reader : BoundedReader) -> Ros1Xarm_msgsGetControllerDigitalIOResponse {
  let part0 = reader.signed16()
  let part1 = reader.signed16()
  let part2 = reader.text(256)
  { ret: part0, value: part1, message: part2 }
}

pub(all) enum Ros1Xarm_msgsGetDigitalIORequest { Ros1Xarm_msgsGetDigitalIORequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetDigitalIORequest::new() -> Ros1Xarm_msgsGetDigitalIORequest { Ros1Xarm_msgsGetDigitalIORequestEmpty }
pub(all) struct Ros1Xarm_msgsGetDigitalIORequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetDigitalIORequestCodec::new() -> Ros1Xarm_msgsGetDigitalIORequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetDigitalIORequest",
    native_identity: None,
    codec_identity: "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetDigitalIORequestCodec::encode(
  _self : Ros1Xarm_msgsGetDigitalIORequestCodec,
  value : Ros1Xarm_msgsGetDigitalIORequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Xarm_msgsGetDigitalIORequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetDigitalIORequestCodec::decode(
  _self : Ros1Xarm_msgsGetDigitalIORequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetDigitalIORequest, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetDigitalIORequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetDigitalIORequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGetDigitalIORequest,
) -> Unit {
}
fn read_Ros1Xarm_msgsGetDigitalIORequest(reader : BoundedReader) -> Ros1Xarm_msgsGetDigitalIORequest {
  Ros1Xarm_msgsGetDigitalIORequestEmpty
}

/// @brief Own every original xarm_msgs/GetDigitalIOResponse field.
/// @details 4 ordered fields, canonical extent 14..270 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGetDigitalIOResponse {
  /// @brief Original xarm_msgs/GetDigitalIOResponse.digital_1 field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut digital_1 : Int
  /// @brief Original xarm_msgs/GetDigitalIOResponse.digital_2 field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut digital_2 : Int
  /// @brief Original xarm_msgs/GetDigitalIOResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/GetDigitalIOResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetDigitalIOResponse::new() -> Ros1Xarm_msgsGetDigitalIOResponse {
  {
    digital_1: 0,
    digital_2: 0,
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsGetDigitalIOResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetDigitalIOResponseCodec::new() -> Ros1Xarm_msgsGetDigitalIOResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetDigitalIOResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498",
    min_wire_bytes: 14, max_wire_bytes: 270 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetDigitalIOResponseCodec::encode(
  _self : Ros1Xarm_msgsGetDigitalIOResponseCodec,
  value : Ros1Xarm_msgsGetDigitalIOResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 270, error: 0 }
  write_Ros1Xarm_msgsGetDigitalIOResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 14 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetDigitalIOResponseCodec::decode(
  _self : Ros1Xarm_msgsGetDigitalIOResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetDigitalIOResponse, Int] {
  if input.length() < 14 || input.length() > 270 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetDigitalIOResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetDigitalIOResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGetDigitalIOResponse,
) -> Unit {
  let part0 = value.digital_1
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.digital_2
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part2 = value.ret
  if part2 < -32768 || part2 > 32767 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part3 = value.message
  writer.text(part3, 256)
}
fn read_Ros1Xarm_msgsGetDigitalIOResponse(reader : BoundedReader) -> Ros1Xarm_msgsGetDigitalIOResponse {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part2 = reader.signed16()
  let part3 = reader.text(256)
  { digital_1: part0, digital_2: part1, ret: part2, message: part3 }
}

pub(all) enum Ros1Xarm_msgsGetErrRequest { Ros1Xarm_msgsGetErrRequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetErrRequest::new() -> Ros1Xarm_msgsGetErrRequest { Ros1Xarm_msgsGetErrRequestEmpty }
pub(all) struct Ros1Xarm_msgsGetErrRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetErrRequestCodec::new() -> Ros1Xarm_msgsGetErrRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetErrRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetErrRequestCodec::encode(
  _self : Ros1Xarm_msgsGetErrRequestCodec,
  value : Ros1Xarm_msgsGetErrRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Xarm_msgsGetErrRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetErrRequestCodec::decode(
  _self : Ros1Xarm_msgsGetErrRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetErrRequest, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetErrRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetErrRequest(writer : BoundedWriter, value : Ros1Xarm_msgsGetErrRequest) -> Unit {
}
fn read_Ros1Xarm_msgsGetErrRequest(reader : BoundedReader) -> Ros1Xarm_msgsGetErrRequest {
  Ros1Xarm_msgsGetErrRequestEmpty
}

/// @brief Own every original xarm_msgs/GetErrResponse field.
/// @details 3 ordered fields, canonical extent 8..264 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGetErrResponse {
  /// @brief Original xarm_msgs/GetErrResponse.err field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut err : Int
  /// @brief Original xarm_msgs/GetErrResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/GetErrResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetErrResponse::new() -> Ros1Xarm_msgsGetErrResponse {
  {
    err: 0,
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsGetErrResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetErrResponseCodec::new() -> Ros1Xarm_msgsGetErrResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetErrResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de",
    min_wire_bytes: 8, max_wire_bytes: 264 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetErrResponseCodec::encode(
  _self : Ros1Xarm_msgsGetErrResponseCodec,
  value : Ros1Xarm_msgsGetErrResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 264, error: 0 }
  write_Ros1Xarm_msgsGetErrResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetErrResponseCodec::decode(
  _self : Ros1Xarm_msgsGetErrResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetErrResponse, Int] {
  if input.length() < 8 || input.length() > 264 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetErrResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetErrResponse(writer : BoundedWriter, value : Ros1Xarm_msgsGetErrResponse) -> Unit {
  let part0 = value.err
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.ret
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.message
  writer.text(part2, 256)
}
fn read_Ros1Xarm_msgsGetErrResponse(reader : BoundedReader) -> Ros1Xarm_msgsGetErrResponse {
  let part0 = reader.signed16()
  let part1 = reader.signed16()
  let part2 = reader.text(256)
  { err: part0, ret: part1, message: part2 }
}

pub(all) enum Ros1Xarm_msgsGetFloat32ListRequest { Ros1Xarm_msgsGetFloat32ListRequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetFloat32ListRequest::new() -> Ros1Xarm_msgsGetFloat32ListRequest { Ros1Xarm_msgsGetFloat32ListRequestEmpty }
pub(all) struct Ros1Xarm_msgsGetFloat32ListRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetFloat32ListRequestCodec::new() -> Ros1Xarm_msgsGetFloat32ListRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetFloat32ListRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetFloat32ListRequestCodec::encode(
  _self : Ros1Xarm_msgsGetFloat32ListRequestCodec,
  value : Ros1Xarm_msgsGetFloat32ListRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Xarm_msgsGetFloat32ListRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetFloat32ListRequestCodec::decode(
  _self : Ros1Xarm_msgsGetFloat32ListRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetFloat32ListRequest, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetFloat32ListRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetFloat32ListRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGetFloat32ListRequest,
) -> Unit {
}
fn read_Ros1Xarm_msgsGetFloat32ListRequest(reader : BoundedReader) -> Ros1Xarm_msgsGetFloat32ListRequest {
  Ros1Xarm_msgsGetFloat32ListRequestEmpty
}

/// @brief Own every original xarm_msgs/GetFloat32ListResponse field.
/// @details 3 ordered fields, canonical extent 10..394 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGetFloat32ListResponse {
  /// @brief Original xarm_msgs/GetFloat32ListResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/GetFloat32ListResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
  /// @brief Original xarm_msgs/GetFloat32ListResponse.datas field.
  /// @details float32 sequence; count/quota 32, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut datas : Array[Float]
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetFloat32ListResponse::new() -> Ros1Xarm_msgsGetFloat32ListResponse {
  {
    ret: 0,
    message: "",
    datas: [],
  }
}
pub(all) struct Ros1Xarm_msgsGetFloat32ListResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetFloat32ListResponseCodec::new() -> Ros1Xarm_msgsGetFloat32ListResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetFloat32ListResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2",
    min_wire_bytes: 10, max_wire_bytes: 394 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetFloat32ListResponseCodec::encode(
  _self : Ros1Xarm_msgsGetFloat32ListResponseCodec,
  value : Ros1Xarm_msgsGetFloat32ListResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 394, error: 0 }
  write_Ros1Xarm_msgsGetFloat32ListResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetFloat32ListResponseCodec::decode(
  _self : Ros1Xarm_msgsGetFloat32ListResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetFloat32ListResponse, Int] {
  if input.length() < 10 || input.length() > 394 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetFloat32ListResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetFloat32ListResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGetFloat32ListResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
  let part2 = value.datas
  let count2 = part2.length()
  if count2 > 32 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float32(element)
  }
}
fn read_Ros1Xarm_msgsGetFloat32ListResponse(reader : BoundedReader) -> Ros1Xarm_msgsGetFloat32ListResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  let part2 : Array[Float] = []
  let count2 = reader.count(32, 4)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float32())
  }
  { ret: part0, message: part1, datas: part2 }
}

pub(all) enum Ros1Xarm_msgsGetInt32Request { Ros1Xarm_msgsGetInt32RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetInt32Request::new() -> Ros1Xarm_msgsGetInt32Request { Ros1Xarm_msgsGetInt32RequestEmpty }
pub(all) struct Ros1Xarm_msgsGetInt32RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetInt32RequestCodec::new() -> Ros1Xarm_msgsGetInt32RequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetInt32Request",
    native_identity: None,
    codec_identity: "UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetInt32RequestCodec::encode(
  _self : Ros1Xarm_msgsGetInt32RequestCodec,
  value : Ros1Xarm_msgsGetInt32Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Xarm_msgsGetInt32Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetInt32RequestCodec::decode(
  _self : Ros1Xarm_msgsGetInt32RequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetInt32Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetInt32Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetInt32Request(writer : BoundedWriter, value : Ros1Xarm_msgsGetInt32Request) -> Unit {
}
fn read_Ros1Xarm_msgsGetInt32Request(reader : BoundedReader) -> Ros1Xarm_msgsGetInt32Request {
  Ros1Xarm_msgsGetInt32RequestEmpty
}

/// @brief Own every original xarm_msgs/GetInt32Response field.
/// @details 3 ordered fields, canonical extent 10..266 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGetInt32Response {
  /// @brief Original xarm_msgs/GetInt32Response.data field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut data : Int
  /// @brief Original xarm_msgs/GetInt32Response.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/GetInt32Response.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetInt32Response::new() -> Ros1Xarm_msgsGetInt32Response {
  {
    data: 0,
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsGetInt32ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetInt32ResponseCodec::new() -> Ros1Xarm_msgsGetInt32ResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetInt32Response",
    native_identity: None,
    codec_identity: "UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d",
    min_wire_bytes: 10, max_wire_bytes: 266 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetInt32ResponseCodec::encode(
  _self : Ros1Xarm_msgsGetInt32ResponseCodec,
  value : Ros1Xarm_msgsGetInt32Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 266, error: 0 }
  write_Ros1Xarm_msgsGetInt32Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetInt32ResponseCodec::decode(
  _self : Ros1Xarm_msgsGetInt32ResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetInt32Response, Int] {
  if input.length() < 10 || input.length() > 266 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetInt32Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetInt32Response(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGetInt32Response,
) -> Unit {
  let part0 = value.data
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.ret
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.message
  writer.text(part2, 256)
}
fn read_Ros1Xarm_msgsGetInt32Response(reader : BoundedReader) -> Ros1Xarm_msgsGetInt32Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.signed16()
  let part2 = reader.text(256)
  { data: part0, ret: part1, message: part2 }
}

/// @brief Own every original xarm_msgs/GetSetModbusDataRequest field.
/// @details 5 ordered fields, canonical extent 9..4105 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGetSetModbusDataRequest {
  /// @brief Original xarm_msgs/GetSetModbusDataRequest.send_data field.
  /// @details uint8 sequence; count/quota 4096, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut send_data : Array[Int]
  /// @brief Original xarm_msgs/GetSetModbusDataRequest.respond_len field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut respond_len : Int
  /// @brief Original xarm_msgs/GetSetModbusDataRequest.host_id field.
  /// @details uint8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut host_id : Int
  /// @brief Original xarm_msgs/GetSetModbusDataRequest.is_transparent_transmission field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut is_transparent_transmission : Bool
  /// @brief Original xarm_msgs/GetSetModbusDataRequest.use_503_port field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut use_503_port : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetSetModbusDataRequest::new() -> Ros1Xarm_msgsGetSetModbusDataRequest {
  {
    send_data: [],
    respond_len: 0,
    host_id: 0,
    is_transparent_transmission: false,
    use_503_port: false,
  }
}
pub(all) struct Ros1Xarm_msgsGetSetModbusDataRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetSetModbusDataRequestCodec::new() -> Ros1Xarm_msgsGetSetModbusDataRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetSetModbusDataRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7",
    min_wire_bytes: 9, max_wire_bytes: 4105 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetSetModbusDataRequestCodec::encode(
  _self : Ros1Xarm_msgsGetSetModbusDataRequestCodec,
  value : Ros1Xarm_msgsGetSetModbusDataRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4105, error: 0 }
  write_Ros1Xarm_msgsGetSetModbusDataRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetSetModbusDataRequestCodec::decode(
  _self : Ros1Xarm_msgsGetSetModbusDataRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetSetModbusDataRequest, Int] {
  if input.length() < 9 || input.length() > 4105 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetSetModbusDataRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetSetModbusDataRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGetSetModbusDataRequest,
) -> Unit {
  let part0 = value.send_data
  let count0 = part0.length()
  if count0 > 4096 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    if element < 0 || element > 255 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 255UL, 1)
  }
  let part1 = value.respond_len
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.host_id
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part3 = value.is_transparent_transmission
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
  let part4 = value.use_503_port
  writer.unsigned(if part4 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Xarm_msgsGetSetModbusDataRequest(reader : BoundedReader) -> Ros1Xarm_msgsGetSetModbusDataRequest {
  let part0 : Array[Int] = []
  let count0 = reader.count(4096, 1)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.unsigned(1).to_int())
  }
  let part1 = reader.signed16()
  let part2 = reader.unsigned(1).to_int()
  let part3 = reader.boolean()
  let part4 = reader.boolean()
  { send_data: part0, respond_len: part1, host_id: part2, is_transparent_transmission: part3, use_503_port: part4 }
}

/// @brief Own every original xarm_msgs/GetSetModbusDataResponse field.
/// @details 3 ordered fields, canonical extent 10..4362 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGetSetModbusDataResponse {
  /// @brief Original xarm_msgs/GetSetModbusDataResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/GetSetModbusDataResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
  /// @brief Original xarm_msgs/GetSetModbusDataResponse.respond_data field.
  /// @details uint8 sequence; count/quota 4096, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut respond_data : Array[Int]
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetSetModbusDataResponse::new() -> Ros1Xarm_msgsGetSetModbusDataResponse {
  {
    ret: 0,
    message: "",
    respond_data: [],
  }
}
pub(all) struct Ros1Xarm_msgsGetSetModbusDataResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGetSetModbusDataResponseCodec::new() -> Ros1Xarm_msgsGetSetModbusDataResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/GetSetModbusDataResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead",
    min_wire_bytes: 10, max_wire_bytes: 4362 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetSetModbusDataResponseCodec::encode(
  _self : Ros1Xarm_msgsGetSetModbusDataResponseCodec,
  value : Ros1Xarm_msgsGetSetModbusDataResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4362, error: 0 }
  write_Ros1Xarm_msgsGetSetModbusDataResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGetSetModbusDataResponseCodec::decode(
  _self : Ros1Xarm_msgsGetSetModbusDataResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGetSetModbusDataResponse, Int] {
  if input.length() < 10 || input.length() > 4362 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGetSetModbusDataResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGetSetModbusDataResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGetSetModbusDataResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
  let part2 = value.respond_data
  let count2 = part2.length()
  if count2 > 4096 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    if element < 0 || element > 255 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 255UL, 1)
  }
}
fn read_Ros1Xarm_msgsGetSetModbusDataResponse(reader : BoundedReader) -> Ros1Xarm_msgsGetSetModbusDataResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  let part2 : Array[Int] = []
  let count2 = reader.count(4096, 1)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.unsigned(1).to_int())
  }
  { ret: part0, message: part1, respond_data: part2 }
}

/// @brief Own every original xarm_msgs/GripperConfigRequest field.
/// @details 1 ordered fields, canonical extent 4..4 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGripperConfigRequest {
  /// @brief Original xarm_msgs/GripperConfigRequest.pulse_vel field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pulse_vel : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperConfigRequest::new() -> Ros1Xarm_msgsGripperConfigRequest {
  {
    pulse_vel: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_msgsGripperConfigRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperConfigRequestCodec::new() -> Ros1Xarm_msgsGripperConfigRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/GripperConfigRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperConfigRequestCodec::encode(
  _self : Ros1Xarm_msgsGripperConfigRequestCodec,
  value : Ros1Xarm_msgsGripperConfigRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros1Xarm_msgsGripperConfigRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperConfigRequestCodec::decode(
  _self : Ros1Xarm_msgsGripperConfigRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGripperConfigRequest, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGripperConfigRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGripperConfigRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGripperConfigRequest,
) -> Unit {
  let part0 = value.pulse_vel
  writer.float32(part0)
}
fn read_Ros1Xarm_msgsGripperConfigRequest(reader : BoundedReader) -> Ros1Xarm_msgsGripperConfigRequest {
  let part0 = reader.float32()
  { pulse_vel: part0 }
}

/// @brief Own every original xarm_msgs/GripperConfigResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGripperConfigResponse {
  /// @brief Original xarm_msgs/GripperConfigResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/GripperConfigResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperConfigResponse::new() -> Ros1Xarm_msgsGripperConfigResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsGripperConfigResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperConfigResponseCodec::new() -> Ros1Xarm_msgsGripperConfigResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/GripperConfigResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperConfigResponseCodec::encode(
  _self : Ros1Xarm_msgsGripperConfigResponseCodec,
  value : Ros1Xarm_msgsGripperConfigResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsGripperConfigResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperConfigResponseCodec::decode(
  _self : Ros1Xarm_msgsGripperConfigResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGripperConfigResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGripperConfigResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGripperConfigResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGripperConfigResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsGripperConfigResponse(reader : BoundedReader) -> Ros1Xarm_msgsGripperConfigResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/GripperMoveRequest field.
/// @details 1 ordered fields, canonical extent 4..4 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGripperMoveRequest {
  /// @brief Original xarm_msgs/GripperMoveRequest.pulse_pos field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pulse_pos : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperMoveRequest::new() -> Ros1Xarm_msgsGripperMoveRequest {
  {
    pulse_pos: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_msgsGripperMoveRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperMoveRequestCodec::new() -> Ros1Xarm_msgsGripperMoveRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/GripperMoveRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperMoveRequestCodec::encode(
  _self : Ros1Xarm_msgsGripperMoveRequestCodec,
  value : Ros1Xarm_msgsGripperMoveRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros1Xarm_msgsGripperMoveRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperMoveRequestCodec::decode(
  _self : Ros1Xarm_msgsGripperMoveRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGripperMoveRequest, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGripperMoveRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGripperMoveRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGripperMoveRequest,
) -> Unit {
  let part0 = value.pulse_pos
  writer.float32(part0)
}
fn read_Ros1Xarm_msgsGripperMoveRequest(reader : BoundedReader) -> Ros1Xarm_msgsGripperMoveRequest {
  let part0 = reader.float32()
  { pulse_pos: part0 }
}

/// @brief Own every original xarm_msgs/GripperMoveResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGripperMoveResponse {
  /// @brief Original xarm_msgs/GripperMoveResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/GripperMoveResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperMoveResponse::new() -> Ros1Xarm_msgsGripperMoveResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsGripperMoveResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperMoveResponseCodec::new() -> Ros1Xarm_msgsGripperMoveResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/GripperMoveResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperMoveResponseCodec::encode(
  _self : Ros1Xarm_msgsGripperMoveResponseCodec,
  value : Ros1Xarm_msgsGripperMoveResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsGripperMoveResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperMoveResponseCodec::decode(
  _self : Ros1Xarm_msgsGripperMoveResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGripperMoveResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGripperMoveResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGripperMoveResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGripperMoveResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsGripperMoveResponse(reader : BoundedReader) -> Ros1Xarm_msgsGripperMoveResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

pub(all) enum Ros1Xarm_msgsGripperStateRequest { Ros1Xarm_msgsGripperStateRequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperStateRequest::new() -> Ros1Xarm_msgsGripperStateRequest { Ros1Xarm_msgsGripperStateRequestEmpty }
pub(all) struct Ros1Xarm_msgsGripperStateRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperStateRequestCodec::new() -> Ros1Xarm_msgsGripperStateRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/GripperStateRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperStateRequestCodec::encode(
  _self : Ros1Xarm_msgsGripperStateRequestCodec,
  value : Ros1Xarm_msgsGripperStateRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Xarm_msgsGripperStateRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperStateRequestCodec::decode(
  _self : Ros1Xarm_msgsGripperStateRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGripperStateRequest, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGripperStateRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGripperStateRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGripperStateRequest,
) -> Unit {
}
fn read_Ros1Xarm_msgsGripperStateRequest(reader : BoundedReader) -> Ros1Xarm_msgsGripperStateRequest {
  Ros1Xarm_msgsGripperStateRequestEmpty
}

/// @brief Own every original xarm_msgs/GripperStateResponse field.
/// @details 4 ordered fields, canonical extent 12..268 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsGripperStateResponse {
  /// @brief Original xarm_msgs/GripperStateResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/GripperStateResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
  /// @brief Original xarm_msgs/GripperStateResponse.curr_pos field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut curr_pos : Float
  /// @brief Original xarm_msgs/GripperStateResponse.err_code field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut err_code : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperStateResponse::new() -> Ros1Xarm_msgsGripperStateResponse {
  {
    ret: 0,
    message: "",
    curr_pos: (0U).reinterpret_as_float(),
    err_code: 0,
  }
}
pub(all) struct Ros1Xarm_msgsGripperStateResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsGripperStateResponseCodec::new() -> Ros1Xarm_msgsGripperStateResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/GripperStateResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6",
    min_wire_bytes: 12, max_wire_bytes: 268 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperStateResponseCodec::encode(
  _self : Ros1Xarm_msgsGripperStateResponseCodec,
  value : Ros1Xarm_msgsGripperStateResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 268, error: 0 }
  write_Ros1Xarm_msgsGripperStateResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsGripperStateResponseCodec::decode(
  _self : Ros1Xarm_msgsGripperStateResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsGripperStateResponse, Int] {
  if input.length() < 12 || input.length() > 268 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsGripperStateResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsGripperStateResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsGripperStateResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
  let part2 = value.curr_pos
  writer.float32(part2)
  let part3 = value.err_code
  if part3 < -32768 || part3 > 32767 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsGripperStateResponse(reader : BoundedReader) -> Ros1Xarm_msgsGripperStateResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  let part2 = reader.float32()
  let part3 = reader.signed16()
  { ret: part0, message: part1, curr_pos: part2, err_code: part3 }
}

/// @brief Own every original xarm_msgs/MoveRequest field.
/// @details 5 ordered fields, canonical extent 20..148 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsMoveRequest {
  /// @brief Original xarm_msgs/MoveRequest.pose field.
  /// @details float32 sequence; count/quota 32, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pose : Array[Float]
  /// @brief Original xarm_msgs/MoveRequest.mvvelo field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut mvvelo : Float
  /// @brief Original xarm_msgs/MoveRequest.mvacc field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut mvacc : Float
  /// @brief Original xarm_msgs/MoveRequest.mvtime field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut mvtime : Float
  /// @brief Original xarm_msgs/MoveRequest.mvradii field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut mvradii : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveRequest::new() -> Ros1Xarm_msgsMoveRequest {
  {
    pose: [],
    mvvelo: (0U).reinterpret_as_float(),
    mvacc: (0U).reinterpret_as_float(),
    mvtime: (0U).reinterpret_as_float(),
    mvradii: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_msgsMoveRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveRequestCodec::new() -> Ros1Xarm_msgsMoveRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/MoveRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced",
    min_wire_bytes: 20, max_wire_bytes: 148 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveRequestCodec::encode(
  _self : Ros1Xarm_msgsMoveRequestCodec,
  value : Ros1Xarm_msgsMoveRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 148, error: 0 }
  write_Ros1Xarm_msgsMoveRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveRequestCodec::decode(
  _self : Ros1Xarm_msgsMoveRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsMoveRequest, Int] {
  if input.length() < 20 || input.length() > 148 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsMoveRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsMoveRequest(writer : BoundedWriter, value : Ros1Xarm_msgsMoveRequest) -> Unit {
  let part0 = value.pose
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float32(element)
  }
  let part1 = value.mvvelo
  writer.float32(part1)
  let part2 = value.mvacc
  writer.float32(part2)
  let part3 = value.mvtime
  writer.float32(part3)
  let part4 = value.mvradii
  writer.float32(part4)
}
fn read_Ros1Xarm_msgsMoveRequest(reader : BoundedReader) -> Ros1Xarm_msgsMoveRequest {
  let part0 : Array[Float] = []
  let count0 = reader.count(32, 4)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float32())
  }
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  { pose: part0, mvvelo: part1, mvacc: part2, mvtime: part3, mvradii: part4 }
}

/// @brief Own every original xarm_msgs/MoveResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsMoveResponse {
  /// @brief Original xarm_msgs/MoveResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/MoveResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveResponse::new() -> Ros1Xarm_msgsMoveResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsMoveResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveResponseCodec::new() -> Ros1Xarm_msgsMoveResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/MoveResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveResponseCodec::encode(
  _self : Ros1Xarm_msgsMoveResponseCodec,
  value : Ros1Xarm_msgsMoveResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsMoveResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveResponseCodec::decode(
  _self : Ros1Xarm_msgsMoveResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsMoveResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsMoveResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsMoveResponse(writer : BoundedWriter, value : Ros1Xarm_msgsMoveResponse) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsMoveResponse(reader : BoundedReader) -> Ros1Xarm_msgsMoveResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/MoveAxisAngleRequest field.
/// @details 6 ordered fields, canonical extent 20..148 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsMoveAxisAngleRequest {
  /// @brief Original xarm_msgs/MoveAxisAngleRequest.pose field.
  /// @details float32 sequence; count/quota 32, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pose : Array[Float]
  /// @brief Original xarm_msgs/MoveAxisAngleRequest.mvvelo field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut mvvelo : Float
  /// @brief Original xarm_msgs/MoveAxisAngleRequest.mvacc field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut mvacc : Float
  /// @brief Original xarm_msgs/MoveAxisAngleRequest.mvtime field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut mvtime : Float
  /// @brief Original xarm_msgs/MoveAxisAngleRequest.coord field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut coord : Int
  /// @brief Original xarm_msgs/MoveAxisAngleRequest.relative field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut relative : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveAxisAngleRequest::new() -> Ros1Xarm_msgsMoveAxisAngleRequest {
  {
    pose: [],
    mvvelo: (0U).reinterpret_as_float(),
    mvacc: (0U).reinterpret_as_float(),
    mvtime: (0U).reinterpret_as_float(),
    coord: 0,
    relative: 0,
  }
}
pub(all) struct Ros1Xarm_msgsMoveAxisAngleRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveAxisAngleRequestCodec::new() -> Ros1Xarm_msgsMoveAxisAngleRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/MoveAxisAngleRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30",
    min_wire_bytes: 20, max_wire_bytes: 148 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveAxisAngleRequestCodec::encode(
  _self : Ros1Xarm_msgsMoveAxisAngleRequestCodec,
  value : Ros1Xarm_msgsMoveAxisAngleRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 148, error: 0 }
  write_Ros1Xarm_msgsMoveAxisAngleRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveAxisAngleRequestCodec::decode(
  _self : Ros1Xarm_msgsMoveAxisAngleRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsMoveAxisAngleRequest, Int] {
  if input.length() < 20 || input.length() > 148 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsMoveAxisAngleRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsMoveAxisAngleRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsMoveAxisAngleRequest,
) -> Unit {
  let part0 = value.pose
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float32(element)
  }
  let part1 = value.mvvelo
  writer.float32(part1)
  let part2 = value.mvacc
  writer.float32(part2)
  let part3 = value.mvtime
  writer.float32(part3)
  let part4 = value.coord
  if part4 < -32768 || part4 > 32767 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part5 = value.relative
  if part5 < -32768 || part5 > 32767 { writer.error = 22 }
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsMoveAxisAngleRequest(reader : BoundedReader) -> Ros1Xarm_msgsMoveAxisAngleRequest {
  let part0 : Array[Float] = []
  let count0 = reader.count(32, 4)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float32())
  }
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.signed16()
  let part5 = reader.signed16()
  { pose: part0, mvvelo: part1, mvacc: part2, mvtime: part3, coord: part4, relative: part5 }
}

/// @brief Own every original xarm_msgs/MoveAxisAngleResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsMoveAxisAngleResponse {
  /// @brief Original xarm_msgs/MoveAxisAngleResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/MoveAxisAngleResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveAxisAngleResponse::new() -> Ros1Xarm_msgsMoveAxisAngleResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsMoveAxisAngleResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveAxisAngleResponseCodec::new() -> Ros1Xarm_msgsMoveAxisAngleResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/MoveAxisAngleResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveAxisAngleResponseCodec::encode(
  _self : Ros1Xarm_msgsMoveAxisAngleResponseCodec,
  value : Ros1Xarm_msgsMoveAxisAngleResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsMoveAxisAngleResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveAxisAngleResponseCodec::decode(
  _self : Ros1Xarm_msgsMoveAxisAngleResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsMoveAxisAngleResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsMoveAxisAngleResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsMoveAxisAngleResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsMoveAxisAngleResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsMoveAxisAngleResponse(reader : BoundedReader) -> Ros1Xarm_msgsMoveAxisAngleResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/MoveVeloRequest field.
/// @details 3 ordered fields, canonical extent 8..136 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsMoveVeloRequest {
  /// @brief Original xarm_msgs/MoveVeloRequest.velocities field.
  /// @details float32 sequence; count/quota 32, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut velocities : Array[Float]
  /// @brief Original xarm_msgs/MoveVeloRequest.jnt_sync field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut jnt_sync : Int
  /// @brief Original xarm_msgs/MoveVeloRequest.coord field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut coord : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveVeloRequest::new() -> Ros1Xarm_msgsMoveVeloRequest {
  {
    velocities: [],
    jnt_sync: 0,
    coord: 0,
  }
}
pub(all) struct Ros1Xarm_msgsMoveVeloRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveVeloRequestCodec::new() -> Ros1Xarm_msgsMoveVeloRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/MoveVeloRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveVeloRequestCodec::encode(
  _self : Ros1Xarm_msgsMoveVeloRequestCodec,
  value : Ros1Xarm_msgsMoveVeloRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros1Xarm_msgsMoveVeloRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveVeloRequestCodec::decode(
  _self : Ros1Xarm_msgsMoveVeloRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsMoveVeloRequest, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsMoveVeloRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsMoveVeloRequest(writer : BoundedWriter, value : Ros1Xarm_msgsMoveVeloRequest) -> Unit {
  let part0 = value.velocities
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float32(element)
  }
  let part1 = value.jnt_sync
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.coord
  if part2 < -32768 || part2 > 32767 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsMoveVeloRequest(reader : BoundedReader) -> Ros1Xarm_msgsMoveVeloRequest {
  let part0 : Array[Float] = []
  let count0 = reader.count(32, 4)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float32())
  }
  let part1 = reader.signed16()
  let part2 = reader.signed16()
  { velocities: part0, jnt_sync: part1, coord: part2 }
}

/// @brief Own every original xarm_msgs/MoveVeloResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsMoveVeloResponse {
  /// @brief Original xarm_msgs/MoveVeloResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/MoveVeloResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveVeloResponse::new() -> Ros1Xarm_msgsMoveVeloResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsMoveVeloResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveVeloResponseCodec::new() -> Ros1Xarm_msgsMoveVeloResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/MoveVeloResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveVeloResponseCodec::encode(
  _self : Ros1Xarm_msgsMoveVeloResponseCodec,
  value : Ros1Xarm_msgsMoveVeloResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsMoveVeloResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveVeloResponseCodec::decode(
  _self : Ros1Xarm_msgsMoveVeloResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsMoveVeloResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsMoveVeloResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsMoveVeloResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsMoveVeloResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsMoveVeloResponse(reader : BoundedReader) -> Ros1Xarm_msgsMoveVeloResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/MoveVelocityRequest field.
/// @details 4 ordered fields, canonical extent 10..138 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsMoveVelocityRequest {
  /// @brief Original xarm_msgs/MoveVelocityRequest.speeds field.
  /// @details float32 sequence; count/quota 32, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speeds : Array[Float]
  /// @brief Original xarm_msgs/MoveVelocityRequest.is_sync field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut is_sync : Bool
  /// @brief Original xarm_msgs/MoveVelocityRequest.is_tool_coord field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut is_tool_coord : Bool
  /// @brief Original xarm_msgs/MoveVelocityRequest.duration field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut duration : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveVelocityRequest::new() -> Ros1Xarm_msgsMoveVelocityRequest {
  {
    speeds: [],
    is_sync: false,
    is_tool_coord: false,
    duration: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_msgsMoveVelocityRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveVelocityRequestCodec::new() -> Ros1Xarm_msgsMoveVelocityRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/MoveVelocityRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef",
    min_wire_bytes: 10, max_wire_bytes: 138 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveVelocityRequestCodec::encode(
  _self : Ros1Xarm_msgsMoveVelocityRequestCodec,
  value : Ros1Xarm_msgsMoveVelocityRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 138, error: 0 }
  write_Ros1Xarm_msgsMoveVelocityRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveVelocityRequestCodec::decode(
  _self : Ros1Xarm_msgsMoveVelocityRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsMoveVelocityRequest, Int] {
  if input.length() < 10 || input.length() > 138 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsMoveVelocityRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsMoveVelocityRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsMoveVelocityRequest,
) -> Unit {
  let part0 = value.speeds
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float32(element)
  }
  let part1 = value.is_sync
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.is_tool_coord
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.duration
  writer.float32(part3)
}
fn read_Ros1Xarm_msgsMoveVelocityRequest(reader : BoundedReader) -> Ros1Xarm_msgsMoveVelocityRequest {
  let part0 : Array[Float] = []
  let count0 = reader.count(32, 4)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float32())
  }
  let part1 = reader.boolean()
  let part2 = reader.boolean()
  let part3 = reader.float32()
  { speeds: part0, is_sync: part1, is_tool_coord: part2, duration: part3 }
}

/// @brief Own every original xarm_msgs/MoveVelocityResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsMoveVelocityResponse {
  /// @brief Original xarm_msgs/MoveVelocityResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/MoveVelocityResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveVelocityResponse::new() -> Ros1Xarm_msgsMoveVelocityResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsMoveVelocityResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsMoveVelocityResponseCodec::new() -> Ros1Xarm_msgsMoveVelocityResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/MoveVelocityResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveVelocityResponseCodec::encode(
  _self : Ros1Xarm_msgsMoveVelocityResponseCodec,
  value : Ros1Xarm_msgsMoveVelocityResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsMoveVelocityResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsMoveVelocityResponseCodec::decode(
  _self : Ros1Xarm_msgsMoveVelocityResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsMoveVelocityResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsMoveVelocityResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsMoveVelocityResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsMoveVelocityResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsMoveVelocityResponse(reader : BoundedReader) -> Ros1Xarm_msgsMoveVelocityResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/PlayTrajRequest field.
/// @details 3 ordered fields, canonical extent 8..264 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsPlayTrajRequest {
  /// @brief Original xarm_msgs/PlayTrajRequest.traj_file field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut traj_file : String
  /// @brief Original xarm_msgs/PlayTrajRequest.repeat_times field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut repeat_times : Int
  /// @brief Original xarm_msgs/PlayTrajRequest.speed_factor field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed_factor : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsPlayTrajRequest::new() -> Ros1Xarm_msgsPlayTrajRequest {
  {
    traj_file: "",
    repeat_times: 0,
    speed_factor: 0,
  }
}
pub(all) struct Ros1Xarm_msgsPlayTrajRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsPlayTrajRequestCodec::new() -> Ros1Xarm_msgsPlayTrajRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/PlayTrajRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5",
    min_wire_bytes: 8, max_wire_bytes: 264 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsPlayTrajRequestCodec::encode(
  _self : Ros1Xarm_msgsPlayTrajRequestCodec,
  value : Ros1Xarm_msgsPlayTrajRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 264, error: 0 }
  write_Ros1Xarm_msgsPlayTrajRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsPlayTrajRequestCodec::decode(
  _self : Ros1Xarm_msgsPlayTrajRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsPlayTrajRequest, Int] {
  if input.length() < 8 || input.length() > 264 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsPlayTrajRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsPlayTrajRequest(writer : BoundedWriter, value : Ros1Xarm_msgsPlayTrajRequest) -> Unit {
  let part0 = value.traj_file
  writer.text(part0, 256)
  let part1 = value.repeat_times
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.speed_factor
  if part2 < -32768 || part2 > 32767 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsPlayTrajRequest(reader : BoundedReader) -> Ros1Xarm_msgsPlayTrajRequest {
  let part0 = reader.text(256)
  let part1 = reader.signed16()
  let part2 = reader.signed16()
  { traj_file: part0, repeat_times: part1, speed_factor: part2 }
}

/// @brief Own every original xarm_msgs/PlayTrajResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsPlayTrajResponse {
  /// @brief Original xarm_msgs/PlayTrajResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/PlayTrajResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsPlayTrajResponse::new() -> Ros1Xarm_msgsPlayTrajResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsPlayTrajResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsPlayTrajResponseCodec::new() -> Ros1Xarm_msgsPlayTrajResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/PlayTrajResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsPlayTrajResponseCodec::encode(
  _self : Ros1Xarm_msgsPlayTrajResponseCodec,
  value : Ros1Xarm_msgsPlayTrajResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsPlayTrajResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsPlayTrajResponseCodec::decode(
  _self : Ros1Xarm_msgsPlayTrajResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsPlayTrajResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsPlayTrajResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsPlayTrajResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsPlayTrajResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsPlayTrajResponse(reader : BoundedReader) -> Ros1Xarm_msgsPlayTrajResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/SetAxisRequest field.
/// @details 2 ordered fields, canonical extent 4..4 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetAxisRequest {
  /// @brief Original xarm_msgs/SetAxisRequest.id field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut id : Int
  /// @brief Original xarm_msgs/SetAxisRequest.data field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut data : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetAxisRequest::new() -> Ros1Xarm_msgsSetAxisRequest {
  {
    id: 0,
    data: 0,
  }
}
pub(all) struct Ros1Xarm_msgsSetAxisRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetAxisRequestCodec::new() -> Ros1Xarm_msgsSetAxisRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetAxisRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetAxisRequestCodec::encode(
  _self : Ros1Xarm_msgsSetAxisRequestCodec,
  value : Ros1Xarm_msgsSetAxisRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros1Xarm_msgsSetAxisRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetAxisRequestCodec::decode(
  _self : Ros1Xarm_msgsSetAxisRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetAxisRequest, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetAxisRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetAxisRequest(writer : BoundedWriter, value : Ros1Xarm_msgsSetAxisRequest) -> Unit {
  let part0 = value.id
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.data
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsSetAxisRequest(reader : BoundedReader) -> Ros1Xarm_msgsSetAxisRequest {
  let part0 = reader.signed16()
  let part1 = reader.signed16()
  { id: part0, data: part1 }
}

/// @brief Own every original xarm_msgs/SetAxisResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetAxisResponse {
  /// @brief Original xarm_msgs/SetAxisResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/SetAxisResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetAxisResponse::new() -> Ros1Xarm_msgsSetAxisResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsSetAxisResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetAxisResponseCodec::new() -> Ros1Xarm_msgsSetAxisResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetAxisResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetAxisResponseCodec::encode(
  _self : Ros1Xarm_msgsSetAxisResponseCodec,
  value : Ros1Xarm_msgsSetAxisResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsSetAxisResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetAxisResponseCodec::decode(
  _self : Ros1Xarm_msgsSetAxisResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetAxisResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetAxisResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetAxisResponse(writer : BoundedWriter, value : Ros1Xarm_msgsSetAxisResponse) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsSetAxisResponse(reader : BoundedReader) -> Ros1Xarm_msgsSetAxisResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/SetControllerAnalogIORequest field.
/// @details 2 ordered fields, canonical extent 6..6 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetControllerAnalogIORequest {
  /// @brief Original xarm_msgs/SetControllerAnalogIORequest.port_num field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut port_num : Int
  /// @brief Original xarm_msgs/SetControllerAnalogIORequest.analog_value field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut analog_value : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetControllerAnalogIORequest::new() -> Ros1Xarm_msgsSetControllerAnalogIORequest {
  {
    port_num: 0,
    analog_value: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_msgsSetControllerAnalogIORequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetControllerAnalogIORequestCodec::new() -> Ros1Xarm_msgsSetControllerAnalogIORequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetControllerAnalogIORequest",
    native_identity: None,
    codec_identity: "UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66",
    min_wire_bytes: 6, max_wire_bytes: 6 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetControllerAnalogIORequestCodec::encode(
  _self : Ros1Xarm_msgsSetControllerAnalogIORequestCodec,
  value : Ros1Xarm_msgsSetControllerAnalogIORequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 6, error: 0 }
  write_Ros1Xarm_msgsSetControllerAnalogIORequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetControllerAnalogIORequestCodec::decode(
  _self : Ros1Xarm_msgsSetControllerAnalogIORequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetControllerAnalogIORequest, Int] {
  if input.length() < 6 || input.length() > 6 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetControllerAnalogIORequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetControllerAnalogIORequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetControllerAnalogIORequest,
) -> Unit {
  let part0 = value.port_num
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.analog_value
  writer.float32(part1)
}
fn read_Ros1Xarm_msgsSetControllerAnalogIORequest(reader : BoundedReader) -> Ros1Xarm_msgsSetControllerAnalogIORequest {
  let part0 = reader.signed16()
  let part1 = reader.float32()
  { port_num: part0, analog_value: part1 }
}

/// @brief Own every original xarm_msgs/SetControllerAnalogIOResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetControllerAnalogIOResponse {
  /// @brief Original xarm_msgs/SetControllerAnalogIOResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/SetControllerAnalogIOResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetControllerAnalogIOResponse::new() -> Ros1Xarm_msgsSetControllerAnalogIOResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsSetControllerAnalogIOResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetControllerAnalogIOResponseCodec::new() -> Ros1Xarm_msgsSetControllerAnalogIOResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetControllerAnalogIOResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetControllerAnalogIOResponseCodec::encode(
  _self : Ros1Xarm_msgsSetControllerAnalogIOResponseCodec,
  value : Ros1Xarm_msgsSetControllerAnalogIOResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsSetControllerAnalogIOResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetControllerAnalogIOResponseCodec::decode(
  _self : Ros1Xarm_msgsSetControllerAnalogIOResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetControllerAnalogIOResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetControllerAnalogIOResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetControllerAnalogIOResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetControllerAnalogIOResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsSetControllerAnalogIOResponse(reader : BoundedReader) -> Ros1Xarm_msgsSetControllerAnalogIOResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/SetDigitalIORequest field.
/// @details 2 ordered fields, canonical extent 4..4 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetDigitalIORequest {
  /// @brief Original xarm_msgs/SetDigitalIORequest.io_num field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut io_num : Int
  /// @brief Original xarm_msgs/SetDigitalIORequest.value field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut value : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetDigitalIORequest::new() -> Ros1Xarm_msgsSetDigitalIORequest {
  {
    io_num: 0,
    value: 0,
  }
}
pub(all) struct Ros1Xarm_msgsSetDigitalIORequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetDigitalIORequestCodec::new() -> Ros1Xarm_msgsSetDigitalIORequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetDigitalIORequest",
    native_identity: None,
    codec_identity: "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetDigitalIORequestCodec::encode(
  _self : Ros1Xarm_msgsSetDigitalIORequestCodec,
  value : Ros1Xarm_msgsSetDigitalIORequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros1Xarm_msgsSetDigitalIORequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetDigitalIORequestCodec::decode(
  _self : Ros1Xarm_msgsSetDigitalIORequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetDigitalIORequest, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetDigitalIORequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetDigitalIORequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetDigitalIORequest,
) -> Unit {
  let part0 = value.io_num
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.value
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsSetDigitalIORequest(reader : BoundedReader) -> Ros1Xarm_msgsSetDigitalIORequest {
  let part0 = reader.signed16()
  let part1 = reader.signed16()
  { io_num: part0, value: part1 }
}

/// @brief Own every original xarm_msgs/SetDigitalIOResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetDigitalIOResponse {
  /// @brief Original xarm_msgs/SetDigitalIOResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/SetDigitalIOResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetDigitalIOResponse::new() -> Ros1Xarm_msgsSetDigitalIOResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsSetDigitalIOResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetDigitalIOResponseCodec::new() -> Ros1Xarm_msgsSetDigitalIOResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetDigitalIOResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetDigitalIOResponseCodec::encode(
  _self : Ros1Xarm_msgsSetDigitalIOResponseCodec,
  value : Ros1Xarm_msgsSetDigitalIOResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsSetDigitalIOResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetDigitalIOResponseCodec::decode(
  _self : Ros1Xarm_msgsSetDigitalIOResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetDigitalIOResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetDigitalIOResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetDigitalIOResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetDigitalIOResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsSetDigitalIOResponse(reader : BoundedReader) -> Ros1Xarm_msgsSetDigitalIOResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/SetFloat32Request field.
/// @details 1 ordered fields, canonical extent 4..4 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetFloat32Request {
  /// @brief Original xarm_msgs/SetFloat32Request.data field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut data : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetFloat32Request::new() -> Ros1Xarm_msgsSetFloat32Request {
  {
    data: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_msgsSetFloat32RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetFloat32RequestCodec::new() -> Ros1Xarm_msgsSetFloat32RequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetFloat32Request",
    native_identity: None,
    codec_identity: "UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetFloat32RequestCodec::encode(
  _self : Ros1Xarm_msgsSetFloat32RequestCodec,
  value : Ros1Xarm_msgsSetFloat32Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros1Xarm_msgsSetFloat32Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetFloat32RequestCodec::decode(
  _self : Ros1Xarm_msgsSetFloat32RequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetFloat32Request, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetFloat32Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetFloat32Request(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetFloat32Request,
) -> Unit {
  let part0 = value.data
  writer.float32(part0)
}
fn read_Ros1Xarm_msgsSetFloat32Request(reader : BoundedReader) -> Ros1Xarm_msgsSetFloat32Request {
  let part0 = reader.float32()
  { data: part0 }
}

/// @brief Own every original xarm_msgs/SetFloat32Response field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetFloat32Response {
  /// @brief Original xarm_msgs/SetFloat32Response.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/SetFloat32Response.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetFloat32Response::new() -> Ros1Xarm_msgsSetFloat32Response {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsSetFloat32ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetFloat32ResponseCodec::new() -> Ros1Xarm_msgsSetFloat32ResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetFloat32Response",
    native_identity: None,
    codec_identity: "UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetFloat32ResponseCodec::encode(
  _self : Ros1Xarm_msgsSetFloat32ResponseCodec,
  value : Ros1Xarm_msgsSetFloat32Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsSetFloat32Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetFloat32ResponseCodec::decode(
  _self : Ros1Xarm_msgsSetFloat32ResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetFloat32Response, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetFloat32Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetFloat32Response(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetFloat32Response,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsSetFloat32Response(reader : BoundedReader) -> Ros1Xarm_msgsSetFloat32Response {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/SetInt16Request field.
/// @details 1 ordered fields, canonical extent 2..2 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetInt16Request {
  /// @brief Original xarm_msgs/SetInt16Request.data field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut data : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetInt16Request::new() -> Ros1Xarm_msgsSetInt16Request {
  {
    data: 0,
  }
}
pub(all) struct Ros1Xarm_msgsSetInt16RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetInt16RequestCodec::new() -> Ros1Xarm_msgsSetInt16RequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetInt16Request",
    native_identity: None,
    codec_identity: "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetInt16RequestCodec::encode(
  _self : Ros1Xarm_msgsSetInt16RequestCodec,
  value : Ros1Xarm_msgsSetInt16Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros1Xarm_msgsSetInt16Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetInt16RequestCodec::decode(
  _self : Ros1Xarm_msgsSetInt16RequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetInt16Request, Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetInt16Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetInt16Request(writer : BoundedWriter, value : Ros1Xarm_msgsSetInt16Request) -> Unit {
  let part0 = value.data
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsSetInt16Request(reader : BoundedReader) -> Ros1Xarm_msgsSetInt16Request {
  let part0 = reader.signed16()
  { data: part0 }
}

/// @brief Own every original xarm_msgs/SetInt16Response field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetInt16Response {
  /// @brief Original xarm_msgs/SetInt16Response.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/SetInt16Response.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetInt16Response::new() -> Ros1Xarm_msgsSetInt16Response {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsSetInt16ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetInt16ResponseCodec::new() -> Ros1Xarm_msgsSetInt16ResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetInt16Response",
    native_identity: None,
    codec_identity: "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetInt16ResponseCodec::encode(
  _self : Ros1Xarm_msgsSetInt16ResponseCodec,
  value : Ros1Xarm_msgsSetInt16Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsSetInt16Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetInt16ResponseCodec::decode(
  _self : Ros1Xarm_msgsSetInt16ResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetInt16Response, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetInt16Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetInt16Response(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetInt16Response,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsSetInt16Response(reader : BoundedReader) -> Ros1Xarm_msgsSetInt16Response {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/SetLoadRequest field.
/// @details 4 ordered fields, canonical extent 16..16 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetLoadRequest {
  /// @brief Original xarm_msgs/SetLoadRequest.mass field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut mass : Float
  /// @brief Original xarm_msgs/SetLoadRequest.xc field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut xc : Float
  /// @brief Original xarm_msgs/SetLoadRequest.yc field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut yc : Float
  /// @brief Original xarm_msgs/SetLoadRequest.zc field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut zc : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetLoadRequest::new() -> Ros1Xarm_msgsSetLoadRequest {
  {
    mass: (0U).reinterpret_as_float(),
    xc: (0U).reinterpret_as_float(),
    yc: (0U).reinterpret_as_float(),
    zc: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_msgsSetLoadRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetLoadRequestCodec::new() -> Ros1Xarm_msgsSetLoadRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetLoadRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetLoadRequestCodec::encode(
  _self : Ros1Xarm_msgsSetLoadRequestCodec,
  value : Ros1Xarm_msgsSetLoadRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros1Xarm_msgsSetLoadRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetLoadRequestCodec::decode(
  _self : Ros1Xarm_msgsSetLoadRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetLoadRequest, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetLoadRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetLoadRequest(writer : BoundedWriter, value : Ros1Xarm_msgsSetLoadRequest) -> Unit {
  let part0 = value.mass
  writer.float32(part0)
  let part1 = value.xc
  writer.float32(part1)
  let part2 = value.yc
  writer.float32(part2)
  let part3 = value.zc
  writer.float32(part3)
}
fn read_Ros1Xarm_msgsSetLoadRequest(reader : BoundedReader) -> Ros1Xarm_msgsSetLoadRequest {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { mass: part0, xc: part1, yc: part2, zc: part3 }
}

/// @brief Own every original xarm_msgs/SetLoadResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetLoadResponse {
  /// @brief Original xarm_msgs/SetLoadResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/SetLoadResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetLoadResponse::new() -> Ros1Xarm_msgsSetLoadResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsSetLoadResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetLoadResponseCodec::new() -> Ros1Xarm_msgsSetLoadResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetLoadResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetLoadResponseCodec::encode(
  _self : Ros1Xarm_msgsSetLoadResponseCodec,
  value : Ros1Xarm_msgsSetLoadResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsSetLoadResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetLoadResponseCodec::decode(
  _self : Ros1Xarm_msgsSetLoadResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetLoadResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetLoadResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetLoadResponse(writer : BoundedWriter, value : Ros1Xarm_msgsSetLoadResponse) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsSetLoadResponse(reader : BoundedReader) -> Ros1Xarm_msgsSetLoadResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/SetModbusTimeoutRequest field.
/// @details 2 ordered fields, canonical extent 5..5 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetModbusTimeoutRequest {
  /// @brief Original xarm_msgs/SetModbusTimeoutRequest.timeout_ms field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut timeout_ms : Int
  /// @brief Original xarm_msgs/SetModbusTimeoutRequest.is_transparent_transmission field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut is_transparent_transmission : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetModbusTimeoutRequest::new() -> Ros1Xarm_msgsSetModbusTimeoutRequest {
  {
    timeout_ms: 0,
    is_transparent_transmission: false,
  }
}
pub(all) struct Ros1Xarm_msgsSetModbusTimeoutRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetModbusTimeoutRequestCodec::new() -> Ros1Xarm_msgsSetModbusTimeoutRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetModbusTimeoutRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd",
    min_wire_bytes: 5, max_wire_bytes: 5 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetModbusTimeoutRequestCodec::encode(
  _self : Ros1Xarm_msgsSetModbusTimeoutRequestCodec,
  value : Ros1Xarm_msgsSetModbusTimeoutRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 5, error: 0 }
  write_Ros1Xarm_msgsSetModbusTimeoutRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetModbusTimeoutRequestCodec::decode(
  _self : Ros1Xarm_msgsSetModbusTimeoutRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetModbusTimeoutRequest, Int] {
  if input.length() < 5 || input.length() > 5 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetModbusTimeoutRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetModbusTimeoutRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetModbusTimeoutRequest,
) -> Unit {
  let part0 = value.timeout_ms
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.is_transparent_transmission
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Xarm_msgsSetModbusTimeoutRequest(reader : BoundedReader) -> Ros1Xarm_msgsSetModbusTimeoutRequest {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.boolean()
  { timeout_ms: part0, is_transparent_transmission: part1 }
}

/// @brief Own every original xarm_msgs/SetModbusTimeoutResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetModbusTimeoutResponse {
  /// @brief Original xarm_msgs/SetModbusTimeoutResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
  /// @brief Original xarm_msgs/SetModbusTimeoutResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetModbusTimeoutResponse::new() -> Ros1Xarm_msgsSetModbusTimeoutResponse {
  {
    message: "",
    ret: 0,
  }
}
pub(all) struct Ros1Xarm_msgsSetModbusTimeoutResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetModbusTimeoutResponseCodec::new() -> Ros1Xarm_msgsSetModbusTimeoutResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetModbusTimeoutResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetModbusTimeoutResponseCodec::encode(
  _self : Ros1Xarm_msgsSetModbusTimeoutResponseCodec,
  value : Ros1Xarm_msgsSetModbusTimeoutResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsSetModbusTimeoutResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetModbusTimeoutResponseCodec::decode(
  _self : Ros1Xarm_msgsSetModbusTimeoutResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetModbusTimeoutResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetModbusTimeoutResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetModbusTimeoutResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetModbusTimeoutResponse,
) -> Unit {
  let part0 = value.message
  writer.text(part0, 256)
  let part1 = value.ret
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsSetModbusTimeoutResponse(reader : BoundedReader) -> Ros1Xarm_msgsSetModbusTimeoutResponse {
  let part0 = reader.text(256)
  let part1 = reader.signed16()
  { message: part0, ret: part1 }
}

/// @brief Own every original xarm_msgs/SetMultipleIntsRequest field.
/// @details 1 ordered fields, canonical extent 4..68 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetMultipleIntsRequest {
  /// @brief Original xarm_msgs/SetMultipleIntsRequest.data_int field.
  /// @details int16 sequence; count/quota 32, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut data_int : Array[Int]
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetMultipleIntsRequest::new() -> Ros1Xarm_msgsSetMultipleIntsRequest {
  {
    data_int: [],
  }
}
pub(all) struct Ros1Xarm_msgsSetMultipleIntsRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetMultipleIntsRequestCodec::new() -> Ros1Xarm_msgsSetMultipleIntsRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetMultipleIntsRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1",
    min_wire_bytes: 4, max_wire_bytes: 68 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetMultipleIntsRequestCodec::encode(
  _self : Ros1Xarm_msgsSetMultipleIntsRequestCodec,
  value : Ros1Xarm_msgsSetMultipleIntsRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 68, error: 0 }
  write_Ros1Xarm_msgsSetMultipleIntsRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetMultipleIntsRequestCodec::decode(
  _self : Ros1Xarm_msgsSetMultipleIntsRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetMultipleIntsRequest, Int] {
  if input.length() < 4 || input.length() > 68 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetMultipleIntsRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetMultipleIntsRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetMultipleIntsRequest,
) -> Unit {
  let part0 = value.data_int
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    if element < -32768 || element > 32767 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  }
}
fn read_Ros1Xarm_msgsSetMultipleIntsRequest(reader : BoundedReader) -> Ros1Xarm_msgsSetMultipleIntsRequest {
  let part0 : Array[Int] = []
  let count0 = reader.count(32, 2)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.signed16())
  }
  { data_int: part0 }
}

/// @brief Own every original xarm_msgs/SetMultipleIntsResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetMultipleIntsResponse {
  /// @brief Original xarm_msgs/SetMultipleIntsResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/SetMultipleIntsResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetMultipleIntsResponse::new() -> Ros1Xarm_msgsSetMultipleIntsResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsSetMultipleIntsResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetMultipleIntsResponseCodec::new() -> Ros1Xarm_msgsSetMultipleIntsResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetMultipleIntsResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetMultipleIntsResponseCodec::encode(
  _self : Ros1Xarm_msgsSetMultipleIntsResponseCodec,
  value : Ros1Xarm_msgsSetMultipleIntsResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsSetMultipleIntsResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetMultipleIntsResponseCodec::decode(
  _self : Ros1Xarm_msgsSetMultipleIntsResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetMultipleIntsResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetMultipleIntsResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetMultipleIntsResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetMultipleIntsResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsSetMultipleIntsResponse(reader : BoundedReader) -> Ros1Xarm_msgsSetMultipleIntsResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/SetStringRequest field.
/// @details 2 ordered fields, canonical extent 8..264 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetStringRequest {
  /// @brief Original xarm_msgs/SetStringRequest.str_data field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut str_data : String
  /// @brief Original xarm_msgs/SetStringRequest.timeout field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut timeout : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetStringRequest::new() -> Ros1Xarm_msgsSetStringRequest {
  {
    str_data: "",
    timeout: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_msgsSetStringRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetStringRequestCodec::new() -> Ros1Xarm_msgsSetStringRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetStringRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f",
    min_wire_bytes: 8, max_wire_bytes: 264 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetStringRequestCodec::encode(
  _self : Ros1Xarm_msgsSetStringRequestCodec,
  value : Ros1Xarm_msgsSetStringRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 264, error: 0 }
  write_Ros1Xarm_msgsSetStringRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetStringRequestCodec::decode(
  _self : Ros1Xarm_msgsSetStringRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetStringRequest, Int] {
  if input.length() < 8 || input.length() > 264 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetStringRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetStringRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetStringRequest,
) -> Unit {
  let part0 = value.str_data
  writer.text(part0, 256)
  let part1 = value.timeout
  writer.float32(part1)
}
fn read_Ros1Xarm_msgsSetStringRequest(reader : BoundedReader) -> Ros1Xarm_msgsSetStringRequest {
  let part0 = reader.text(256)
  let part1 = reader.float32()
  { str_data: part0, timeout: part1 }
}

/// @brief Own every original xarm_msgs/SetStringResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetStringResponse {
  /// @brief Original xarm_msgs/SetStringResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/SetStringResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetStringResponse::new() -> Ros1Xarm_msgsSetStringResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsSetStringResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetStringResponseCodec::new() -> Ros1Xarm_msgsSetStringResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetStringResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetStringResponseCodec::encode(
  _self : Ros1Xarm_msgsSetStringResponseCodec,
  value : Ros1Xarm_msgsSetStringResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsSetStringResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetStringResponseCodec::decode(
  _self : Ros1Xarm_msgsSetStringResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetStringResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetStringResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetStringResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetStringResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsSetStringResponse(reader : BoundedReader) -> Ros1Xarm_msgsSetStringResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/SetToolModbusRequest field.
/// @details 2 ordered fields, canonical extent 6..4102 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetToolModbusRequest {
  /// @brief Original xarm_msgs/SetToolModbusRequest.send_data field.
  /// @details uint8 sequence; count/quota 4096, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut send_data : Array[Int]
  /// @brief Original xarm_msgs/SetToolModbusRequest.respond_len field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut respond_len : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetToolModbusRequest::new() -> Ros1Xarm_msgsSetToolModbusRequest {
  {
    send_data: [],
    respond_len: 0,
  }
}
pub(all) struct Ros1Xarm_msgsSetToolModbusRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetToolModbusRequestCodec::new() -> Ros1Xarm_msgsSetToolModbusRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetToolModbusRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6",
    min_wire_bytes: 6, max_wire_bytes: 4102 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetToolModbusRequestCodec::encode(
  _self : Ros1Xarm_msgsSetToolModbusRequestCodec,
  value : Ros1Xarm_msgsSetToolModbusRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4102, error: 0 }
  write_Ros1Xarm_msgsSetToolModbusRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetToolModbusRequestCodec::decode(
  _self : Ros1Xarm_msgsSetToolModbusRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetToolModbusRequest, Int] {
  if input.length() < 6 || input.length() > 4102 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetToolModbusRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetToolModbusRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetToolModbusRequest,
) -> Unit {
  let part0 = value.send_data
  let count0 = part0.length()
  if count0 > 4096 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    if element < 0 || element > 255 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 255UL, 1)
  }
  let part1 = value.respond_len
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsSetToolModbusRequest(reader : BoundedReader) -> Ros1Xarm_msgsSetToolModbusRequest {
  let part0 : Array[Int] = []
  let count0 = reader.count(4096, 1)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.unsigned(1).to_int())
  }
  let part1 = reader.signed16()
  { send_data: part0, respond_len: part1 }
}

/// @brief Own every original xarm_msgs/SetToolModbusResponse field.
/// @details 3 ordered fields, canonical extent 10..4362 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsSetToolModbusResponse {
  /// @brief Original xarm_msgs/SetToolModbusResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/SetToolModbusResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
  /// @brief Original xarm_msgs/SetToolModbusResponse.respond_data field.
  /// @details uint8 sequence; count/quota 4096, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut respond_data : Array[Int]
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetToolModbusResponse::new() -> Ros1Xarm_msgsSetToolModbusResponse {
  {
    ret: 0,
    message: "",
    respond_data: [],
  }
}
pub(all) struct Ros1Xarm_msgsSetToolModbusResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsSetToolModbusResponseCodec::new() -> Ros1Xarm_msgsSetToolModbusResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/SetToolModbusResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76",
    min_wire_bytes: 10, max_wire_bytes: 4362 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetToolModbusResponseCodec::encode(
  _self : Ros1Xarm_msgsSetToolModbusResponseCodec,
  value : Ros1Xarm_msgsSetToolModbusResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4362, error: 0 }
  write_Ros1Xarm_msgsSetToolModbusResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsSetToolModbusResponseCodec::decode(
  _self : Ros1Xarm_msgsSetToolModbusResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsSetToolModbusResponse, Int] {
  if input.length() < 10 || input.length() > 4362 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsSetToolModbusResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsSetToolModbusResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsSetToolModbusResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
  let part2 = value.respond_data
  let count2 = part2.length()
  if count2 > 4096 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    if element < 0 || element > 255 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 255UL, 1)
  }
}
fn read_Ros1Xarm_msgsSetToolModbusResponse(reader : BoundedReader) -> Ros1Xarm_msgsSetToolModbusResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  let part2 : Array[Int] = []
  let count2 = reader.count(4096, 1)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.unsigned(1).to_int())
  }
  { ret: part0, message: part1, respond_data: part2 }
}

/// @brief Own every original xarm_msgs/TCPOffsetRequest field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsTCPOffsetRequest {
  /// @brief Original xarm_msgs/TCPOffsetRequest.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original xarm_msgs/TCPOffsetRequest.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original xarm_msgs/TCPOffsetRequest.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original xarm_msgs/TCPOffsetRequest.roll field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut roll : Float
  /// @brief Original xarm_msgs/TCPOffsetRequest.pitch field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pitch : Float
  /// @brief Original xarm_msgs/TCPOffsetRequest.yaw field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut yaw : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsTCPOffsetRequest::new() -> Ros1Xarm_msgsTCPOffsetRequest {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    roll: (0U).reinterpret_as_float(),
    pitch: (0U).reinterpret_as_float(),
    yaw: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Xarm_msgsTCPOffsetRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsTCPOffsetRequestCodec::new() -> Ros1Xarm_msgsTCPOffsetRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/TCPOffsetRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsTCPOffsetRequestCodec::encode(
  _self : Ros1Xarm_msgsTCPOffsetRequestCodec,
  value : Ros1Xarm_msgsTCPOffsetRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros1Xarm_msgsTCPOffsetRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsTCPOffsetRequestCodec::decode(
  _self : Ros1Xarm_msgsTCPOffsetRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsTCPOffsetRequest, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsTCPOffsetRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsTCPOffsetRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsTCPOffsetRequest,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.roll
  writer.float32(part3)
  let part4 = value.pitch
  writer.float32(part4)
  let part5 = value.yaw
  writer.float32(part5)
}
fn read_Ros1Xarm_msgsTCPOffsetRequest(reader : BoundedReader) -> Ros1Xarm_msgsTCPOffsetRequest {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { x: part0, y: part1, z: part2, roll: part3, pitch: part4, yaw: part5 }
}

/// @brief Own every original xarm_msgs/TCPOffsetResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsTCPOffsetResponse {
  /// @brief Original xarm_msgs/TCPOffsetResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/TCPOffsetResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsTCPOffsetResponse::new() -> Ros1Xarm_msgsTCPOffsetResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsTCPOffsetResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsTCPOffsetResponseCodec::new() -> Ros1Xarm_msgsTCPOffsetResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/TCPOffsetResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsTCPOffsetResponseCodec::encode(
  _self : Ros1Xarm_msgsTCPOffsetResponseCodec,
  value : Ros1Xarm_msgsTCPOffsetResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsTCPOffsetResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsTCPOffsetResponseCodec::decode(
  _self : Ros1Xarm_msgsTCPOffsetResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsTCPOffsetResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsTCPOffsetResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsTCPOffsetResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsTCPOffsetResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsTCPOffsetResponse(reader : BoundedReader) -> Ros1Xarm_msgsTCPOffsetResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_msgs/VacuumGripperCtrlRequest field.
/// @details 6 ordered fields, canonical extent 13..13 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsVacuumGripperCtrlRequest {
  /// @brief Original xarm_msgs/VacuumGripperCtrlRequest.on field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut on : Bool
  /// @brief Original xarm_msgs/VacuumGripperCtrlRequest.wait field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut wait : Bool
  /// @brief Original xarm_msgs/VacuumGripperCtrlRequest.timeout field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut timeout : Float
  /// @brief Original xarm_msgs/VacuumGripperCtrlRequest.delay_sec field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut delay_sec : Float
  /// @brief Original xarm_msgs/VacuumGripperCtrlRequest.sync field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut sync : Bool
  /// @brief Original xarm_msgs/VacuumGripperCtrlRequest.hardware_version field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut hardware_version : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsVacuumGripperCtrlRequest::new() -> Ros1Xarm_msgsVacuumGripperCtrlRequest {
  {
    on: false,
    wait: false,
    timeout: (0U).reinterpret_as_float(),
    delay_sec: (0U).reinterpret_as_float(),
    sync: false,
    hardware_version: 0,
  }
}
pub(all) struct Ros1Xarm_msgsVacuumGripperCtrlRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsVacuumGripperCtrlRequestCodec::new() -> Ros1Xarm_msgsVacuumGripperCtrlRequestCodec {
  { ros_version: 1, native_type: "xarm_msgs/VacuumGripperCtrlRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff",
    min_wire_bytes: 13, max_wire_bytes: 13 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsVacuumGripperCtrlRequestCodec::encode(
  _self : Ros1Xarm_msgsVacuumGripperCtrlRequestCodec,
  value : Ros1Xarm_msgsVacuumGripperCtrlRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 13, error: 0 }
  write_Ros1Xarm_msgsVacuumGripperCtrlRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 13 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsVacuumGripperCtrlRequestCodec::decode(
  _self : Ros1Xarm_msgsVacuumGripperCtrlRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsVacuumGripperCtrlRequest, Int] {
  if input.length() < 13 || input.length() > 13 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsVacuumGripperCtrlRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsVacuumGripperCtrlRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsVacuumGripperCtrlRequest,
) -> Unit {
  let part0 = value.on
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.wait
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.timeout
  writer.float32(part2)
  let part3 = value.delay_sec
  writer.float32(part3)
  let part4 = value.sync
  writer.unsigned(if part4 { 1UL } else { 0UL }, 1)
  let part5 = value.hardware_version
  if part5 < -32768 || part5 > 32767 { writer.error = 22 }
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros1Xarm_msgsVacuumGripperCtrlRequest(reader : BoundedReader) -> Ros1Xarm_msgsVacuumGripperCtrlRequest {
  let part0 = reader.boolean()
  let part1 = reader.boolean()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.boolean()
  let part5 = reader.signed16()
  { on: part0, wait: part1, timeout: part2, delay_sec: part3, sync: part4, hardware_version: part5 }
}

/// @brief Own every original xarm_msgs/VacuumGripperCtrlResponse field.
/// @details 2 ordered fields, canonical extent 6..262 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsVacuumGripperCtrlResponse {
  /// @brief Original xarm_msgs/VacuumGripperCtrlResponse.ret field.
  /// @details int16 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ret : Int
  /// @brief Original xarm_msgs/VacuumGripperCtrlResponse.message field.
  /// @details string scalar; count/quota 0, UTF-8 byte bound 256. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut message : String
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsVacuumGripperCtrlResponse::new() -> Ros1Xarm_msgsVacuumGripperCtrlResponse {
  {
    ret: 0,
    message: "",
  }
}
pub(all) struct Ros1Xarm_msgsVacuumGripperCtrlResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_msgsVacuumGripperCtrlResponseCodec::new() -> Ros1Xarm_msgsVacuumGripperCtrlResponseCodec {
  { ros_version: 1, native_type: "xarm_msgs/VacuumGripperCtrlResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540",
    min_wire_bytes: 6, max_wire_bytes: 262 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsVacuumGripperCtrlResponseCodec::encode(
  _self : Ros1Xarm_msgsVacuumGripperCtrlResponseCodec,
  value : Ros1Xarm_msgsVacuumGripperCtrlResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 262, error: 0 }
  write_Ros1Xarm_msgsVacuumGripperCtrlResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsVacuumGripperCtrlResponseCodec::decode(
  _self : Ros1Xarm_msgsVacuumGripperCtrlResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_msgsVacuumGripperCtrlResponse, Int] {
  if input.length() < 6 || input.length() > 262 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsVacuumGripperCtrlResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsVacuumGripperCtrlResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_msgsVacuumGripperCtrlResponse,
) -> Unit {
  let part0 = value.ret
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.message
  writer.text(part1, 256)
}
fn read_Ros1Xarm_msgsVacuumGripperCtrlResponse(reader : BoundedReader) -> Ros1Xarm_msgsVacuumGripperCtrlResponse {
  let part0 = reader.signed16()
  let part1 = reader.text(256)
  { ret: part0, message: part1 }
}

/// @brief Own every original xarm_planner/exec_planRequest field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_plannerExec_planRequest {
  /// @brief Original xarm_planner/exec_planRequest.exec field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut exec : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerExec_planRequest::new() -> Ros1Xarm_plannerExec_planRequest {
  {
    exec: false,
  }
}
pub(all) struct Ros1Xarm_plannerExec_planRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerExec_planRequestCodec::new() -> Ros1Xarm_plannerExec_planRequestCodec {
  { ros_version: 1, native_type: "xarm_planner/exec_planRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerExec_planRequestCodec::encode(
  _self : Ros1Xarm_plannerExec_planRequestCodec,
  value : Ros1Xarm_plannerExec_planRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros1Xarm_plannerExec_planRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerExec_planRequestCodec::decode(
  _self : Ros1Xarm_plannerExec_planRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_plannerExec_planRequest, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_plannerExec_planRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_plannerExec_planRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_plannerExec_planRequest,
) -> Unit {
  let part0 = value.exec
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Xarm_plannerExec_planRequest(reader : BoundedReader) -> Ros1Xarm_plannerExec_planRequest {
  let part0 = reader.boolean()
  { exec: part0 }
}

/// @brief Own every original xarm_planner/exec_planResponse field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_plannerExec_planResponse {
  /// @brief Original xarm_planner/exec_planResponse.success field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut success : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerExec_planResponse::new() -> Ros1Xarm_plannerExec_planResponse {
  {
    success: false,
  }
}
pub(all) struct Ros1Xarm_plannerExec_planResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerExec_planResponseCodec::new() -> Ros1Xarm_plannerExec_planResponseCodec {
  { ros_version: 1, native_type: "xarm_planner/exec_planResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerExec_planResponseCodec::encode(
  _self : Ros1Xarm_plannerExec_planResponseCodec,
  value : Ros1Xarm_plannerExec_planResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros1Xarm_plannerExec_planResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerExec_planResponseCodec::decode(
  _self : Ros1Xarm_plannerExec_planResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_plannerExec_planResponse, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_plannerExec_planResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_plannerExec_planResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_plannerExec_planResponse,
) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Xarm_plannerExec_planResponse(reader : BoundedReader) -> Ros1Xarm_plannerExec_planResponse {
  let part0 = reader.boolean()
  { success: part0 }
}

/// @brief Own every original xarm_planner/joint_planRequest field.
/// @details 1 ordered fields, canonical extent 4..260 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_plannerJoint_planRequest {
  /// @brief Original xarm_planner/joint_planRequest.target field.
  /// @details float64 sequence; count/quota 32, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut target : Array[Double]
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerJoint_planRequest::new() -> Ros1Xarm_plannerJoint_planRequest {
  {
    target: [],
  }
}
pub(all) struct Ros1Xarm_plannerJoint_planRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerJoint_planRequestCodec::new() -> Ros1Xarm_plannerJoint_planRequestCodec {
  { ros_version: 1, native_type: "xarm_planner/joint_planRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9",
    min_wire_bytes: 4, max_wire_bytes: 260 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerJoint_planRequestCodec::encode(
  _self : Ros1Xarm_plannerJoint_planRequestCodec,
  value : Ros1Xarm_plannerJoint_planRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 260, error: 0 }
  write_Ros1Xarm_plannerJoint_planRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerJoint_planRequestCodec::decode(
  _self : Ros1Xarm_plannerJoint_planRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_plannerJoint_planRequest, Int] {
  if input.length() < 4 || input.length() > 260 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_plannerJoint_planRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_plannerJoint_planRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_plannerJoint_planRequest,
) -> Unit {
  let part0 = value.target
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
}
fn read_Ros1Xarm_plannerJoint_planRequest(reader : BoundedReader) -> Ros1Xarm_plannerJoint_planRequest {
  let part0 : Array[Double] = []
  let count0 = reader.count(32, 8)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  { target: part0 }
}

/// @brief Own every original xarm_planner/joint_planResponse field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_plannerJoint_planResponse {
  /// @brief Original xarm_planner/joint_planResponse.success field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut success : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerJoint_planResponse::new() -> Ros1Xarm_plannerJoint_planResponse {
  {
    success: false,
  }
}
pub(all) struct Ros1Xarm_plannerJoint_planResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerJoint_planResponseCodec::new() -> Ros1Xarm_plannerJoint_planResponseCodec {
  { ros_version: 1, native_type: "xarm_planner/joint_planResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerJoint_planResponseCodec::encode(
  _self : Ros1Xarm_plannerJoint_planResponseCodec,
  value : Ros1Xarm_plannerJoint_planResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros1Xarm_plannerJoint_planResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerJoint_planResponseCodec::decode(
  _self : Ros1Xarm_plannerJoint_planResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_plannerJoint_planResponse, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_plannerJoint_planResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_plannerJoint_planResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_plannerJoint_planResponse,
) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Xarm_plannerJoint_planResponse(reader : BoundedReader) -> Ros1Xarm_plannerJoint_planResponse {
  let part0 = reader.boolean()
  { success: part0 }
}

/// @brief Own every original xarm_planner/pose_planRequest field.
/// @details 1 ordered fields, canonical extent 56..56 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_plannerPose_planRequest {
  /// @brief Original xarm_planner/pose_planRequest.target field.
  /// @details geometry_msgs/Pose scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and
  /// backing storage through synchronous encoding.
  mut target : Ros1Geometry_msgsPose
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerPose_planRequest::new() -> Ros1Xarm_plannerPose_planRequest {
  {
    target: Ros1Geometry_msgsPose::new(),
  }
}
pub(all) struct Ros1Xarm_plannerPose_planRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerPose_planRequestCodec::new() -> Ros1Xarm_plannerPose_planRequestCodec {
  { ros_version: 1, native_type: "xarm_planner/pose_planRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22",
    min_wire_bytes: 56, max_wire_bytes: 56 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerPose_planRequestCodec::encode(
  _self : Ros1Xarm_plannerPose_planRequestCodec,
  value : Ros1Xarm_plannerPose_planRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 56, error: 0 }
  write_Ros1Xarm_plannerPose_planRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 56 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerPose_planRequestCodec::decode(
  _self : Ros1Xarm_plannerPose_planRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_plannerPose_planRequest, Int] {
  if input.length() < 56 || input.length() > 56 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_plannerPose_planRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_plannerPose_planRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_plannerPose_planRequest,
) -> Unit {
  let part0 = value.target
  write_Ros1Geometry_msgsPose(writer, part0)
}
fn read_Ros1Xarm_plannerPose_planRequest(reader : BoundedReader) -> Ros1Xarm_plannerPose_planRequest {
  let part0 = read_Ros1Geometry_msgsPose(reader)
  { target: part0 }
}

/// @brief Own every original xarm_planner/pose_planResponse field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_plannerPose_planResponse {
  /// @brief Original xarm_planner/pose_planResponse.success field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut success : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerPose_planResponse::new() -> Ros1Xarm_plannerPose_planResponse {
  {
    success: false,
  }
}
pub(all) struct Ros1Xarm_plannerPose_planResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerPose_planResponseCodec::new() -> Ros1Xarm_plannerPose_planResponseCodec {
  { ros_version: 1, native_type: "xarm_planner/pose_planResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerPose_planResponseCodec::encode(
  _self : Ros1Xarm_plannerPose_planResponseCodec,
  value : Ros1Xarm_plannerPose_planResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros1Xarm_plannerPose_planResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerPose_planResponseCodec::decode(
  _self : Ros1Xarm_plannerPose_planResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_plannerPose_planResponse, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_plannerPose_planResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_plannerPose_planResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_plannerPose_planResponse,
) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Xarm_plannerPose_planResponse(reader : BoundedReader) -> Ros1Xarm_plannerPose_planResponse {
  let part0 = reader.boolean()
  { success: part0 }
}

/// @brief Own every original xarm_planner/single_straight_planRequest field.
/// @details 1 ordered fields, canonical extent 56..56 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_plannerSingle_straight_planRequest {
  /// @brief Original xarm_planner/single_straight_planRequest.target field.
  /// @details geometry_msgs/Pose scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and
  /// backing storage through synchronous encoding.
  mut target : Ros1Geometry_msgsPose
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerSingle_straight_planRequest::new() -> Ros1Xarm_plannerSingle_straight_planRequest {
  {
    target: Ros1Geometry_msgsPose::new(),
  }
}
pub(all) struct Ros1Xarm_plannerSingle_straight_planRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerSingle_straight_planRequestCodec::new() -> Ros1Xarm_plannerSingle_straight_planRequestCodec {
  { ros_version: 1, native_type: "xarm_planner/single_straight_planRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f",
    min_wire_bytes: 56, max_wire_bytes: 56 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerSingle_straight_planRequestCodec::encode(
  _self : Ros1Xarm_plannerSingle_straight_planRequestCodec,
  value : Ros1Xarm_plannerSingle_straight_planRequest,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 56, error: 0 }
  write_Ros1Xarm_plannerSingle_straight_planRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 56 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerSingle_straight_planRequestCodec::decode(
  _self : Ros1Xarm_plannerSingle_straight_planRequestCodec,
  input : Bytes,
) -> Result[Ros1Xarm_plannerSingle_straight_planRequest, Int] {
  if input.length() < 56 || input.length() > 56 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_plannerSingle_straight_planRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_plannerSingle_straight_planRequest(
  writer : BoundedWriter,
  value : Ros1Xarm_plannerSingle_straight_planRequest,
) -> Unit {
  let part0 = value.target
  write_Ros1Geometry_msgsPose(writer, part0)
}
fn read_Ros1Xarm_plannerSingle_straight_planRequest(reader : BoundedReader) -> Ros1Xarm_plannerSingle_straight_planRequest {
  let part0 = read_Ros1Geometry_msgsPose(reader)
  { target: part0 }
}

/// @brief Own every original xarm_planner/single_straight_planResponse field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_plannerSingle_straight_planResponse {
  /// @brief Original xarm_planner/single_straight_planResponse.success field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut success : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerSingle_straight_planResponse::new() -> Ros1Xarm_plannerSingle_straight_planResponse {
  {
    success: false,
  }
}
pub(all) struct Ros1Xarm_plannerSingle_straight_planResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros1Xarm_plannerSingle_straight_planResponseCodec::new() -> Ros1Xarm_plannerSingle_straight_planResponseCodec {
  { ros_version: 1, native_type: "xarm_planner/single_straight_planResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerSingle_straight_planResponseCodec::encode(
  _self : Ros1Xarm_plannerSingle_straight_planResponseCodec,
  value : Ros1Xarm_plannerSingle_straight_planResponse,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros1Xarm_plannerSingle_straight_planResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_plannerSingle_straight_planResponseCodec::decode(
  _self : Ros1Xarm_plannerSingle_straight_planResponseCodec,
  input : Bytes,
) -> Result[Ros1Xarm_plannerSingle_straight_planResponse, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_plannerSingle_straight_planResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_plannerSingle_straight_planResponse(
  writer : BoundedWriter,
  value : Ros1Xarm_plannerSingle_straight_planResponse,
) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Xarm_plannerSingle_straight_planResponse(reader : BoundedReader) -> Ros1Xarm_plannerSingle_straight_planResponse {
  let part0 = reader.boolean()
  { success: part0 }
}
