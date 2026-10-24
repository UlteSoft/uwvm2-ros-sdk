/// @file bounded_records.mbt
/// @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
/// @details The selected domain contains 29 complete record/components and 67 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.

// Complete actual IR records follow. No native registration.

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
/// @details 10 ordered fields, canonical extent 66..94 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros1Xarm_msgsRobotMsg {
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
    codec_identity: "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7",
    min_wire_bytes: 66, max_wire_bytes: 94 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros1Xarm_msgsRobotMsgCodec::encode(
  _self : Ros1Xarm_msgsRobotMsgCodec,
  value : Ros1Xarm_msgsRobotMsg,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 94, error: 0 }
  write_Ros1Xarm_msgsRobotMsg(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 66 { return Err(22) }
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
  if input.length() < 66 || input.length() > 94 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Xarm_msgsRobotMsg(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Xarm_msgsRobotMsg(writer : BoundedWriter, value : Ros1Xarm_msgsRobotMsg) -> Unit {
  let part0 = value.state
  if part0 < -32768 || part0 > 32767 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.mode
  if part1 < -32768 || part1 > 32767 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.cmdnum
  if part2 < -32768 || part2 > 32767 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part3 = value.mt_brake
  if part3 < -32768 || part3 > 32767 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part4 = value.mt_able
  if part4 < -32768 || part4 > 32767 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part5 = value.err
  if part5 < -32768 || part5 > 32767 { writer.error = 22 }
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part6 = value.warn
  if part6 < -32768 || part6 > 32767 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part7 = value.angle
  let count7 = part7.length()
  if count7 > 7 { writer.error = 22; return () }
  writer.unsigned(count7.to_uint64(), 4)
  for index = 0; index < count7; index = index + 1 {
    let element = part7[index]
    writer.float32(element)
  }
  let part8 = value.pose
  let count8 = part8.length()
  if count8 != 6 { writer.error = 22; return () }
  for index = 0; index < count8; index = index + 1 {
    let element = part8[index]
    writer.float32(element)
  }
  let part9 = value.offset
  let count9 = part9.length()
  if count9 != 6 { writer.error = 22; return () }
  for index = 0; index < count9; index = index + 1 {
    let element = part9[index]
    writer.float32(element)
  }
}
fn read_Ros1Xarm_msgsRobotMsg(reader : BoundedReader) -> Ros1Xarm_msgsRobotMsg {
  let part0 = reader.signed16()
  let part1 = reader.signed16()
  let part2 = reader.signed16()
  let part3 = reader.signed16()
  let part4 = reader.signed16()
  let part5 = reader.signed16()
  let part6 = reader.signed16()
  let part7 : Array[Float] = []
  let count7 = reader.count(7, 4)
  for index = 0; index < count7; index = index + 1 {
    part7.push(reader.float32())
  }
  let part8 : Array[Float] = []
  let count8 = 6
  for index = 0; index < count8; index = index + 1 {
    part8.push(reader.float32())
  }
  let part9 : Array[Float] = []
  let count9 = 6
  for index = 0; index < count9; index = index + 1 {
    part9.push(reader.float32())
  }
  { state: part0, mode: part1, cmdnum: part2, mt_brake: part3, mt_able: part4, err: part5, warn: part6, angle: part7, pose: part8, offset: part9 }
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
