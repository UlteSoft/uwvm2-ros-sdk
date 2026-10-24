/// @file bounded_records.mbt
/// @brief Preserve the complete original elephant/humble canonical value domain.
/// @details The selected domain contains 88 complete record/components and 280 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.

// Complete actual IR records follow. No native registration.

/// @brief Own every original mecharm_interfaces/msg/MecharmAngles field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesMsgMecharmAngles {
  /// @brief Original mecharm_interfaces/msg/MecharmAngles.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mecharm_interfaces/msg/MecharmAngles.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mecharm_interfaces/msg/MecharmAngles.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mecharm_interfaces/msg/MecharmAngles.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mecharm_interfaces/msg/MecharmAngles.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mecharm_interfaces/msg/MecharmAngles.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesMsgMecharmAngles::new() -> Ros2Mecharm_interfacesMsgMecharmAngles {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mecharm_interfacesMsgMecharmAnglesCodec {
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
pub fn Ros2Mecharm_interfacesMsgMecharmAnglesCodec::new() -> Ros2Mecharm_interfacesMsgMecharmAnglesCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/msg/MecharmAngles",
    native_identity: None,
    codec_identity: "UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmAnglesCodec::encode(
  _self : Ros2Mecharm_interfacesMsgMecharmAnglesCodec,
  value : Ros2Mecharm_interfacesMsgMecharmAngles,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mecharm_interfacesMsgMecharmAngles(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmAnglesCodec::decode(
  _self : Ros2Mecharm_interfacesMsgMecharmAnglesCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesMsgMecharmAngles, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesMsgMecharmAngles(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesMsgMecharmAngles(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesMsgMecharmAngles,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
}
fn read_Ros2Mecharm_interfacesMsgMecharmAngles(reader : BoundedReader) -> Ros2Mecharm_interfacesMsgMecharmAngles {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5 }
}

/// @brief Own every original mecharm_interfaces/msg/MecharmCoords field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesMsgMecharmCoords {
  /// @brief Original mecharm_interfaces/msg/MecharmCoords.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mecharm_interfaces/msg/MecharmCoords.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mecharm_interfaces/msg/MecharmCoords.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mecharm_interfaces/msg/MecharmCoords.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mecharm_interfaces/msg/MecharmCoords.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mecharm_interfaces/msg/MecharmCoords.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesMsgMecharmCoords::new() -> Ros2Mecharm_interfacesMsgMecharmCoords {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mecharm_interfacesMsgMecharmCoordsCodec {
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
pub fn Ros2Mecharm_interfacesMsgMecharmCoordsCodec::new() -> Ros2Mecharm_interfacesMsgMecharmCoordsCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/msg/MecharmCoords",
    native_identity: None,
    codec_identity: "UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmCoordsCodec::encode(
  _self : Ros2Mecharm_interfacesMsgMecharmCoordsCodec,
  value : Ros2Mecharm_interfacesMsgMecharmCoords,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mecharm_interfacesMsgMecharmCoords(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmCoordsCodec::decode(
  _self : Ros2Mecharm_interfacesMsgMecharmCoordsCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesMsgMecharmCoords, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesMsgMecharmCoords(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesMsgMecharmCoords(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesMsgMecharmCoords,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
}
fn read_Ros2Mecharm_interfacesMsgMecharmCoords(reader : BoundedReader) -> Ros2Mecharm_interfacesMsgMecharmCoords {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5 }
}

/// @brief Own every original mecharm_interfaces/msg/MecharmGripperStatus field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesMsgMecharmGripperStatus {
  /// @brief Original mecharm_interfaces/msg/MecharmGripperStatus.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesMsgMecharmGripperStatus::new() -> Ros2Mecharm_interfacesMsgMecharmGripperStatus {
  {
    status: false,
  }
}
pub(all) struct Ros2Mecharm_interfacesMsgMecharmGripperStatusCodec {
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
pub fn Ros2Mecharm_interfacesMsgMecharmGripperStatusCodec::new() -> Ros2Mecharm_interfacesMsgMecharmGripperStatusCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/msg/MecharmGripperStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmGripperStatusCodec::encode(
  _self : Ros2Mecharm_interfacesMsgMecharmGripperStatusCodec,
  value : Ros2Mecharm_interfacesMsgMecharmGripperStatus,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mecharm_interfacesMsgMecharmGripperStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmGripperStatusCodec::decode(
  _self : Ros2Mecharm_interfacesMsgMecharmGripperStatusCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesMsgMecharmGripperStatus, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesMsgMecharmGripperStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesMsgMecharmGripperStatus(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesMsgMecharmGripperStatus,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mecharm_interfacesMsgMecharmGripperStatus(reader : BoundedReader) -> Ros2Mecharm_interfacesMsgMecharmGripperStatus {
  let part0 = reader.boolean()
  { status: part0 }
}

/// @brief Own every original mecharm_interfaces/msg/MecharmPumpStatus field.
/// @details 3 ordered fields, canonical extent 3..3 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesMsgMecharmPumpStatus {
  /// @brief Original mecharm_interfaces/msg/MecharmPumpStatus.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
  /// @brief Original mecharm_interfaces/msg/MecharmPumpStatus.pin1 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin1 : Int
  /// @brief Original mecharm_interfaces/msg/MecharmPumpStatus.pin2 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin2 : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesMsgMecharmPumpStatus::new() -> Ros2Mecharm_interfacesMsgMecharmPumpStatus {
  {
    status: false,
    pin1: 0,
    pin2: 0,
  }
}
pub(all) struct Ros2Mecharm_interfacesMsgMecharmPumpStatusCodec {
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
pub fn Ros2Mecharm_interfacesMsgMecharmPumpStatusCodec::new() -> Ros2Mecharm_interfacesMsgMecharmPumpStatusCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/msg/MecharmPumpStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add",
    min_wire_bytes: 3, max_wire_bytes: 3 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmPumpStatusCodec::encode(
  _self : Ros2Mecharm_interfacesMsgMecharmPumpStatusCodec,
  value : Ros2Mecharm_interfacesMsgMecharmPumpStatus,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 3, error: 0 }
  write_Ros2Mecharm_interfacesMsgMecharmPumpStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 3 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmPumpStatusCodec::decode(
  _self : Ros2Mecharm_interfacesMsgMecharmPumpStatusCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesMsgMecharmPumpStatus, Int] {
  if input.length() < 3 || input.length() > 3 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesMsgMecharmPumpStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesMsgMecharmPumpStatus(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesMsgMecharmPumpStatus,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.pin1
  if part1 < -128 || part1 > 127 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.pin2
  if part2 < -128 || part2 > 127 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mecharm_interfacesMsgMecharmPumpStatus(reader : BoundedReader) -> Ros2Mecharm_interfacesMsgMecharmPumpStatus {
  let part0 = reader.boolean()
  let part1 = reader.signed8()
  let part2 = reader.signed8()
  { status: part0, pin1: part1, pin2: part2 }
}

/// @brief Own every original mecharm_interfaces/msg/MecharmSetAngles field.
/// @details 7 ordered fields, canonical extent 25..25 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesMsgMecharmSetAngles {
  /// @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetAngles.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesMsgMecharmSetAngles::new() -> Ros2Mecharm_interfacesMsgMecharmSetAngles {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mecharm_interfacesMsgMecharmSetAnglesCodec {
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
pub fn Ros2Mecharm_interfacesMsgMecharmSetAnglesCodec::new() -> Ros2Mecharm_interfacesMsgMecharmSetAnglesCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/msg/MecharmSetAngles",
    native_identity: None,
    codec_identity: "UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5",
    min_wire_bytes: 25, max_wire_bytes: 25 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmSetAnglesCodec::encode(
  _self : Ros2Mecharm_interfacesMsgMecharmSetAnglesCodec,
  value : Ros2Mecharm_interfacesMsgMecharmSetAngles,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 25, error: 0 }
  write_Ros2Mecharm_interfacesMsgMecharmSetAngles(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmSetAnglesCodec::decode(
  _self : Ros2Mecharm_interfacesMsgMecharmSetAnglesCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesMsgMecharmSetAngles, Int] {
  if input.length() < 25 || input.length() > 25 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesMsgMecharmSetAngles(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesMsgMecharmSetAngles(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesMsgMecharmSetAngles,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mecharm_interfacesMsgMecharmSetAngles(reader : BoundedReader) -> Ros2Mecharm_interfacesMsgMecharmSetAngles {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5, speed: part6 }
}

/// @brief Own every original mecharm_interfaces/msg/MecharmSetCoords field.
/// @details 8 ordered fields, canonical extent 26..26 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesMsgMecharmSetCoords {
  /// @brief Original mecharm_interfaces/msg/MecharmSetCoords.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetCoords.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetCoords.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetCoords.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetCoords.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetCoords.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
  /// @brief Original mecharm_interfaces/msg/MecharmSetCoords.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
  /// @brief Original mecharm_interfaces/msg/MecharmSetCoords.model field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut model : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesMsgMecharmSetCoords::new() -> Ros2Mecharm_interfacesMsgMecharmSetCoords {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
    speed: 0,
    model: 0,
  }
}
pub(all) struct Ros2Mecharm_interfacesMsgMecharmSetCoordsCodec {
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
pub fn Ros2Mecharm_interfacesMsgMecharmSetCoordsCodec::new() -> Ros2Mecharm_interfacesMsgMecharmSetCoordsCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/msg/MecharmSetCoords",
    native_identity: None,
    codec_identity: "UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2",
    min_wire_bytes: 26, max_wire_bytes: 26 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmSetCoordsCodec::encode(
  _self : Ros2Mecharm_interfacesMsgMecharmSetCoordsCodec,
  value : Ros2Mecharm_interfacesMsgMecharmSetCoords,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 26, error: 0 }
  write_Ros2Mecharm_interfacesMsgMecharmSetCoords(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 26 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesMsgMecharmSetCoordsCodec::decode(
  _self : Ros2Mecharm_interfacesMsgMecharmSetCoordsCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesMsgMecharmSetCoords, Int] {
  if input.length() < 26 || input.length() > 26 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesMsgMecharmSetCoords(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesMsgMecharmSetCoords(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesMsgMecharmSetCoords,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part7 = value.model
  if part7 < -128 || part7 > 127 { writer.error = 22 }
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mecharm_interfacesMsgMecharmSetCoords(reader : BoundedReader) -> Ros2Mecharm_interfacesMsgMecharmSetCoords {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  let part7 = reader.signed8()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5, speed: part6, model: part7 }
}

pub(all) enum Ros2Mecharm_interfacesSrvGetAngles_Request { Ros2Mecharm_interfacesSrvGetAngles_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvGetAngles_Request::new() -> Ros2Mecharm_interfacesSrvGetAngles_Request { Ros2Mecharm_interfacesSrvGetAngles_RequestEmpty }
pub(all) struct Ros2Mecharm_interfacesSrvGetAngles_RequestCodec {
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
pub fn Ros2Mecharm_interfacesSrvGetAngles_RequestCodec::new() -> Ros2Mecharm_interfacesSrvGetAngles_RequestCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/GetAngles_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGetAngles_RequestCodec::encode(
  _self : Ros2Mecharm_interfacesSrvGetAngles_RequestCodec,
  value : Ros2Mecharm_interfacesSrvGetAngles_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Mecharm_interfacesSrvGetAngles_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGetAngles_RequestCodec::decode(
  _self : Ros2Mecharm_interfacesSrvGetAngles_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvGetAngles_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvGetAngles_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvGetAngles_Request(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvGetAngles_Request,
) -> Unit {
}
fn read_Ros2Mecharm_interfacesSrvGetAngles_Request(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvGetAngles_Request {
  Ros2Mecharm_interfacesSrvGetAngles_RequestEmpty
}

/// @brief Own every original mecharm_interfaces/srv/GetAngles_Response field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesSrvGetAngles_Response {
  /// @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvGetAngles_Response::new() -> Ros2Mecharm_interfacesSrvGetAngles_Response {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mecharm_interfacesSrvGetAngles_ResponseCodec {
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
pub fn Ros2Mecharm_interfacesSrvGetAngles_ResponseCodec::new() -> Ros2Mecharm_interfacesSrvGetAngles_ResponseCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/GetAngles_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGetAngles_ResponseCodec::encode(
  _self : Ros2Mecharm_interfacesSrvGetAngles_ResponseCodec,
  value : Ros2Mecharm_interfacesSrvGetAngles_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mecharm_interfacesSrvGetAngles_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGetAngles_ResponseCodec::decode(
  _self : Ros2Mecharm_interfacesSrvGetAngles_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvGetAngles_Response, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvGetAngles_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvGetAngles_Response(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvGetAngles_Response,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
}
fn read_Ros2Mecharm_interfacesSrvGetAngles_Response(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvGetAngles_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5 }
}

pub(all) enum Ros2Mecharm_interfacesSrvGetCoords_Request { Ros2Mecharm_interfacesSrvGetCoords_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvGetCoords_Request::new() -> Ros2Mecharm_interfacesSrvGetCoords_Request { Ros2Mecharm_interfacesSrvGetCoords_RequestEmpty }
pub(all) struct Ros2Mecharm_interfacesSrvGetCoords_RequestCodec {
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
pub fn Ros2Mecharm_interfacesSrvGetCoords_RequestCodec::new() -> Ros2Mecharm_interfacesSrvGetCoords_RequestCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/GetCoords_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGetCoords_RequestCodec::encode(
  _self : Ros2Mecharm_interfacesSrvGetCoords_RequestCodec,
  value : Ros2Mecharm_interfacesSrvGetCoords_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Mecharm_interfacesSrvGetCoords_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGetCoords_RequestCodec::decode(
  _self : Ros2Mecharm_interfacesSrvGetCoords_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvGetCoords_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvGetCoords_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvGetCoords_Request(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvGetCoords_Request,
) -> Unit {
}
fn read_Ros2Mecharm_interfacesSrvGetCoords_Request(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvGetCoords_Request {
  Ros2Mecharm_interfacesSrvGetCoords_RequestEmpty
}

/// @brief Own every original mecharm_interfaces/srv/GetCoords_Response field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesSrvGetCoords_Response {
  /// @brief Original mecharm_interfaces/srv/GetCoords_Response.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mecharm_interfaces/srv/GetCoords_Response.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mecharm_interfaces/srv/GetCoords_Response.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mecharm_interfaces/srv/GetCoords_Response.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mecharm_interfaces/srv/GetCoords_Response.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mecharm_interfaces/srv/GetCoords_Response.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvGetCoords_Response::new() -> Ros2Mecharm_interfacesSrvGetCoords_Response {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mecharm_interfacesSrvGetCoords_ResponseCodec {
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
pub fn Ros2Mecharm_interfacesSrvGetCoords_ResponseCodec::new() -> Ros2Mecharm_interfacesSrvGetCoords_ResponseCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/GetCoords_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGetCoords_ResponseCodec::encode(
  _self : Ros2Mecharm_interfacesSrvGetCoords_ResponseCodec,
  value : Ros2Mecharm_interfacesSrvGetCoords_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mecharm_interfacesSrvGetCoords_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGetCoords_ResponseCodec::decode(
  _self : Ros2Mecharm_interfacesSrvGetCoords_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvGetCoords_Response, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvGetCoords_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvGetCoords_Response(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvGetCoords_Response,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
}
fn read_Ros2Mecharm_interfacesSrvGetCoords_Response(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvGetCoords_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5 }
}

/// @brief Own every original mecharm_interfaces/srv/GripperStatus_Request field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesSrvGripperStatus_Request {
  /// @brief Original mecharm_interfaces/srv/GripperStatus_Request.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvGripperStatus_Request::new() -> Ros2Mecharm_interfacesSrvGripperStatus_Request {
  {
    status: false,
  }
}
pub(all) struct Ros2Mecharm_interfacesSrvGripperStatus_RequestCodec {
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
pub fn Ros2Mecharm_interfacesSrvGripperStatus_RequestCodec::new() -> Ros2Mecharm_interfacesSrvGripperStatus_RequestCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/GripperStatus_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGripperStatus_RequestCodec::encode(
  _self : Ros2Mecharm_interfacesSrvGripperStatus_RequestCodec,
  value : Ros2Mecharm_interfacesSrvGripperStatus_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mecharm_interfacesSrvGripperStatus_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGripperStatus_RequestCodec::decode(
  _self : Ros2Mecharm_interfacesSrvGripperStatus_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvGripperStatus_Request, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvGripperStatus_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvGripperStatus_Request(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvGripperStatus_Request,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mecharm_interfacesSrvGripperStatus_Request(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvGripperStatus_Request {
  let part0 = reader.boolean()
  { status: part0 }
}

/// @brief Own every original mecharm_interfaces/srv/GripperStatus_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesSrvGripperStatus_Response {
  /// @brief Original mecharm_interfaces/srv/GripperStatus_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvGripperStatus_Response::new() -> Ros2Mecharm_interfacesSrvGripperStatus_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodec {
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
pub fn Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodec::new() -> Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/GripperStatus_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodec::encode(
  _self : Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodec,
  value : Ros2Mecharm_interfacesSrvGripperStatus_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mecharm_interfacesSrvGripperStatus_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodec::decode(
  _self : Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvGripperStatus_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvGripperStatus_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvGripperStatus_Response(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvGripperStatus_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mecharm_interfacesSrvGripperStatus_Response(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvGripperStatus_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mecharm_interfaces/srv/PumpStatus_Request field.
/// @details 3 ordered fields, canonical extent 3..3 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesSrvPumpStatus_Request {
  /// @brief Original mecharm_interfaces/srv/PumpStatus_Request.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
  /// @brief Original mecharm_interfaces/srv/PumpStatus_Request.pin1 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin1 : Int
  /// @brief Original mecharm_interfaces/srv/PumpStatus_Request.pin2 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin2 : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvPumpStatus_Request::new() -> Ros2Mecharm_interfacesSrvPumpStatus_Request {
  {
    status: false,
    pin1: 0,
    pin2: 0,
  }
}
pub(all) struct Ros2Mecharm_interfacesSrvPumpStatus_RequestCodec {
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
pub fn Ros2Mecharm_interfacesSrvPumpStatus_RequestCodec::new() -> Ros2Mecharm_interfacesSrvPumpStatus_RequestCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/PumpStatus_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9",
    min_wire_bytes: 3, max_wire_bytes: 3 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvPumpStatus_RequestCodec::encode(
  _self : Ros2Mecharm_interfacesSrvPumpStatus_RequestCodec,
  value : Ros2Mecharm_interfacesSrvPumpStatus_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 3, error: 0 }
  write_Ros2Mecharm_interfacesSrvPumpStatus_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 3 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvPumpStatus_RequestCodec::decode(
  _self : Ros2Mecharm_interfacesSrvPumpStatus_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvPumpStatus_Request, Int] {
  if input.length() < 3 || input.length() > 3 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvPumpStatus_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvPumpStatus_Request(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvPumpStatus_Request,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.pin1
  if part1 < -128 || part1 > 127 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.pin2
  if part2 < -128 || part2 > 127 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mecharm_interfacesSrvPumpStatus_Request(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvPumpStatus_Request {
  let part0 = reader.boolean()
  let part1 = reader.signed8()
  let part2 = reader.signed8()
  { status: part0, pin1: part1, pin2: part2 }
}

/// @brief Own every original mecharm_interfaces/srv/PumpStatus_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesSrvPumpStatus_Response {
  /// @brief Original mecharm_interfaces/srv/PumpStatus_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvPumpStatus_Response::new() -> Ros2Mecharm_interfacesSrvPumpStatus_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodec {
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
pub fn Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodec::new() -> Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/PumpStatus_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodec::encode(
  _self : Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodec,
  value : Ros2Mecharm_interfacesSrvPumpStatus_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mecharm_interfacesSrvPumpStatus_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodec::decode(
  _self : Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvPumpStatus_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvPumpStatus_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvPumpStatus_Response(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvPumpStatus_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mecharm_interfacesSrvPumpStatus_Response(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvPumpStatus_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mecharm_interfaces/srv/SetAngles_Request field.
/// @details 7 ordered fields, canonical extent 25..25 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesSrvSetAngles_Request {
  /// @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
  /// @brief Original mecharm_interfaces/srv/SetAngles_Request.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvSetAngles_Request::new() -> Ros2Mecharm_interfacesSrvSetAngles_Request {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mecharm_interfacesSrvSetAngles_RequestCodec {
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
pub fn Ros2Mecharm_interfacesSrvSetAngles_RequestCodec::new() -> Ros2Mecharm_interfacesSrvSetAngles_RequestCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/SetAngles_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb",
    min_wire_bytes: 25, max_wire_bytes: 25 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvSetAngles_RequestCodec::encode(
  _self : Ros2Mecharm_interfacesSrvSetAngles_RequestCodec,
  value : Ros2Mecharm_interfacesSrvSetAngles_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 25, error: 0 }
  write_Ros2Mecharm_interfacesSrvSetAngles_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvSetAngles_RequestCodec::decode(
  _self : Ros2Mecharm_interfacesSrvSetAngles_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvSetAngles_Request, Int] {
  if input.length() < 25 || input.length() > 25 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvSetAngles_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvSetAngles_Request(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvSetAngles_Request,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mecharm_interfacesSrvSetAngles_Request(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvSetAngles_Request {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5, speed: part6 }
}

/// @brief Own every original mecharm_interfaces/srv/SetAngles_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesSrvSetAngles_Response {
  /// @brief Original mecharm_interfaces/srv/SetAngles_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvSetAngles_Response::new() -> Ros2Mecharm_interfacesSrvSetAngles_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mecharm_interfacesSrvSetAngles_ResponseCodec {
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
pub fn Ros2Mecharm_interfacesSrvSetAngles_ResponseCodec::new() -> Ros2Mecharm_interfacesSrvSetAngles_ResponseCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/SetAngles_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvSetAngles_ResponseCodec::encode(
  _self : Ros2Mecharm_interfacesSrvSetAngles_ResponseCodec,
  value : Ros2Mecharm_interfacesSrvSetAngles_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mecharm_interfacesSrvSetAngles_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvSetAngles_ResponseCodec::decode(
  _self : Ros2Mecharm_interfacesSrvSetAngles_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvSetAngles_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvSetAngles_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvSetAngles_Response(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvSetAngles_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mecharm_interfacesSrvSetAngles_Response(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvSetAngles_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mecharm_interfaces/srv/SetCoords_Request field.
/// @details 8 ordered fields, canonical extent 26..26 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesSrvSetCoords_Request {
  /// @brief Original mecharm_interfaces/srv/SetCoords_Request.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mecharm_interfaces/srv/SetCoords_Request.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mecharm_interfaces/srv/SetCoords_Request.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mecharm_interfaces/srv/SetCoords_Request.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mecharm_interfaces/srv/SetCoords_Request.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mecharm_interfaces/srv/SetCoords_Request.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
  /// @brief Original mecharm_interfaces/srv/SetCoords_Request.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
  /// @brief Original mecharm_interfaces/srv/SetCoords_Request.model field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut model : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvSetCoords_Request::new() -> Ros2Mecharm_interfacesSrvSetCoords_Request {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
    speed: 0,
    model: 0,
  }
}
pub(all) struct Ros2Mecharm_interfacesSrvSetCoords_RequestCodec {
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
pub fn Ros2Mecharm_interfacesSrvSetCoords_RequestCodec::new() -> Ros2Mecharm_interfacesSrvSetCoords_RequestCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/SetCoords_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916",
    min_wire_bytes: 26, max_wire_bytes: 26 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvSetCoords_RequestCodec::encode(
  _self : Ros2Mecharm_interfacesSrvSetCoords_RequestCodec,
  value : Ros2Mecharm_interfacesSrvSetCoords_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 26, error: 0 }
  write_Ros2Mecharm_interfacesSrvSetCoords_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 26 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvSetCoords_RequestCodec::decode(
  _self : Ros2Mecharm_interfacesSrvSetCoords_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvSetCoords_Request, Int] {
  if input.length() < 26 || input.length() > 26 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvSetCoords_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvSetCoords_Request(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvSetCoords_Request,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part7 = value.model
  if part7 < -128 || part7 > 127 { writer.error = 22 }
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mecharm_interfacesSrvSetCoords_Request(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvSetCoords_Request {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  let part7 = reader.signed8()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5, speed: part6, model: part7 }
}

/// @brief Own every original mecharm_interfaces/srv/SetCoords_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mecharm_interfacesSrvSetCoords_Response {
  /// @brief Original mecharm_interfaces/srv/SetCoords_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mecharm_interfacesSrvSetCoords_Response::new() -> Ros2Mecharm_interfacesSrvSetCoords_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mecharm_interfacesSrvSetCoords_ResponseCodec {
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
pub fn Ros2Mecharm_interfacesSrvSetCoords_ResponseCodec::new() -> Ros2Mecharm_interfacesSrvSetCoords_ResponseCodec {
  { ros_version: 2, native_type: "mecharm_interfaces/srv/SetCoords_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvSetCoords_ResponseCodec::encode(
  _self : Ros2Mecharm_interfacesSrvSetCoords_ResponseCodec,
  value : Ros2Mecharm_interfacesSrvSetCoords_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mecharm_interfacesSrvSetCoords_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mecharm_interfacesSrvSetCoords_ResponseCodec::decode(
  _self : Ros2Mecharm_interfacesSrvSetCoords_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mecharm_interfacesSrvSetCoords_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mecharm_interfacesSrvSetCoords_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mecharm_interfacesSrvSetCoords_Response(
  writer : BoundedWriter,
  value : Ros2Mecharm_interfacesSrvSetCoords_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mecharm_interfacesSrvSetCoords_Response(reader : BoundedReader) -> Ros2Mecharm_interfacesSrvSetCoords_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mycobot_interfaces/msg/MycobotAngles field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesMsgMycobotAngles {
  /// @brief Original mycobot_interfaces/msg/MycobotAngles.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mycobot_interfaces/msg/MycobotAngles.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mycobot_interfaces/msg/MycobotAngles.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mycobot_interfaces/msg/MycobotAngles.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mycobot_interfaces/msg/MycobotAngles.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mycobot_interfaces/msg/MycobotAngles.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesMsgMycobotAngles::new() -> Ros2Mycobot_interfacesMsgMycobotAngles {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mycobot_interfacesMsgMycobotAnglesCodec {
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
pub fn Ros2Mycobot_interfacesMsgMycobotAnglesCodec::new() -> Ros2Mycobot_interfacesMsgMycobotAnglesCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/msg/MycobotAngles",
    native_identity: None,
    codec_identity: "UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotAnglesCodec::encode(
  _self : Ros2Mycobot_interfacesMsgMycobotAnglesCodec,
  value : Ros2Mycobot_interfacesMsgMycobotAngles,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mycobot_interfacesMsgMycobotAngles(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotAnglesCodec::decode(
  _self : Ros2Mycobot_interfacesMsgMycobotAnglesCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesMsgMycobotAngles, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesMsgMycobotAngles(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesMsgMycobotAngles(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesMsgMycobotAngles,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
}
fn read_Ros2Mycobot_interfacesMsgMycobotAngles(reader : BoundedReader) -> Ros2Mycobot_interfacesMsgMycobotAngles {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5 }
}

/// @brief Own every original mycobot_interfaces/msg/MycobotCoords field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesMsgMycobotCoords {
  /// @brief Original mycobot_interfaces/msg/MycobotCoords.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mycobot_interfaces/msg/MycobotCoords.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mycobot_interfaces/msg/MycobotCoords.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mycobot_interfaces/msg/MycobotCoords.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mycobot_interfaces/msg/MycobotCoords.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mycobot_interfaces/msg/MycobotCoords.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesMsgMycobotCoords::new() -> Ros2Mycobot_interfacesMsgMycobotCoords {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mycobot_interfacesMsgMycobotCoordsCodec {
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
pub fn Ros2Mycobot_interfacesMsgMycobotCoordsCodec::new() -> Ros2Mycobot_interfacesMsgMycobotCoordsCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/msg/MycobotCoords",
    native_identity: None,
    codec_identity: "UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotCoordsCodec::encode(
  _self : Ros2Mycobot_interfacesMsgMycobotCoordsCodec,
  value : Ros2Mycobot_interfacesMsgMycobotCoords,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mycobot_interfacesMsgMycobotCoords(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotCoordsCodec::decode(
  _self : Ros2Mycobot_interfacesMsgMycobotCoordsCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesMsgMycobotCoords, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesMsgMycobotCoords(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesMsgMycobotCoords(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesMsgMycobotCoords,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
}
fn read_Ros2Mycobot_interfacesMsgMycobotCoords(reader : BoundedReader) -> Ros2Mycobot_interfacesMsgMycobotCoords {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5 }
}

/// @brief Own every original mycobot_interfaces/msg/MycobotGripperStatus field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesMsgMycobotGripperStatus {
  /// @brief Original mycobot_interfaces/msg/MycobotGripperStatus.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesMsgMycobotGripperStatus::new() -> Ros2Mycobot_interfacesMsgMycobotGripperStatus {
  {
    status: false,
  }
}
pub(all) struct Ros2Mycobot_interfacesMsgMycobotGripperStatusCodec {
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
pub fn Ros2Mycobot_interfacesMsgMycobotGripperStatusCodec::new() -> Ros2Mycobot_interfacesMsgMycobotGripperStatusCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/msg/MycobotGripperStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotGripperStatusCodec::encode(
  _self : Ros2Mycobot_interfacesMsgMycobotGripperStatusCodec,
  value : Ros2Mycobot_interfacesMsgMycobotGripperStatus,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_interfacesMsgMycobotGripperStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotGripperStatusCodec::decode(
  _self : Ros2Mycobot_interfacesMsgMycobotGripperStatusCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesMsgMycobotGripperStatus, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesMsgMycobotGripperStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesMsgMycobotGripperStatus(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesMsgMycobotGripperStatus,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mycobot_interfacesMsgMycobotGripperStatus(reader : BoundedReader) -> Ros2Mycobot_interfacesMsgMycobotGripperStatus {
  let part0 = reader.boolean()
  { status: part0 }
}

/// @brief Own every original mycobot_interfaces/msg/MycobotPumpStatus field.
/// @details 3 ordered fields, canonical extent 3..3 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesMsgMycobotPumpStatus {
  /// @brief Original mycobot_interfaces/msg/MycobotPumpStatus.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
  /// @brief Original mycobot_interfaces/msg/MycobotPumpStatus.pin1 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin1 : Int
  /// @brief Original mycobot_interfaces/msg/MycobotPumpStatus.pin2 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin2 : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesMsgMycobotPumpStatus::new() -> Ros2Mycobot_interfacesMsgMycobotPumpStatus {
  {
    status: false,
    pin1: 0,
    pin2: 0,
  }
}
pub(all) struct Ros2Mycobot_interfacesMsgMycobotPumpStatusCodec {
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
pub fn Ros2Mycobot_interfacesMsgMycobotPumpStatusCodec::new() -> Ros2Mycobot_interfacesMsgMycobotPumpStatusCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/msg/MycobotPumpStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58",
    min_wire_bytes: 3, max_wire_bytes: 3 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotPumpStatusCodec::encode(
  _self : Ros2Mycobot_interfacesMsgMycobotPumpStatusCodec,
  value : Ros2Mycobot_interfacesMsgMycobotPumpStatus,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 3, error: 0 }
  write_Ros2Mycobot_interfacesMsgMycobotPumpStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 3 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotPumpStatusCodec::decode(
  _self : Ros2Mycobot_interfacesMsgMycobotPumpStatusCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesMsgMycobotPumpStatus, Int] {
  if input.length() < 3 || input.length() > 3 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesMsgMycobotPumpStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesMsgMycobotPumpStatus(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesMsgMycobotPumpStatus,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.pin1
  if part1 < -128 || part1 > 127 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.pin2
  if part2 < -128 || part2 > 127 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mycobot_interfacesMsgMycobotPumpStatus(reader : BoundedReader) -> Ros2Mycobot_interfacesMsgMycobotPumpStatus {
  let part0 = reader.boolean()
  let part1 = reader.signed8()
  let part2 = reader.signed8()
  { status: part0, pin1: part1, pin2: part2 }
}

/// @brief Own every original mycobot_interfaces/msg/MycobotSetAngles field.
/// @details 7 ordered fields, canonical extent 25..25 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesMsgMycobotSetAngles {
  /// @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetAngles.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesMsgMycobotSetAngles::new() -> Ros2Mycobot_interfacesMsgMycobotSetAngles {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mycobot_interfacesMsgMycobotSetAnglesCodec {
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
pub fn Ros2Mycobot_interfacesMsgMycobotSetAnglesCodec::new() -> Ros2Mycobot_interfacesMsgMycobotSetAnglesCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/msg/MycobotSetAngles",
    native_identity: None,
    codec_identity: "UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e",
    min_wire_bytes: 25, max_wire_bytes: 25 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotSetAnglesCodec::encode(
  _self : Ros2Mycobot_interfacesMsgMycobotSetAnglesCodec,
  value : Ros2Mycobot_interfacesMsgMycobotSetAngles,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 25, error: 0 }
  write_Ros2Mycobot_interfacesMsgMycobotSetAngles(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotSetAnglesCodec::decode(
  _self : Ros2Mycobot_interfacesMsgMycobotSetAnglesCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesMsgMycobotSetAngles, Int] {
  if input.length() < 25 || input.length() > 25 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesMsgMycobotSetAngles(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesMsgMycobotSetAngles(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesMsgMycobotSetAngles,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mycobot_interfacesMsgMycobotSetAngles(reader : BoundedReader) -> Ros2Mycobot_interfacesMsgMycobotSetAngles {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5, speed: part6 }
}

/// @brief Own every original mycobot_interfaces/msg/MycobotSetCoords field.
/// @details 8 ordered fields, canonical extent 26..26 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesMsgMycobotSetCoords {
  /// @brief Original mycobot_interfaces/msg/MycobotSetCoords.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetCoords.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetCoords.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetCoords.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetCoords.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetCoords.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
  /// @brief Original mycobot_interfaces/msg/MycobotSetCoords.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
  /// @brief Original mycobot_interfaces/msg/MycobotSetCoords.model field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut model : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesMsgMycobotSetCoords::new() -> Ros2Mycobot_interfacesMsgMycobotSetCoords {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
    speed: 0,
    model: 0,
  }
}
pub(all) struct Ros2Mycobot_interfacesMsgMycobotSetCoordsCodec {
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
pub fn Ros2Mycobot_interfacesMsgMycobotSetCoordsCodec::new() -> Ros2Mycobot_interfacesMsgMycobotSetCoordsCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/msg/MycobotSetCoords",
    native_identity: None,
    codec_identity: "UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49",
    min_wire_bytes: 26, max_wire_bytes: 26 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotSetCoordsCodec::encode(
  _self : Ros2Mycobot_interfacesMsgMycobotSetCoordsCodec,
  value : Ros2Mycobot_interfacesMsgMycobotSetCoords,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 26, error: 0 }
  write_Ros2Mycobot_interfacesMsgMycobotSetCoords(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 26 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesMsgMycobotSetCoordsCodec::decode(
  _self : Ros2Mycobot_interfacesMsgMycobotSetCoordsCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesMsgMycobotSetCoords, Int] {
  if input.length() < 26 || input.length() > 26 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesMsgMycobotSetCoords(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesMsgMycobotSetCoords(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesMsgMycobotSetCoords,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part7 = value.model
  if part7 < -128 || part7 > 127 { writer.error = 22 }
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mycobot_interfacesMsgMycobotSetCoords(reader : BoundedReader) -> Ros2Mycobot_interfacesMsgMycobotSetCoords {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  let part7 = reader.signed8()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5, speed: part6, model: part7 }
}

pub(all) enum Ros2Mycobot_interfacesSrvGetAngles_Request { Ros2Mycobot_interfacesSrvGetAngles_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvGetAngles_Request::new() -> Ros2Mycobot_interfacesSrvGetAngles_Request { Ros2Mycobot_interfacesSrvGetAngles_RequestEmpty }
pub(all) struct Ros2Mycobot_interfacesSrvGetAngles_RequestCodec {
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
pub fn Ros2Mycobot_interfacesSrvGetAngles_RequestCodec::new() -> Ros2Mycobot_interfacesSrvGetAngles_RequestCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/GetAngles_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGetAngles_RequestCodec::encode(
  _self : Ros2Mycobot_interfacesSrvGetAngles_RequestCodec,
  value : Ros2Mycobot_interfacesSrvGetAngles_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Mycobot_interfacesSrvGetAngles_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGetAngles_RequestCodec::decode(
  _self : Ros2Mycobot_interfacesSrvGetAngles_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvGetAngles_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvGetAngles_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvGetAngles_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvGetAngles_Request,
) -> Unit {
}
fn read_Ros2Mycobot_interfacesSrvGetAngles_Request(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvGetAngles_Request {
  Ros2Mycobot_interfacesSrvGetAngles_RequestEmpty
}

/// @brief Own every original mycobot_interfaces/srv/GetAngles_Response field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesSrvGetAngles_Response {
  /// @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvGetAngles_Response::new() -> Ros2Mycobot_interfacesSrvGetAngles_Response {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mycobot_interfacesSrvGetAngles_ResponseCodec {
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
pub fn Ros2Mycobot_interfacesSrvGetAngles_ResponseCodec::new() -> Ros2Mycobot_interfacesSrvGetAngles_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/GetAngles_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGetAngles_ResponseCodec::encode(
  _self : Ros2Mycobot_interfacesSrvGetAngles_ResponseCodec,
  value : Ros2Mycobot_interfacesSrvGetAngles_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mycobot_interfacesSrvGetAngles_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGetAngles_ResponseCodec::decode(
  _self : Ros2Mycobot_interfacesSrvGetAngles_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvGetAngles_Response, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvGetAngles_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvGetAngles_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvGetAngles_Response,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
}
fn read_Ros2Mycobot_interfacesSrvGetAngles_Response(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvGetAngles_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5 }
}

pub(all) enum Ros2Mycobot_interfacesSrvGetCoords_Request { Ros2Mycobot_interfacesSrvGetCoords_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvGetCoords_Request::new() -> Ros2Mycobot_interfacesSrvGetCoords_Request { Ros2Mycobot_interfacesSrvGetCoords_RequestEmpty }
pub(all) struct Ros2Mycobot_interfacesSrvGetCoords_RequestCodec {
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
pub fn Ros2Mycobot_interfacesSrvGetCoords_RequestCodec::new() -> Ros2Mycobot_interfacesSrvGetCoords_RequestCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/GetCoords_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGetCoords_RequestCodec::encode(
  _self : Ros2Mycobot_interfacesSrvGetCoords_RequestCodec,
  value : Ros2Mycobot_interfacesSrvGetCoords_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Mycobot_interfacesSrvGetCoords_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGetCoords_RequestCodec::decode(
  _self : Ros2Mycobot_interfacesSrvGetCoords_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvGetCoords_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvGetCoords_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvGetCoords_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvGetCoords_Request,
) -> Unit {
}
fn read_Ros2Mycobot_interfacesSrvGetCoords_Request(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvGetCoords_Request {
  Ros2Mycobot_interfacesSrvGetCoords_RequestEmpty
}

/// @brief Own every original mycobot_interfaces/srv/GetCoords_Response field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesSrvGetCoords_Response {
  /// @brief Original mycobot_interfaces/srv/GetCoords_Response.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mycobot_interfaces/srv/GetCoords_Response.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mycobot_interfaces/srv/GetCoords_Response.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mycobot_interfaces/srv/GetCoords_Response.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mycobot_interfaces/srv/GetCoords_Response.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mycobot_interfaces/srv/GetCoords_Response.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvGetCoords_Response::new() -> Ros2Mycobot_interfacesSrvGetCoords_Response {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mycobot_interfacesSrvGetCoords_ResponseCodec {
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
pub fn Ros2Mycobot_interfacesSrvGetCoords_ResponseCodec::new() -> Ros2Mycobot_interfacesSrvGetCoords_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/GetCoords_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGetCoords_ResponseCodec::encode(
  _self : Ros2Mycobot_interfacesSrvGetCoords_ResponseCodec,
  value : Ros2Mycobot_interfacesSrvGetCoords_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mycobot_interfacesSrvGetCoords_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGetCoords_ResponseCodec::decode(
  _self : Ros2Mycobot_interfacesSrvGetCoords_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvGetCoords_Response, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvGetCoords_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvGetCoords_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvGetCoords_Response,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
}
fn read_Ros2Mycobot_interfacesSrvGetCoords_Response(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvGetCoords_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5 }
}

/// @brief Own every original mycobot_interfaces/srv/GripperStatus_Request field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesSrvGripperStatus_Request {
  /// @brief Original mycobot_interfaces/srv/GripperStatus_Request.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvGripperStatus_Request::new() -> Ros2Mycobot_interfacesSrvGripperStatus_Request {
  {
    status: false,
  }
}
pub(all) struct Ros2Mycobot_interfacesSrvGripperStatus_RequestCodec {
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
pub fn Ros2Mycobot_interfacesSrvGripperStatus_RequestCodec::new() -> Ros2Mycobot_interfacesSrvGripperStatus_RequestCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/GripperStatus_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGripperStatus_RequestCodec::encode(
  _self : Ros2Mycobot_interfacesSrvGripperStatus_RequestCodec,
  value : Ros2Mycobot_interfacesSrvGripperStatus_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_interfacesSrvGripperStatus_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGripperStatus_RequestCodec::decode(
  _self : Ros2Mycobot_interfacesSrvGripperStatus_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvGripperStatus_Request, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvGripperStatus_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvGripperStatus_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvGripperStatus_Request,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mycobot_interfacesSrvGripperStatus_Request(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvGripperStatus_Request {
  let part0 = reader.boolean()
  { status: part0 }
}

/// @brief Own every original mycobot_interfaces/srv/GripperStatus_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesSrvGripperStatus_Response {
  /// @brief Original mycobot_interfaces/srv/GripperStatus_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvGripperStatus_Response::new() -> Ros2Mycobot_interfacesSrvGripperStatus_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodec {
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
pub fn Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodec::new() -> Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/GripperStatus_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodec::encode(
  _self : Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodec,
  value : Ros2Mycobot_interfacesSrvGripperStatus_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_interfacesSrvGripperStatus_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodec::decode(
  _self : Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvGripperStatus_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvGripperStatus_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvGripperStatus_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvGripperStatus_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mycobot_interfacesSrvGripperStatus_Response(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvGripperStatus_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mycobot_interfaces/srv/PumpStatus_Request field.
/// @details 3 ordered fields, canonical extent 3..3 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesSrvPumpStatus_Request {
  /// @brief Original mycobot_interfaces/srv/PumpStatus_Request.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
  /// @brief Original mycobot_interfaces/srv/PumpStatus_Request.pin1 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin1 : Int
  /// @brief Original mycobot_interfaces/srv/PumpStatus_Request.pin2 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin2 : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvPumpStatus_Request::new() -> Ros2Mycobot_interfacesSrvPumpStatus_Request {
  {
    status: false,
    pin1: 0,
    pin2: 0,
  }
}
pub(all) struct Ros2Mycobot_interfacesSrvPumpStatus_RequestCodec {
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
pub fn Ros2Mycobot_interfacesSrvPumpStatus_RequestCodec::new() -> Ros2Mycobot_interfacesSrvPumpStatus_RequestCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/PumpStatus_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0",
    min_wire_bytes: 3, max_wire_bytes: 3 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvPumpStatus_RequestCodec::encode(
  _self : Ros2Mycobot_interfacesSrvPumpStatus_RequestCodec,
  value : Ros2Mycobot_interfacesSrvPumpStatus_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 3, error: 0 }
  write_Ros2Mycobot_interfacesSrvPumpStatus_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 3 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvPumpStatus_RequestCodec::decode(
  _self : Ros2Mycobot_interfacesSrvPumpStatus_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvPumpStatus_Request, Int] {
  if input.length() < 3 || input.length() > 3 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvPumpStatus_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvPumpStatus_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvPumpStatus_Request,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.pin1
  if part1 < -128 || part1 > 127 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.pin2
  if part2 < -128 || part2 > 127 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mycobot_interfacesSrvPumpStatus_Request(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvPumpStatus_Request {
  let part0 = reader.boolean()
  let part1 = reader.signed8()
  let part2 = reader.signed8()
  { status: part0, pin1: part1, pin2: part2 }
}

/// @brief Own every original mycobot_interfaces/srv/PumpStatus_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesSrvPumpStatus_Response {
  /// @brief Original mycobot_interfaces/srv/PumpStatus_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvPumpStatus_Response::new() -> Ros2Mycobot_interfacesSrvPumpStatus_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodec {
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
pub fn Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodec::new() -> Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/PumpStatus_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodec::encode(
  _self : Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodec,
  value : Ros2Mycobot_interfacesSrvPumpStatus_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_interfacesSrvPumpStatus_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodec::decode(
  _self : Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvPumpStatus_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvPumpStatus_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvPumpStatus_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvPumpStatus_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mycobot_interfacesSrvPumpStatus_Response(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvPumpStatus_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mycobot_interfaces/srv/SetAngles_Request field.
/// @details 7 ordered fields, canonical extent 25..25 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesSrvSetAngles_Request {
  /// @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
  /// @brief Original mycobot_interfaces/srv/SetAngles_Request.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvSetAngles_Request::new() -> Ros2Mycobot_interfacesSrvSetAngles_Request {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mycobot_interfacesSrvSetAngles_RequestCodec {
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
pub fn Ros2Mycobot_interfacesSrvSetAngles_RequestCodec::new() -> Ros2Mycobot_interfacesSrvSetAngles_RequestCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/SetAngles_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310",
    min_wire_bytes: 25, max_wire_bytes: 25 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvSetAngles_RequestCodec::encode(
  _self : Ros2Mycobot_interfacesSrvSetAngles_RequestCodec,
  value : Ros2Mycobot_interfacesSrvSetAngles_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 25, error: 0 }
  write_Ros2Mycobot_interfacesSrvSetAngles_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvSetAngles_RequestCodec::decode(
  _self : Ros2Mycobot_interfacesSrvSetAngles_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvSetAngles_Request, Int] {
  if input.length() < 25 || input.length() > 25 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvSetAngles_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvSetAngles_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvSetAngles_Request,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mycobot_interfacesSrvSetAngles_Request(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvSetAngles_Request {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5, speed: part6 }
}

/// @brief Own every original mycobot_interfaces/srv/SetAngles_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesSrvSetAngles_Response {
  /// @brief Original mycobot_interfaces/srv/SetAngles_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvSetAngles_Response::new() -> Ros2Mycobot_interfacesSrvSetAngles_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mycobot_interfacesSrvSetAngles_ResponseCodec {
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
pub fn Ros2Mycobot_interfacesSrvSetAngles_ResponseCodec::new() -> Ros2Mycobot_interfacesSrvSetAngles_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/SetAngles_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvSetAngles_ResponseCodec::encode(
  _self : Ros2Mycobot_interfacesSrvSetAngles_ResponseCodec,
  value : Ros2Mycobot_interfacesSrvSetAngles_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_interfacesSrvSetAngles_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvSetAngles_ResponseCodec::decode(
  _self : Ros2Mycobot_interfacesSrvSetAngles_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvSetAngles_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvSetAngles_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvSetAngles_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvSetAngles_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mycobot_interfacesSrvSetAngles_Response(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvSetAngles_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mycobot_interfaces/srv/SetCoords_Request field.
/// @details 8 ordered fields, canonical extent 26..26 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesSrvSetCoords_Request {
  /// @brief Original mycobot_interfaces/srv/SetCoords_Request.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mycobot_interfaces/srv/SetCoords_Request.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mycobot_interfaces/srv/SetCoords_Request.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mycobot_interfaces/srv/SetCoords_Request.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mycobot_interfaces/srv/SetCoords_Request.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mycobot_interfaces/srv/SetCoords_Request.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
  /// @brief Original mycobot_interfaces/srv/SetCoords_Request.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
  /// @brief Original mycobot_interfaces/srv/SetCoords_Request.model field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut model : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvSetCoords_Request::new() -> Ros2Mycobot_interfacesSrvSetCoords_Request {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
    speed: 0,
    model: 0,
  }
}
pub(all) struct Ros2Mycobot_interfacesSrvSetCoords_RequestCodec {
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
pub fn Ros2Mycobot_interfacesSrvSetCoords_RequestCodec::new() -> Ros2Mycobot_interfacesSrvSetCoords_RequestCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/SetCoords_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213",
    min_wire_bytes: 26, max_wire_bytes: 26 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvSetCoords_RequestCodec::encode(
  _self : Ros2Mycobot_interfacesSrvSetCoords_RequestCodec,
  value : Ros2Mycobot_interfacesSrvSetCoords_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 26, error: 0 }
  write_Ros2Mycobot_interfacesSrvSetCoords_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 26 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvSetCoords_RequestCodec::decode(
  _self : Ros2Mycobot_interfacesSrvSetCoords_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvSetCoords_Request, Int] {
  if input.length() < 26 || input.length() > 26 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvSetCoords_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvSetCoords_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvSetCoords_Request,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part7 = value.model
  if part7 < -128 || part7 > 127 { writer.error = 22 }
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mycobot_interfacesSrvSetCoords_Request(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvSetCoords_Request {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  let part7 = reader.signed8()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5, speed: part6, model: part7 }
}

/// @brief Own every original mycobot_interfaces/srv/SetCoords_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_interfacesSrvSetCoords_Response {
  /// @brief Original mycobot_interfaces/srv/SetCoords_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_interfacesSrvSetCoords_Response::new() -> Ros2Mycobot_interfacesSrvSetCoords_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mycobot_interfacesSrvSetCoords_ResponseCodec {
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
pub fn Ros2Mycobot_interfacesSrvSetCoords_ResponseCodec::new() -> Ros2Mycobot_interfacesSrvSetCoords_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_interfaces/srv/SetCoords_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvSetCoords_ResponseCodec::encode(
  _self : Ros2Mycobot_interfacesSrvSetCoords_ResponseCodec,
  value : Ros2Mycobot_interfacesSrvSetCoords_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_interfacesSrvSetCoords_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_interfacesSrvSetCoords_ResponseCodec::decode(
  _self : Ros2Mycobot_interfacesSrvSetCoords_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_interfacesSrvSetCoords_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_interfacesSrvSetCoords_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_interfacesSrvSetCoords_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_interfacesSrvSetCoords_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mycobot_interfacesSrvSetCoords_Response(reader : BoundedReader) -> Ros2Mycobot_interfacesSrvSetCoords_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mycobot_pro450_interfaces/msg/MycobotAngles field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesMsgMycobotAngles {
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotAngles::new() -> Ros2Mycobot_pro450_interfacesMsgMycobotAngles {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodec {
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
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodec::new() -> Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/msg/MycobotAngles",
    native_identity: None,
    codec_identity: "UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodec,
  value : Ros2Mycobot_pro450_interfacesMsgMycobotAngles,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mycobot_pro450_interfacesMsgMycobotAngles(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesMsgMycobotAngles, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesMsgMycobotAngles(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesMsgMycobotAngles(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesMsgMycobotAngles,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
}
fn read_Ros2Mycobot_pro450_interfacesMsgMycobotAngles(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesMsgMycobotAngles {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5 }
}

/// @brief Own every original mycobot_pro450_interfaces/msg/MycobotCoords field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesMsgMycobotCoords {
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotCoords::new() -> Ros2Mycobot_pro450_interfacesMsgMycobotCoords {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodec {
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
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodec::new() -> Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/msg/MycobotCoords",
    native_identity: None,
    codec_identity: "UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodec,
  value : Ros2Mycobot_pro450_interfacesMsgMycobotCoords,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mycobot_pro450_interfacesMsgMycobotCoords(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesMsgMycobotCoords, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesMsgMycobotCoords(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesMsgMycobotCoords(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesMsgMycobotCoords,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
}
fn read_Ros2Mycobot_pro450_interfacesMsgMycobotCoords(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesMsgMycobotCoords {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5 }
}

/// @brief Own every original mycobot_pro450_interfaces/msg/MycobotGripperStatus field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus {
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotGripperStatus.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus::new() -> Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus {
  {
    status: false,
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodec {
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
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodec::new() -> Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/msg/MycobotGripperStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodec,
  value : Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus {
  let part0 = reader.boolean()
  { status: part0 }
}

/// @brief Own every original mycobot_pro450_interfaces/msg/MycobotSetAngles field.
/// @details 7 ordered fields, canonical extent 25..25 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles {
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles::new() -> Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodec {
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
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodec::new() -> Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/msg/MycobotSetAngles",
    native_identity: None,
    codec_identity: "UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591",
    min_wire_bytes: 25, max_wire_bytes: 25 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodec,
  value : Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 25, error: 0 }
  write_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles, Int] {
  if input.length() < 25 || input.length() > 25 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5, speed: part6 }
}

/// @brief Own every original mycobot_pro450_interfaces/msg/MycobotSetCoords field.
/// @details 7 ordered fields, canonical extent 25..25 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords {
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
  /// @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords::new() -> Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodec {
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
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodec::new() -> Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/msg/MycobotSetCoords",
    native_identity: None,
    codec_identity: "UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea",
    min_wire_bytes: 25, max_wire_bytes: 25 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodec,
  value : Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 25, error: 0 }
  write_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords, Int] {
  if input.length() < 25 || input.length() > 25 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5, speed: part6 }
}

pub(all) enum Ros2Mycobot_pro450_interfacesSrvGetAngles_Request { Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvGetAngles_Request::new() -> Ros2Mycobot_pro450_interfacesSrvGetAngles_Request { Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestEmpty }
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodec::new() -> Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/GetAngles_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodec,
  value : Ros2Mycobot_pro450_interfacesSrvGetAngles_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvGetAngles_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvGetAngles_Request,
) -> Unit {
}
fn read_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvGetAngles_Request {
  Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestEmpty
}

/// @brief Own every original mycobot_pro450_interfaces/srv/GetAngles_Response field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGetAngles_Response {
  /// @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvGetAngles_Response::new() -> Ros2Mycobot_pro450_interfacesSrvGetAngles_Response {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodec::new() -> Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/GetAngles_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodec,
  value : Ros2Mycobot_pro450_interfacesSrvGetAngles_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvGetAngles_Response, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvGetAngles_Response,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
}
fn read_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvGetAngles_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5 }
}

pub(all) enum Ros2Mycobot_pro450_interfacesSrvGetCoords_Request { Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvGetCoords_Request::new() -> Ros2Mycobot_pro450_interfacesSrvGetCoords_Request { Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestEmpty }
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodec::new() -> Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/GetCoords_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodec,
  value : Ros2Mycobot_pro450_interfacesSrvGetCoords_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvGetCoords_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvGetCoords_Request,
) -> Unit {
}
fn read_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvGetCoords_Request {
  Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestEmpty
}

/// @brief Own every original mycobot_pro450_interfaces/srv/GetCoords_Response field.
/// @details 6 ordered fields, canonical extent 24..24 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGetCoords_Response {
  /// @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvGetCoords_Response::new() -> Ros2Mycobot_pro450_interfacesSrvGetCoords_Response {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodec::new() -> Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/GetCoords_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodec,
  value : Ros2Mycobot_pro450_interfacesSrvGetCoords_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvGetCoords_Response, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvGetCoords_Response,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
}
fn read_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvGetCoords_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5 }
}

pub(all) enum Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request { Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request::new() -> Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request { Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestEmpty }
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodec::new() -> Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/GetGripperValue_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodec,
  value : Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request,
) -> Unit {
}
fn read_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request {
  Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestEmpty
}

/// @brief Own every original mycobot_pro450_interfaces/srv/GetGripperValue_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response {
  /// @brief Original mycobot_pro450_interfaces/srv/GetGripperValue_Response.gripper_angle field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut gripper_angle : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response::new() -> Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response {
  {
    gripper_angle: 0,
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodec::new() -> Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/GetGripperValue_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodec,
  value : Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response,
) -> Unit {
  let part0 = value.gripper_angle
  if part0 < -128 || part0 > 127 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response {
  let part0 = reader.signed8()
  { gripper_angle: part0 }
}

/// @brief Own every original mycobot_pro450_interfaces/srv/GripperStatus_Request field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request {
  /// @brief Original mycobot_pro450_interfaces/srv/GripperStatus_Request.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request::new() -> Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request {
  {
    status: false,
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodec::new() -> Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/GripperStatus_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodec,
  value : Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request {
  let part0 = reader.boolean()
  { status: part0 }
}

/// @brief Own every original mycobot_pro450_interfaces/srv/GripperStatus_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response {
  /// @brief Original mycobot_pro450_interfaces/srv/GripperStatus_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response::new() -> Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodec::new() -> Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/GripperStatus_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodec,
  value : Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mycobot_pro450_interfaces/srv/SetAngles_Request field.
/// @details 7 ordered fields, canonical extent 25..25 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesSrvSetAngles_Request {
  /// @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_5 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_5 : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_6 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_6 : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvSetAngles_Request::new() -> Ros2Mycobot_pro450_interfacesSrvSetAngles_Request {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    joint_5: (0U).reinterpret_as_float(),
    joint_6: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodec::new() -> Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/SetAngles_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09",
    min_wire_bytes: 25, max_wire_bytes: 25 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodec,
  value : Ros2Mycobot_pro450_interfacesSrvSetAngles_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 25, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvSetAngles_Request, Int] {
  if input.length() < 25 || input.length() > 25 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvSetAngles_Request,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.joint_5
  writer.float32(part4)
  let part5 = value.joint_6
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvSetAngles_Request {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, joint_5: part4, joint_6: part5, speed: part6 }
}

/// @brief Own every original mycobot_pro450_interfaces/srv/SetAngles_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesSrvSetAngles_Response {
  /// @brief Original mycobot_pro450_interfaces/srv/SetAngles_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvSetAngles_Response::new() -> Ros2Mycobot_pro450_interfacesSrvSetAngles_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodec::new() -> Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/SetAngles_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodec,
  value : Ros2Mycobot_pro450_interfacesSrvSetAngles_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvSetAngles_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvSetAngles_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvSetAngles_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mycobot_pro450_interfaces/srv/SetCoords_Request field.
/// @details 7 ordered fields, canonical extent 25..25 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesSrvSetCoords_Request {
  /// @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.ry field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut ry : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.rz field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rz : Float
  /// @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvSetCoords_Request::new() -> Ros2Mycobot_pro450_interfacesSrvSetCoords_Request {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    ry: (0U).reinterpret_as_float(),
    rz: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodec::new() -> Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/SetCoords_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81",
    min_wire_bytes: 25, max_wire_bytes: 25 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodec,
  value : Ros2Mycobot_pro450_interfacesSrvSetCoords_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 25, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvSetCoords_Request, Int] {
  if input.length() < 25 || input.length() > 25 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvSetCoords_Request,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.ry
  writer.float32(part4)
  let part5 = value.rz
  writer.float32(part5)
  let part6 = value.speed
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvSetCoords_Request {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.signed8()
  { x: part0, y: part1, z: part2, rx: part3, ry: part4, rz: part5, speed: part6 }
}

/// @brief Own every original mycobot_pro450_interfaces/srv/SetCoords_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mycobot_pro450_interfacesSrvSetCoords_Response {
  /// @brief Original mycobot_pro450_interfaces/srv/SetCoords_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mycobot_pro450_interfacesSrvSetCoords_Response::new() -> Ros2Mycobot_pro450_interfacesSrvSetCoords_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodec {
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
pub fn Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodec::new() -> Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodec {
  { ros_version: 2, native_type: "mycobot_pro450_interfaces/srv/SetCoords_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodec::encode(
  _self : Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodec,
  value : Ros2Mycobot_pro450_interfacesSrvSetCoords_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodec::decode(
  _self : Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mycobot_pro450_interfacesSrvSetCoords_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response(
  writer : BoundedWriter,
  value : Ros2Mycobot_pro450_interfacesSrvSetCoords_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response(reader : BoundedReader) -> Ros2Mycobot_pro450_interfacesSrvSetCoords_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mypalletizer_interfaces/msg/MypalAngles field.
/// @details 4 ordered fields, canonical extent 16..16 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalAngles {
  /// @brief Original mypalletizer_interfaces/msg/MypalAngles.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalAngles.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalAngles.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalAngles.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesMsgMypalAngles::new() -> Ros2Mypalletizer_interfacesMsgMypalAngles {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalAnglesCodec {
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
pub fn Ros2Mypalletizer_interfacesMsgMypalAnglesCodec::new() -> Ros2Mypalletizer_interfacesMsgMypalAnglesCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/msg/MypalAngles",
    native_identity: None,
    codec_identity: "UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalAnglesCodec::encode(
  _self : Ros2Mypalletizer_interfacesMsgMypalAnglesCodec,
  value : Ros2Mypalletizer_interfacesMsgMypalAngles,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Mypalletizer_interfacesMsgMypalAngles(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalAnglesCodec::decode(
  _self : Ros2Mypalletizer_interfacesMsgMypalAnglesCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesMsgMypalAngles, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesMsgMypalAngles(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesMsgMypalAngles(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesMsgMypalAngles,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
}
fn read_Ros2Mypalletizer_interfacesMsgMypalAngles(reader : BoundedReader) -> Ros2Mypalletizer_interfacesMsgMypalAngles {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3 }
}

/// @brief Own every original mypalletizer_interfaces/msg/MypalCoords field.
/// @details 4 ordered fields, canonical extent 16..16 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalCoords {
  /// @brief Original mypalletizer_interfaces/msg/MypalCoords.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalCoords.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalCoords.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalCoords.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesMsgMypalCoords::new() -> Ros2Mypalletizer_interfacesMsgMypalCoords {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalCoordsCodec {
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
pub fn Ros2Mypalletizer_interfacesMsgMypalCoordsCodec::new() -> Ros2Mypalletizer_interfacesMsgMypalCoordsCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/msg/MypalCoords",
    native_identity: None,
    codec_identity: "UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalCoordsCodec::encode(
  _self : Ros2Mypalletizer_interfacesMsgMypalCoordsCodec,
  value : Ros2Mypalletizer_interfacesMsgMypalCoords,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Mypalletizer_interfacesMsgMypalCoords(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalCoordsCodec::decode(
  _self : Ros2Mypalletizer_interfacesMsgMypalCoordsCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesMsgMypalCoords, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesMsgMypalCoords(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesMsgMypalCoords(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesMsgMypalCoords,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
}
fn read_Ros2Mypalletizer_interfacesMsgMypalCoords(reader : BoundedReader) -> Ros2Mypalletizer_interfacesMsgMypalCoords {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { x: part0, y: part1, z: part2, rx: part3 }
}

/// @brief Own every original mypalletizer_interfaces/msg/MypalGripperStatus field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalGripperStatus {
  /// @brief Original mypalletizer_interfaces/msg/MypalGripperStatus.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesMsgMypalGripperStatus::new() -> Ros2Mypalletizer_interfacesMsgMypalGripperStatus {
  {
    status: false,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodec {
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
pub fn Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodec::new() -> Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/msg/MypalGripperStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodec::encode(
  _self : Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodec,
  value : Ros2Mypalletizer_interfacesMsgMypalGripperStatus,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mypalletizer_interfacesMsgMypalGripperStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodec::decode(
  _self : Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesMsgMypalGripperStatus, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesMsgMypalGripperStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesMsgMypalGripperStatus(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesMsgMypalGripperStatus,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mypalletizer_interfacesMsgMypalGripperStatus(reader : BoundedReader) -> Ros2Mypalletizer_interfacesMsgMypalGripperStatus {
  let part0 = reader.boolean()
  { status: part0 }
}

/// @brief Own every original mypalletizer_interfaces/msg/MypalPumpStatus field.
/// @details 3 ordered fields, canonical extent 3..3 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalPumpStatus {
  /// @brief Original mypalletizer_interfaces/msg/MypalPumpStatus.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
  /// @brief Original mypalletizer_interfaces/msg/MypalPumpStatus.pin1 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin1 : Int
  /// @brief Original mypalletizer_interfaces/msg/MypalPumpStatus.pin2 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin2 : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesMsgMypalPumpStatus::new() -> Ros2Mypalletizer_interfacesMsgMypalPumpStatus {
  {
    status: false,
    pin1: 0,
    pin2: 0,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodec {
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
pub fn Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodec::new() -> Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/msg/MypalPumpStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c",
    min_wire_bytes: 3, max_wire_bytes: 3 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodec::encode(
  _self : Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodec,
  value : Ros2Mypalletizer_interfacesMsgMypalPumpStatus,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 3, error: 0 }
  write_Ros2Mypalletizer_interfacesMsgMypalPumpStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 3 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodec::decode(
  _self : Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesMsgMypalPumpStatus, Int] {
  if input.length() < 3 || input.length() > 3 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesMsgMypalPumpStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesMsgMypalPumpStatus(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesMsgMypalPumpStatus,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.pin1
  if part1 < -128 || part1 > 127 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.pin2
  if part2 < -128 || part2 > 127 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mypalletizer_interfacesMsgMypalPumpStatus(reader : BoundedReader) -> Ros2Mypalletizer_interfacesMsgMypalPumpStatus {
  let part0 = reader.boolean()
  let part1 = reader.signed8()
  let part2 = reader.signed8()
  { status: part0, pin1: part1, pin2: part2 }
}

/// @brief Own every original mypalletizer_interfaces/msg/MypalSetAngles field.
/// @details 5 ordered fields, canonical extent 17..17 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalSetAngles {
  /// @brief Original mypalletizer_interfaces/msg/MypalSetAngles.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalSetAngles.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalSetAngles.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalSetAngles.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalSetAngles.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesMsgMypalSetAngles::new() -> Ros2Mypalletizer_interfacesMsgMypalSetAngles {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodec {
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
pub fn Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodec::new() -> Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/msg/MypalSetAngles",
    native_identity: None,
    codec_identity: "UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5",
    min_wire_bytes: 17, max_wire_bytes: 17 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodec::encode(
  _self : Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodec,
  value : Ros2Mypalletizer_interfacesMsgMypalSetAngles,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 17, error: 0 }
  write_Ros2Mypalletizer_interfacesMsgMypalSetAngles(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodec::decode(
  _self : Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesMsgMypalSetAngles, Int] {
  if input.length() < 17 || input.length() > 17 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesMsgMypalSetAngles(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesMsgMypalSetAngles(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesMsgMypalSetAngles,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.speed
  if part4 < -128 || part4 > 127 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mypalletizer_interfacesMsgMypalSetAngles(reader : BoundedReader) -> Ros2Mypalletizer_interfacesMsgMypalSetAngles {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.signed8()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, speed: part4 }
}

/// @brief Own every original mypalletizer_interfaces/msg/MypalSetCoords field.
/// @details 5 ordered fields, canonical extent 17..17 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalSetCoords {
  /// @brief Original mypalletizer_interfaces/msg/MypalSetCoords.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalSetCoords.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalSetCoords.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalSetCoords.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mypalletizer_interfaces/msg/MypalSetCoords.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesMsgMypalSetCoords::new() -> Ros2Mypalletizer_interfacesMsgMypalSetCoords {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodec {
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
pub fn Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodec::new() -> Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/msg/MypalSetCoords",
    native_identity: None,
    codec_identity: "UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79",
    min_wire_bytes: 17, max_wire_bytes: 17 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodec::encode(
  _self : Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodec,
  value : Ros2Mypalletizer_interfacesMsgMypalSetCoords,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 17, error: 0 }
  write_Ros2Mypalletizer_interfacesMsgMypalSetCoords(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodec::decode(
  _self : Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesMsgMypalSetCoords, Int] {
  if input.length() < 17 || input.length() > 17 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesMsgMypalSetCoords(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesMsgMypalSetCoords(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesMsgMypalSetCoords,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.speed
  if part4 < -128 || part4 > 127 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mypalletizer_interfacesMsgMypalSetCoords(reader : BoundedReader) -> Ros2Mypalletizer_interfacesMsgMypalSetCoords {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.signed8()
  { x: part0, y: part1, z: part2, rx: part3, speed: part4 }
}

pub(all) enum Ros2Mypalletizer_interfacesSrvGetAngles_Request { Ros2Mypalletizer_interfacesSrvGetAngles_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvGetAngles_Request::new() -> Ros2Mypalletizer_interfacesSrvGetAngles_Request { Ros2Mypalletizer_interfacesSrvGetAngles_RequestEmpty }
pub(all) struct Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodec::new() -> Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/GetAngles_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodec,
  value : Ros2Mypalletizer_interfacesSrvGetAngles_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvGetAngles_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvGetAngles_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvGetAngles_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvGetAngles_Request(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvGetAngles_Request,
) -> Unit {
}
fn read_Ros2Mypalletizer_interfacesSrvGetAngles_Request(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvGetAngles_Request {
  Ros2Mypalletizer_interfacesSrvGetAngles_RequestEmpty
}

/// @brief Own every original mypalletizer_interfaces/srv/GetAngles_Response field.
/// @details 4 ordered fields, canonical extent 16..16 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesSrvGetAngles_Response {
  /// @brief Original mypalletizer_interfaces/srv/GetAngles_Response.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mypalletizer_interfaces/srv/GetAngles_Response.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mypalletizer_interfaces/srv/GetAngles_Response.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mypalletizer_interfaces/srv/GetAngles_Response.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvGetAngles_Response::new() -> Ros2Mypalletizer_interfacesSrvGetAngles_Response {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodec::new() -> Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/GetAngles_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodec,
  value : Ros2Mypalletizer_interfacesSrvGetAngles_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvGetAngles_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvGetAngles_Response, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvGetAngles_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvGetAngles_Response(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvGetAngles_Response,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
}
fn read_Ros2Mypalletizer_interfacesSrvGetAngles_Response(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvGetAngles_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3 }
}

pub(all) enum Ros2Mypalletizer_interfacesSrvGetCoords_Request { Ros2Mypalletizer_interfacesSrvGetCoords_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvGetCoords_Request::new() -> Ros2Mypalletizer_interfacesSrvGetCoords_Request { Ros2Mypalletizer_interfacesSrvGetCoords_RequestEmpty }
pub(all) struct Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodec::new() -> Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/GetCoords_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodec,
  value : Ros2Mypalletizer_interfacesSrvGetCoords_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvGetCoords_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvGetCoords_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvGetCoords_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvGetCoords_Request(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvGetCoords_Request,
) -> Unit {
}
fn read_Ros2Mypalletizer_interfacesSrvGetCoords_Request(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvGetCoords_Request {
  Ros2Mypalletizer_interfacesSrvGetCoords_RequestEmpty
}

/// @brief Own every original mypalletizer_interfaces/srv/GetCoords_Response field.
/// @details 4 ordered fields, canonical extent 16..16 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesSrvGetCoords_Response {
  /// @brief Original mypalletizer_interfaces/srv/GetCoords_Response.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mypalletizer_interfaces/srv/GetCoords_Response.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mypalletizer_interfaces/srv/GetCoords_Response.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mypalletizer_interfaces/srv/GetCoords_Response.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvGetCoords_Response::new() -> Ros2Mypalletizer_interfacesSrvGetCoords_Response {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodec::new() -> Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/GetCoords_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodec,
  value : Ros2Mypalletizer_interfacesSrvGetCoords_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvGetCoords_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvGetCoords_Response, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvGetCoords_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvGetCoords_Response(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvGetCoords_Response,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
}
fn read_Ros2Mypalletizer_interfacesSrvGetCoords_Response(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvGetCoords_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { x: part0, y: part1, z: part2, rx: part3 }
}

/// @brief Own every original mypalletizer_interfaces/srv/GripperStatus_Request field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesSrvGripperStatus_Request {
  /// @brief Original mypalletizer_interfaces/srv/GripperStatus_Request.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvGripperStatus_Request::new() -> Ros2Mypalletizer_interfacesSrvGripperStatus_Request {
  {
    status: false,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodec::new() -> Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/GripperStatus_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodec,
  value : Ros2Mypalletizer_interfacesSrvGripperStatus_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvGripperStatus_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvGripperStatus_Request, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvGripperStatus_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvGripperStatus_Request(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvGripperStatus_Request,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mypalletizer_interfacesSrvGripperStatus_Request(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvGripperStatus_Request {
  let part0 = reader.boolean()
  { status: part0 }
}

/// @brief Own every original mypalletizer_interfaces/srv/GripperStatus_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesSrvGripperStatus_Response {
  /// @brief Original mypalletizer_interfaces/srv/GripperStatus_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvGripperStatus_Response::new() -> Ros2Mypalletizer_interfacesSrvGripperStatus_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodec::new() -> Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/GripperStatus_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodec,
  value : Ros2Mypalletizer_interfacesSrvGripperStatus_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvGripperStatus_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvGripperStatus_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvGripperStatus_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvGripperStatus_Response(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvGripperStatus_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mypalletizer_interfacesSrvGripperStatus_Response(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvGripperStatus_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mypalletizer_interfaces/srv/PumpStatus_Request field.
/// @details 3 ordered fields, canonical extent 3..3 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesSrvPumpStatus_Request {
  /// @brief Original mypalletizer_interfaces/srv/PumpStatus_Request.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
  /// @brief Original mypalletizer_interfaces/srv/PumpStatus_Request.pin1 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin1 : Int
  /// @brief Original mypalletizer_interfaces/srv/PumpStatus_Request.pin2 field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut pin2 : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvPumpStatus_Request::new() -> Ros2Mypalletizer_interfacesSrvPumpStatus_Request {
  {
    status: false,
    pin1: 0,
    pin2: 0,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodec::new() -> Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/PumpStatus_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f",
    min_wire_bytes: 3, max_wire_bytes: 3 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodec,
  value : Ros2Mypalletizer_interfacesSrvPumpStatus_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 3, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvPumpStatus_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 3 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvPumpStatus_Request, Int] {
  if input.length() < 3 || input.length() > 3 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvPumpStatus_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvPumpStatus_Request(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvPumpStatus_Request,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.pin1
  if part1 < -128 || part1 > 127 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.pin2
  if part2 < -128 || part2 > 127 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mypalletizer_interfacesSrvPumpStatus_Request(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvPumpStatus_Request {
  let part0 = reader.boolean()
  let part1 = reader.signed8()
  let part2 = reader.signed8()
  { status: part0, pin1: part1, pin2: part2 }
}

/// @brief Own every original mypalletizer_interfaces/srv/PumpStatus_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesSrvPumpStatus_Response {
  /// @brief Original mypalletizer_interfaces/srv/PumpStatus_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvPumpStatus_Response::new() -> Ros2Mypalletizer_interfacesSrvPumpStatus_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodec::new() -> Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/PumpStatus_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodec,
  value : Ros2Mypalletizer_interfacesSrvPumpStatus_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvPumpStatus_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvPumpStatus_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvPumpStatus_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvPumpStatus_Response(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvPumpStatus_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mypalletizer_interfacesSrvPumpStatus_Response(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvPumpStatus_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mypalletizer_interfaces/srv/SetAngles_Request field.
/// @details 5 ordered fields, canonical extent 17..17 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesSrvSetAngles_Request {
  /// @brief Original mypalletizer_interfaces/srv/SetAngles_Request.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original mypalletizer_interfaces/srv/SetAngles_Request.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original mypalletizer_interfaces/srv/SetAngles_Request.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original mypalletizer_interfaces/srv/SetAngles_Request.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original mypalletizer_interfaces/srv/SetAngles_Request.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvSetAngles_Request::new() -> Ros2Mypalletizer_interfacesSrvSetAngles_Request {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodec::new() -> Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/SetAngles_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec",
    min_wire_bytes: 17, max_wire_bytes: 17 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodec,
  value : Ros2Mypalletizer_interfacesSrvSetAngles_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 17, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvSetAngles_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvSetAngles_Request, Int] {
  if input.length() < 17 || input.length() > 17 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvSetAngles_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvSetAngles_Request(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvSetAngles_Request,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.speed
  if part4 < -128 || part4 > 127 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mypalletizer_interfacesSrvSetAngles_Request(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvSetAngles_Request {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.signed8()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, speed: part4 }
}

/// @brief Own every original mypalletizer_interfaces/srv/SetAngles_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesSrvSetAngles_Response {
  /// @brief Original mypalletizer_interfaces/srv/SetAngles_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvSetAngles_Response::new() -> Ros2Mypalletizer_interfacesSrvSetAngles_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodec::new() -> Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/SetAngles_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodec,
  value : Ros2Mypalletizer_interfacesSrvSetAngles_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvSetAngles_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvSetAngles_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvSetAngles_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvSetAngles_Response(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvSetAngles_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mypalletizer_interfacesSrvSetAngles_Response(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvSetAngles_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original mypalletizer_interfaces/srv/SetCoords_Request field.
/// @details 5 ordered fields, canonical extent 17..17 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesSrvSetCoords_Request {
  /// @brief Original mypalletizer_interfaces/srv/SetCoords_Request.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original mypalletizer_interfaces/srv/SetCoords_Request.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original mypalletizer_interfaces/srv/SetCoords_Request.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original mypalletizer_interfaces/srv/SetCoords_Request.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original mypalletizer_interfaces/srv/SetCoords_Request.speed field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvSetCoords_Request::new() -> Ros2Mypalletizer_interfacesSrvSetCoords_Request {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodec::new() -> Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/SetCoords_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541",
    min_wire_bytes: 17, max_wire_bytes: 17 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodec,
  value : Ros2Mypalletizer_interfacesSrvSetCoords_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 17, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvSetCoords_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvSetCoords_Request, Int] {
  if input.length() < 17 || input.length() > 17 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvSetCoords_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvSetCoords_Request(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvSetCoords_Request,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.speed
  if part4 < -128 || part4 > 127 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Mypalletizer_interfacesSrvSetCoords_Request(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvSetCoords_Request {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.signed8()
  { x: part0, y: part1, z: part2, rx: part3, speed: part4 }
}

/// @brief Own every original mypalletizer_interfaces/srv/SetCoords_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Mypalletizer_interfacesSrvSetCoords_Response {
  /// @brief Original mypalletizer_interfaces/srv/SetCoords_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Mypalletizer_interfacesSrvSetCoords_Response::new() -> Ros2Mypalletizer_interfacesSrvSetCoords_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodec {
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
pub fn Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodec::new() -> Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodec {
  { ros_version: 2, native_type: "mypalletizer_interfaces/srv/SetCoords_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodec::encode(
  _self : Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodec,
  value : Ros2Mypalletizer_interfacesSrvSetCoords_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Mypalletizer_interfacesSrvSetCoords_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodec::decode(
  _self : Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Mypalletizer_interfacesSrvSetCoords_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Mypalletizer_interfacesSrvSetCoords_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Mypalletizer_interfacesSrvSetCoords_Response(
  writer : BoundedWriter,
  value : Ros2Mypalletizer_interfacesSrvSetCoords_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Mypalletizer_interfacesSrvSetCoords_Response(reader : BoundedReader) -> Ros2Mypalletizer_interfacesSrvSetCoords_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original ultraarm_p1_interfaces/msg/MycobotAngles field.
/// @details 4 ordered fields, canonical extent 16..16 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesMsgMycobotAngles {
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotAngles.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotAngles.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotAngles.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotAngles.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotAngles::new() -> Ros2Ultraarm_p1_interfacesMsgMycobotAngles {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesMsgMycobotAnglesCodec {
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
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotAnglesCodec::new() -> Ros2Ultraarm_p1_interfacesMsgMycobotAnglesCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/msg/MycobotAngles",
    native_identity: None,
    codec_identity: "UWVMROS1_75965ba712c12f465c2424b540359dbc4c88e2e85aa772698ee040db7c32a945",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotAnglesCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesMsgMycobotAnglesCodec,
  value : Ros2Ultraarm_p1_interfacesMsgMycobotAngles,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Ultraarm_p1_interfacesMsgMycobotAngles(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotAnglesCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesMsgMycobotAnglesCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesMsgMycobotAngles, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesMsgMycobotAngles(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesMsgMycobotAngles(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesMsgMycobotAngles,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
}
fn read_Ros2Ultraarm_p1_interfacesMsgMycobotAngles(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesMsgMycobotAngles {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3 }
}

/// @brief Own every original ultraarm_p1_interfaces/msg/MycobotCoords field.
/// @details 4 ordered fields, canonical extent 16..16 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesMsgMycobotCoords {
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotCoords.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotCoords.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotCoords.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotCoords.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotCoords::new() -> Ros2Ultraarm_p1_interfacesMsgMycobotCoords {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesMsgMycobotCoordsCodec {
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
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotCoordsCodec::new() -> Ros2Ultraarm_p1_interfacesMsgMycobotCoordsCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/msg/MycobotCoords",
    native_identity: None,
    codec_identity: "UWVMROS1_c79774c9af7fb4c150cb18c2510df52bbc7bad3c05b604abf90e19087aa05874",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotCoordsCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesMsgMycobotCoordsCodec,
  value : Ros2Ultraarm_p1_interfacesMsgMycobotCoords,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Ultraarm_p1_interfacesMsgMycobotCoords(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotCoordsCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesMsgMycobotCoordsCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesMsgMycobotCoords, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesMsgMycobotCoords(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesMsgMycobotCoords(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesMsgMycobotCoords,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
}
fn read_Ros2Ultraarm_p1_interfacesMsgMycobotCoords(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesMsgMycobotCoords {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { x: part0, y: part1, z: part2, rx: part3 }
}

/// @brief Own every original ultraarm_p1_interfaces/msg/MycobotGripperStatus field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus {
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotGripperStatus.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus::new() -> Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus {
  {
    status: false,
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatusCodec {
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
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatusCodec::new() -> Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatusCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/msg/MycobotGripperStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_1efb83ff22c5eb211fe92355cb5358cb991a373693d33180362e43a2ef56d22f",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatusCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatusCodec,
  value : Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatusCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatusCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus {
  let part0 = reader.boolean()
  { status: part0 }
}

/// @brief Own every original ultraarm_p1_interfaces/msg/MycobotSetAngles field.
/// @details 5 ordered fields, canonical extent 20..20 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles {
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotSetAngles.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotSetAngles.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotSetAngles.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotSetAngles.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotSetAngles.speed field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles::new() -> Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesMsgMycobotSetAnglesCodec {
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
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotSetAnglesCodec::new() -> Ros2Ultraarm_p1_interfacesMsgMycobotSetAnglesCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/msg/MycobotSetAngles",
    native_identity: None,
    codec_identity: "UWVMROS1_cb53aab11e200533386b764a423f86bd7a24c65105236945c6b27ba7a9c3221c",
    min_wire_bytes: 20, max_wire_bytes: 20 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotSetAnglesCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesMsgMycobotSetAnglesCodec,
  value : Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 20, error: 0 }
  write_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotSetAnglesCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesMsgMycobotSetAnglesCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles, Int] {
  if input.length() < 20 || input.length() > 20 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.speed
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, speed: part4 }
}

/// @brief Own every original ultraarm_p1_interfaces/msg/MycobotSetCoords field.
/// @details 5 ordered fields, canonical extent 20..20 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords {
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotSetCoords.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotSetCoords.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotSetCoords.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotSetCoords.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original ultraarm_p1_interfaces/msg/MycobotSetCoords.speed field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords::new() -> Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesMsgMycobotSetCoordsCodec {
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
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotSetCoordsCodec::new() -> Ros2Ultraarm_p1_interfacesMsgMycobotSetCoordsCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/msg/MycobotSetCoords",
    native_identity: None,
    codec_identity: "UWVMROS1_fca21ab6eed31f03f0f7c9c6010d893f709f1eebb1bf07c1911452da1c50bbee",
    min_wire_bytes: 20, max_wire_bytes: 20 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotSetCoordsCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesMsgMycobotSetCoordsCodec,
  value : Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 20, error: 0 }
  write_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesMsgMycobotSetCoordsCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesMsgMycobotSetCoordsCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords, Int] {
  if input.length() < 20 || input.length() > 20 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.speed
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { x: part0, y: part1, z: part2, rx: part3, speed: part4 }
}

pub(all) enum Ros2Ultraarm_p1_interfacesSrvGetAngles_Request { Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvGetAngles_Request::new() -> Ros2Ultraarm_p1_interfacesSrvGetAngles_Request { Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestEmpty }
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestCodec::new() -> Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/GetAngles_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_b2ff68f6919df813ddf49ad9337c2345e3c4e70242ad81f6440d5cd1cd612ff9",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestCodec,
  value : Ros2Ultraarm_p1_interfacesSrvGetAngles_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvGetAngles_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvGetAngles_Request,
) -> Unit {
}
fn read_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvGetAngles_Request {
  Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestEmpty
}

/// @brief Own every original ultraarm_p1_interfaces/srv/GetAngles_Response field.
/// @details 4 ordered fields, canonical extent 16..16 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGetAngles_Response {
  /// @brief Original ultraarm_p1_interfaces/srv/GetAngles_Response.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original ultraarm_p1_interfaces/srv/GetAngles_Response.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original ultraarm_p1_interfaces/srv/GetAngles_Response.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original ultraarm_p1_interfaces/srv/GetAngles_Response.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvGetAngles_Response::new() -> Ros2Ultraarm_p1_interfacesSrvGetAngles_Response {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGetAngles_ResponseCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvGetAngles_ResponseCodec::new() -> Ros2Ultraarm_p1_interfacesSrvGetAngles_ResponseCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/GetAngles_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_cc8b4259c50ed82d6f3b3bbb9470ac089b127b70ace12457cb41fccb7ae67cbc",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetAngles_ResponseCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetAngles_ResponseCodec,
  value : Ros2Ultraarm_p1_interfacesSrvGetAngles_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetAngles_ResponseCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetAngles_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvGetAngles_Response, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvGetAngles_Response,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
}
fn read_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvGetAngles_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3 }
}

pub(all) enum Ros2Ultraarm_p1_interfacesSrvGetCoords_Request { Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvGetCoords_Request::new() -> Ros2Ultraarm_p1_interfacesSrvGetCoords_Request { Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestEmpty }
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestCodec::new() -> Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/GetCoords_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_0ed9a0f7124cb00e62b71aecaedb60ea8832a94aaf4dc8f1de943d91dbf74e01",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestCodec,
  value : Ros2Ultraarm_p1_interfacesSrvGetCoords_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvGetCoords_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvGetCoords_Request,
) -> Unit {
}
fn read_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvGetCoords_Request {
  Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestEmpty
}

/// @brief Own every original ultraarm_p1_interfaces/srv/GetCoords_Response field.
/// @details 4 ordered fields, canonical extent 16..16 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGetCoords_Response {
  /// @brief Original ultraarm_p1_interfaces/srv/GetCoords_Response.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original ultraarm_p1_interfaces/srv/GetCoords_Response.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original ultraarm_p1_interfaces/srv/GetCoords_Response.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original ultraarm_p1_interfaces/srv/GetCoords_Response.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvGetCoords_Response::new() -> Ros2Ultraarm_p1_interfacesSrvGetCoords_Response {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGetCoords_ResponseCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvGetCoords_ResponseCodec::new() -> Ros2Ultraarm_p1_interfacesSrvGetCoords_ResponseCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/GetCoords_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_47ef794ffd2a3a4125ce3c9cbbd6b0d85fbb42cbfc888dd8fec39020cd454565",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetCoords_ResponseCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetCoords_ResponseCodec,
  value : Ros2Ultraarm_p1_interfacesSrvGetCoords_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetCoords_ResponseCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetCoords_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvGetCoords_Response, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvGetCoords_Response,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
}
fn read_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvGetCoords_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { x: part0, y: part1, z: part2, rx: part3 }
}

pub(all) enum Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request { Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestEmpty }
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request::new() -> Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request { Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestEmpty }
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestCodec::new() -> Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/GetGripperValue_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_dad3d4af78250b2b8e44424ee1bb532b1e24bd9b867417fa428dec761fcf4be9",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestCodec,
  value : Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request,
) -> Unit {
}
fn read_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request {
  Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestEmpty
}

/// @brief Own every original ultraarm_p1_interfaces/srv/GetGripperValue_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response {
  /// @brief Original ultraarm_p1_interfaces/srv/GetGripperValue_Response.gripper_angle field.
  /// @details int8 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut gripper_angle : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response::new() -> Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response {
  {
    gripper_angle: 0,
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGetGripperValue_ResponseCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvGetGripperValue_ResponseCodec::new() -> Ros2Ultraarm_p1_interfacesSrvGetGripperValue_ResponseCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/GetGripperValue_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_3b3830d2ae5b4327771923acab70739d05dd3f9c8e2b3b060f6a3136a9e6c647",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetGripperValue_ResponseCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetGripperValue_ResponseCodec,
  value : Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGetGripperValue_ResponseCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvGetGripperValue_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response,
) -> Unit {
  let part0 = value.gripper_angle
  if part0 < -128 || part0 > 127 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response {
  let part0 = reader.signed8()
  { gripper_angle: part0 }
}

/// @brief Own every original ultraarm_p1_interfaces/srv/GripperStatus_Request field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request {
  /// @brief Original ultraarm_p1_interfaces/srv/GripperStatus_Request.status field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut status : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request::new() -> Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request {
  {
    status: false,
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGripperStatus_RequestCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvGripperStatus_RequestCodec::new() -> Ros2Ultraarm_p1_interfacesSrvGripperStatus_RequestCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/GripperStatus_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_cdaff7754e24b6910102060d2af379d4bcc9c3a647604ccdf2dc8b4a50d854b8",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGripperStatus_RequestCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvGripperStatus_RequestCodec,
  value : Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGripperStatus_RequestCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvGripperStatus_RequestCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request,
) -> Unit {
  let part0 = value.status
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request {
  let part0 = reader.boolean()
  { status: part0 }
}

/// @brief Own every original ultraarm_p1_interfaces/srv/GripperStatus_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response {
  /// @brief Original ultraarm_p1_interfaces/srv/GripperStatus_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response::new() -> Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesSrvGripperStatus_ResponseCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvGripperStatus_ResponseCodec::new() -> Ros2Ultraarm_p1_interfacesSrvGripperStatus_ResponseCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/GripperStatus_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_55826c68885c7382e5a9e8a0ec35b312af3b2e974236d80518564c3fb8b9fa48",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGripperStatus_ResponseCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvGripperStatus_ResponseCodec,
  value : Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvGripperStatus_ResponseCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvGripperStatus_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original ultraarm_p1_interfaces/srv/SetAngles_Request field.
/// @details 5 ordered fields, canonical extent 20..20 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesSrvSetAngles_Request {
  /// @brief Original ultraarm_p1_interfaces/srv/SetAngles_Request.joint_1 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_1 : Float
  /// @brief Original ultraarm_p1_interfaces/srv/SetAngles_Request.joint_2 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_2 : Float
  /// @brief Original ultraarm_p1_interfaces/srv/SetAngles_Request.joint_3 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_3 : Float
  /// @brief Original ultraarm_p1_interfaces/srv/SetAngles_Request.joint_4 field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut joint_4 : Float
  /// @brief Original ultraarm_p1_interfaces/srv/SetAngles_Request.speed field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvSetAngles_Request::new() -> Ros2Ultraarm_p1_interfacesSrvSetAngles_Request {
  {
    joint_1: (0U).reinterpret_as_float(),
    joint_2: (0U).reinterpret_as_float(),
    joint_3: (0U).reinterpret_as_float(),
    joint_4: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesSrvSetAngles_RequestCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvSetAngles_RequestCodec::new() -> Ros2Ultraarm_p1_interfacesSrvSetAngles_RequestCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/SetAngles_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_4184d40dd5cef87f13e913d349e37b0661905c5c9f0d8c5f9cc965ea272be025",
    min_wire_bytes: 20, max_wire_bytes: 20 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvSetAngles_RequestCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvSetAngles_RequestCodec,
  value : Ros2Ultraarm_p1_interfacesSrvSetAngles_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 20, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvSetAngles_RequestCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvSetAngles_RequestCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvSetAngles_Request, Int] {
  if input.length() < 20 || input.length() > 20 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvSetAngles_Request,
) -> Unit {
  let part0 = value.joint_1
  writer.float32(part0)
  let part1 = value.joint_2
  writer.float32(part1)
  let part2 = value.joint_3
  writer.float32(part2)
  let part3 = value.joint_4
  writer.float32(part3)
  let part4 = value.speed
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvSetAngles_Request {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { joint_1: part0, joint_2: part1, joint_3: part2, joint_4: part3, speed: part4 }
}

/// @brief Own every original ultraarm_p1_interfaces/srv/SetAngles_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesSrvSetAngles_Response {
  /// @brief Original ultraarm_p1_interfaces/srv/SetAngles_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvSetAngles_Response::new() -> Ros2Ultraarm_p1_interfacesSrvSetAngles_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesSrvSetAngles_ResponseCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvSetAngles_ResponseCodec::new() -> Ros2Ultraarm_p1_interfacesSrvSetAngles_ResponseCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/SetAngles_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_de517cd68c164d4214aed8ad92f7bb9ee49f24c7e43d96c18e193095b0b23e1a",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvSetAngles_ResponseCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvSetAngles_ResponseCodec,
  value : Ros2Ultraarm_p1_interfacesSrvSetAngles_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvSetAngles_ResponseCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvSetAngles_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvSetAngles_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvSetAngles_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvSetAngles_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}

/// @brief Own every original ultraarm_p1_interfaces/srv/SetCoords_Request field.
/// @details 5 ordered fields, canonical extent 20..20 bytes. Native identity remains unbound.
/// Construction and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesSrvSetCoords_Request {
  /// @brief Original ultraarm_p1_interfaces/srv/SetCoords_Request.x field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut x : Float
  /// @brief Original ultraarm_p1_interfaces/srv/SetCoords_Request.y field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut y : Float
  /// @brief Original ultraarm_p1_interfaces/srv/SetCoords_Request.z field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut z : Float
  /// @brief Original ultraarm_p1_interfaces/srv/SetCoords_Request.rx field.
  /// @details float32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut rx : Float
  /// @brief Original ultraarm_p1_interfaces/srv/SetCoords_Request.speed field.
  /// @details int32 scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut speed : Int
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvSetCoords_Request::new() -> Ros2Ultraarm_p1_interfacesSrvSetCoords_Request {
  {
    x: (0U).reinterpret_as_float(),
    y: (0U).reinterpret_as_float(),
    z: (0U).reinterpret_as_float(),
    rx: (0U).reinterpret_as_float(),
    speed: 0,
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesSrvSetCoords_RequestCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvSetCoords_RequestCodec::new() -> Ros2Ultraarm_p1_interfacesSrvSetCoords_RequestCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/SetCoords_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_df9914ced1ef5f92f6102595de772ed076be380360b8fd5732cf7f0d4c0ec3e3",
    min_wire_bytes: 20, max_wire_bytes: 20 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvSetCoords_RequestCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvSetCoords_RequestCodec,
  value : Ros2Ultraarm_p1_interfacesSrvSetCoords_Request,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 20, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvSetCoords_RequestCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvSetCoords_RequestCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvSetCoords_Request, Int] {
  if input.length() < 20 || input.length() > 20 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvSetCoords_Request,
) -> Unit {
  let part0 = value.x
  writer.float32(part0)
  let part1 = value.y
  writer.float32(part1)
  let part2 = value.z
  writer.float32(part2)
  let part3 = value.rx
  writer.float32(part3)
  let part4 = value.speed
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvSetCoords_Request {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { x: part0, y: part1, z: part2, rx: part3, speed: part4 }
}

/// @brief Own every original ultraarm_p1_interfaces/srv/SetCoords_Response field.
/// @details 1 ordered fields, canonical extent 1..1 bytes. Native identity remains unbound. Construction
/// and pure codecs supply no capability, I/O, callback or permission.
pub(all) struct Ros2Ultraarm_p1_interfacesSrvSetCoords_Response {
  /// @brief Original ultraarm_p1_interfaces/srv/SetCoords_Response.flag field.
  /// @details bool scalar; count/quota 0, UTF-8 byte bound 0. Retain original units/frame and backing
  /// storage through synchronous encoding.
  mut flag : Bool
}
/// @brief Construct independent original field defaults.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return A new owning local value; no native identity or permission is inferred.
pub fn Ros2Ultraarm_p1_interfacesSrvSetCoords_Response::new() -> Ros2Ultraarm_p1_interfacesSrvSetCoords_Response {
  {
    flag: false,
  }
}
pub(all) struct Ros2Ultraarm_p1_interfacesSrvSetCoords_ResponseCodec {
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
pub fn Ros2Ultraarm_p1_interfacesSrvSetCoords_ResponseCodec::new() -> Ros2Ultraarm_p1_interfacesSrvSetCoords_ResponseCodec {
  { ros_version: 2, native_type: "ultraarm_p1_interfaces/srv/SetCoords_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_c66cfcc79da5bbc9a19b077761cfd3e89b3dae56ae604205de6316aa37935d7f",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
/// @brief Encode all original fields under finite bounds.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvSetCoords_ResponseCodec::encode(
  _self : Ros2Ultraarm_p1_interfacesSrvSetCoords_ResponseCodec,
  value : Ros2Ultraarm_p1_interfacesSrvSetCoords_Response,
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
/// @brief Decode exactly one whole original value.
/// @details Pure caller-thread operation; share no mutable reader/writer between calls. Malformed,
/// trailing, nonfinite or over-quota input is a codec refusal, never transport success.
/// @return Whole owning bytes/value on success, otherwise the original Result error.
pub fn Ros2Ultraarm_p1_interfacesSrvSetCoords_ResponseCodec::decode(
  _self : Ros2Ultraarm_p1_interfacesSrvSetCoords_ResponseCodec,
  input : Bytes,
) -> Result[Ros2Ultraarm_p1_interfacesSrvSetCoords_Response, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response(
  writer : BoundedWriter,
  value : Ros2Ultraarm_p1_interfacesSrvSetCoords_Response,
) -> Unit {
  let part0 = value.flag
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response(reader : BoundedReader) -> Ros2Ultraarm_p1_interfacesSrvSetCoords_Response {
  let part0 = reader.boolean()
  { flag: part0 }
}
