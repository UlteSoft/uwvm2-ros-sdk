// @brief Complete original kinova ros2_humble canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Fixed trusted source template. No generated schema, native identity or grant.
// SOURCE_ONLY_UNEXECUTED until the exact pinned compiler and actual Guests run.

struct BoundedWriter {
  bytes : Array[Byte]
  maximum : Int
  mut error : Int
}

fn BoundedWriter::byte(self : BoundedWriter, value : Byte) -> Unit {
  if self.error != 0 { return () }
  if self.bytes.length() >= self.maximum { self.error = 90; return () }
  self.bytes.push(value)
}

fn BoundedWriter::unsigned(self : BoundedWriter, value : UInt64, width : Int) -> Unit {
  if self.error != 0 { return () }
  if width < 8 && (value >> (width * 8)) != 0UL {
    self.error = 22
    return ()
  }
  for index = 0; index < width; index = index + 1 {
    self.byte(((value >> (index * 8)) & 255UL).to_int().to_byte())
  }
}

fn BoundedWriter::text(self : BoundedWriter, value : String, maximum : Int) -> Unit {
  if self.error != 0 { return () }
  // This complete-value profile forbids NUL; builtin String is a different codec.
  for index = 0; index < value.length(); index = index + 1 {
    if value[index].to_int() == 0 { self.error = 22; return () }
  }
  let bytes = match @wire.bounded_utf8(value, maximum) {
    Ok(value) => value
    Err(code) => { self.error = code; return () }
  }
  self.unsigned(bytes.length().to_uint64(), 4)
  for byte in bytes { self.byte(byte) }
}

fn BoundedWriter::float32(self : BoundedWriter, value : Float) -> Unit {
  let bits = value.reinterpret_as_uint().to_uint64()
  if (bits & 2139095040UL) == 2139095040UL { self.error = 22; return () }
  self.unsigned(bits, 4)
}

fn BoundedWriter::float64(self : BoundedWriter, value : Double) -> Unit {
  let bits = value.reinterpret_as_uint64()
  if (bits & 9218868437227405312UL) == 9218868437227405312UL {
    self.error = 22
    return ()
  }
  self.unsigned(bits, 8)
}

struct BoundedReader {
  bytes : Bytes
  mut position : Int
  mut error : Int
}

fn BoundedReader::unsigned(self : BoundedReader, width : Int) -> UInt64 {
  if self.error != 0 { return 0UL }
  if width > self.bytes.length() - self.position {
    self.error = 22
    return 0UL
  }
  let mut bits = 0UL
  for index = 0; index < width; index = index + 1 {
    bits = bits | (self.bytes[self.position + index].to_int().to_uint64() << (index * 8))
  }
  self.position = self.position + width
  bits
}

fn BoundedReader::boolean(self : BoundedReader) -> Bool {
  let value = self.unsigned(1)
  if value > 1UL { self.error = 22 }
  value == 1UL
}

fn BoundedReader::signed8(self : BoundedReader) -> Int {
  let bits = self.unsigned(1).to_int()
  if bits >= 128 { bits - 256 } else { bits }
}

fn BoundedReader::signed16(self : BoundedReader) -> Int {
  let bits = self.unsigned(2).to_int()
  if bits >= 32768 { bits - 65536 } else { bits }
}

fn BoundedReader::float32(self : BoundedReader) -> Float {
  let bits = self.unsigned(4)
  if (bits & 2139095040UL) == 2139095040UL { self.error = 22 }
  bits.to_uint().reinterpret_as_float()
}

fn BoundedReader::float64(self : BoundedReader) -> Double {
  let bits = self.unsigned(8)
  if (bits & 9218868437227405312UL) == 9218868437227405312UL { self.error = 22 }
  bits.reinterpret_as_double()
}

fn BoundedReader::count(self : BoundedReader, maximum : Int, element_minimum : Int) -> Int {
  let count = self.unsigned(4)
  if self.error != 0 { return 0 }
  if count > maximum.to_uint64() ||
      (element_minimum > 0 && count > ((self.bytes.length() - self.position) / element_minimum).to_uint64()) {
    self.error = 22
    return 0
  }
  count.to_int()
}

fn BoundedReader::text(self : BoundedReader, maximum : Int) -> String {
  let count = self.unsigned(4)
  if self.error != 0 { return "" }
  if count > maximum.to_uint64() || count > (self.bytes.length() - self.position).to_uint64() {
    self.error = 22
    return ""
  }
  let start = self.position
  self.position = self.position + count.to_int()
  try {
    let value = @utf8.decode(self.bytes[start:self.position], ignore_bom=false)
    for index = 0; index < value.length(); index = index + 1 {
      if value[index].to_int() == 0 { self.error = 22; return "" }
    }
    value
  } catch {
    _ => { self.error = 22; "" }
  }
}

// Complete actual IR records follow. No native registration.

/// @brief Own every original field of builtin_interfaces/msg/Duration.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Builtin_interfacesMsgDuration {
  /// @brief Duration defines a period between two time points. Messages of this datatype are of ROS Time
  /// following this design: https://design.ros2.org/articles/clock_and_time.html The seconds component,
  /// valid over all int32 values.
  /// @details Original builtin_interfaces/msg/Duration.sec; native type int32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut sec : Int
  /// @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
  /// e.g. The duration -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The duration 1.7 seconds is
  /// represented as {sec: 1, nanosec: 7e8}
  /// @details Original builtin_interfaces/msg/Duration.nanosec; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut nanosec : UInt
}
pub fn Ros2Builtin_interfacesMsgDuration::new() -> Ros2Builtin_interfacesMsgDuration {
  {
    sec: 0,
    nanosec: 0U,
  }
}
pub(all) struct Ros2Builtin_interfacesMsgDurationCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Builtin_interfacesMsgDurationCodec::new() -> Ros2Builtin_interfacesMsgDurationCodec {
  { ros_version: 2, native_type: "builtin_interfaces/msg/Duration",
    native_identity: None,
    codec_identity: "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Builtin_interfacesMsgDurationCodec::encode(_self : Ros2Builtin_interfacesMsgDurationCodec, value :
        Ros2Builtin_interfacesMsgDuration) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Builtin_interfacesMsgDuration(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Builtin_interfacesMsgDurationCodec::decode(_self : Ros2Builtin_interfacesMsgDurationCodec, input : Bytes) ->
        Result[Ros2Builtin_interfacesMsgDuration, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Builtin_interfacesMsgDuration(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Builtin_interfacesMsgDuration(writer : BoundedWriter, value : Ros2Builtin_interfacesMsgDuration) -> Unit {
  let part0 = value.sec
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.nanosec
  writer.unsigned(part1.to_uint64(), 4)
  if part1 >= 1000000000U { writer.error = 22 }
}
fn read_Ros2Builtin_interfacesMsgDuration(reader : BoundedReader) -> Ros2Builtin_interfacesMsgDuration {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint()
  if part1 >= 1000000000U { reader.error = 22 }
  { sec: part0, nanosec: part1 }
}

/// @brief Own every original field of builtin_interfaces/msg/Time.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Builtin_interfacesMsgTime {
  /// @brief This message communicates ROS Time defined here:
  /// https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32
  /// values.
  /// @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
  /// to the complete value and acquires no ROS resource.
  mut sec : Int
  /// @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
  /// e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is
  /// represented as {sec: 1, nanosec: 7e8}
  /// @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut nanosec : UInt
}
pub fn Ros2Builtin_interfacesMsgTime::new() -> Ros2Builtin_interfacesMsgTime {
  {
    sec: 0,
    nanosec: 0U,
  }
}
pub(all) struct Ros2Builtin_interfacesMsgTimeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Builtin_interfacesMsgTimeCodec::new() -> Ros2Builtin_interfacesMsgTimeCodec {
  { ros_version: 2, native_type: "builtin_interfaces/msg/Time",
    native_identity: None,
    codec_identity: "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Builtin_interfacesMsgTimeCodec::encode(_self : Ros2Builtin_interfacesMsgTimeCodec, value : Ros2Builtin_interfacesMsgTime)
        -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Builtin_interfacesMsgTime(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Builtin_interfacesMsgTimeCodec::decode(_self : Ros2Builtin_interfacesMsgTimeCodec, input : Bytes) ->
        Result[Ros2Builtin_interfacesMsgTime, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Builtin_interfacesMsgTime(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Builtin_interfacesMsgTime(writer : BoundedWriter, value : Ros2Builtin_interfacesMsgTime) -> Unit {
  let part0 = value.sec
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.nanosec
  writer.unsigned(part1.to_uint64(), 4)
  if part1 >= 1000000000U { writer.error = 22 }
}
fn read_Ros2Builtin_interfacesMsgTime(reader : BoundedReader) -> Ros2Builtin_interfacesMsgTime {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint()
  if part1 >= 1000000000U { reader.error = 22 }
  { sec: part0, nanosec: part1 }
}

/// @brief Own every original field of std_msgs/msg/Header.
/// @details Canonical extent 12..140 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Std_msgsMsgHeader {
  /// @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  /// timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
  /// seconds and nanoseconds.
  /// @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut stamp : Ros2Builtin_interfacesMsgTime
  /// @brief Transform frame with which this data is associated.
  /// @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
  /// bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  mut frame_id : String
}
pub fn Ros2Std_msgsMsgHeader::new() -> Ros2Std_msgsMsgHeader {
  {
    stamp: Ros2Builtin_interfacesMsgTime::new(),
    frame_id: "",
  }
}
pub(all) struct Ros2Std_msgsMsgHeaderCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Std_msgsMsgHeaderCodec::new() -> Ros2Std_msgsMsgHeaderCodec {
  { ros_version: 2, native_type: "std_msgs/msg/Header",
    native_identity: None,
    codec_identity: "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros2Std_msgsMsgHeaderCodec::encode(_self : Ros2Std_msgsMsgHeaderCodec, value : Ros2Std_msgsMsgHeader) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Std_msgsMsgHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_msgsMsgHeaderCodec::decode(_self : Ros2Std_msgsMsgHeaderCodec, input : Bytes) -> Result[Ros2Std_msgsMsgHeader, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Std_msgsMsgHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Std_msgsMsgHeader(writer : BoundedWriter, value : Ros2Std_msgsMsgHeader) -> Unit {
  let part0 = value.stamp
  write_Ros2Builtin_interfacesMsgTime(writer, part0)
  let part1 = value.frame_id
  writer.text(part1, 128)
}
fn read_Ros2Std_msgsMsgHeader(reader : BoundedReader) -> Ros2Std_msgsMsgHeader {
  let part0 = read_Ros2Builtin_interfacesMsgTime(reader)
  let part1 = reader.text(128)
  { stamp: part0, frame_id: part1 }
}

/// @brief Own every original field of trajectory_msgs/msg/JointTrajectoryPoint.
/// @details Canonical extent 24..280 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  /// @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
  /// positions[, effort] for the trajectory to be executed. All specified values are in the same order as
  /// the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
  /// "0" position. The units depend on the specific joint type: radians for revolute or continuous
  /// joints, and meters for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most 8
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut positions : Array[Double]
  /// @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
  /// for revolute or continuous joints, and meters/second for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
  /// 8 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut velocities : Array[Double]
  /// @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
  /// for revolute or continuous joints, and meters/second^2 for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
  /// most 8 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut accelerations : Array[Double]
  /// @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
  /// denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 8
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut effort : Array[Double]
  /// @brief Desired time from the trajectory start to arrive at this trajectory point.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start; native type
  /// builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut time_from_start : Ros2Builtin_interfacesMsgDuration
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::new() -> Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  {
    positions: [],
    velocities: [],
    accelerations: [],
    effort: [],
    time_from_start: Ros2Builtin_interfacesMsgDuration::new(),
  }
}
pub(all) struct Ros2Trajectory_msgsMsgJointTrajectoryPointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPointCodec::new() -> Ros2Trajectory_msgsMsgJointTrajectoryPointCodec {
  { ros_version: 2, native_type: "trajectory_msgs/msg/JointTrajectoryPoint",
    native_identity: None,
    codec_identity: "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1",
    min_wire_bytes: 24, max_wire_bytes: 280 }
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPointCodec::encode(_self : Ros2Trajectory_msgsMsgJointTrajectoryPointCodec, value :
        Ros2Trajectory_msgsMsgJointTrajectoryPoint) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 280, error: 0 }
  write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPointCodec::decode(_self : Ros2Trajectory_msgsMsgJointTrajectoryPointCodec, input :
        Bytes) -> Result[Ros2Trajectory_msgsMsgJointTrajectoryPoint, Int] {
  if input.length() < 24 || input.length() > 280 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer : BoundedWriter, value : Ros2Trajectory_msgsMsgJointTrajectoryPoint) ->
        Unit {
  let part0 = value.positions
  let count0 = part0.length()
  if count0 > 8 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.velocities
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.accelerations
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.effort
  let count3 = part3.length()
  if count3 > 8 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.time_from_start
  write_Ros2Builtin_interfacesMsgDuration(writer, part4)
}
fn read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader : BoundedReader) -> Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  let part0 : Array[Double] = []
  let count0 = reader.count(8, 8)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Double] = []
  let count1 = reader.count(8, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  let part2 : Array[Double] = []
  let count2 = reader.count(8, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = reader.count(8, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 = read_Ros2Builtin_interfacesMsgDuration(reader)
  { positions: part0, velocities: part1, accelerations: part2, effort: part3, time_from_start: part4 }
}

/// @brief Own every original field of trajectory_msgs/msg/JointTrajectory.
/// @details Canonical extent 20..1484 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Trajectory_msgsMsgJointTrajectory {
  /// @brief The header is used to specify the coordinate frame and the reference time for the trajectory
  /// durations
  /// @details Original trajectory_msgs/msg/JointTrajectory.header; native type std_msgs/msg/Header.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief The names of the active joints in each trajectory point. These names are ordered and must
  /// correspond to the values in each trajectory point.
  /// @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 8
  /// elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut joint_names : Array[String]
  /// @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
  /// efforts of the joints at each time point.
  /// @details Original trajectory_msgs/msg/JointTrajectory.points; native type
  /// trajectory_msgs/msg/JointTrajectoryPoint. At most 1 elements. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut points : Array[Ros2Trajectory_msgsMsgJointTrajectoryPoint]
}
pub fn Ros2Trajectory_msgsMsgJointTrajectory::new() -> Ros2Trajectory_msgsMsgJointTrajectory {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    joint_names: [],
    points: [],
  }
}
pub(all) struct Ros2Trajectory_msgsMsgJointTrajectoryCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryCodec::new() -> Ros2Trajectory_msgsMsgJointTrajectoryCodec {
  { ros_version: 2, native_type: "trajectory_msgs/msg/JointTrajectory",
    native_identity: None,
    codec_identity: "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77",
    min_wire_bytes: 20, max_wire_bytes: 1484 }
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryCodec::encode(_self : Ros2Trajectory_msgsMsgJointTrajectoryCodec, value :
        Ros2Trajectory_msgsMsgJointTrajectory) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1484, error: 0 }
  write_Ros2Trajectory_msgsMsgJointTrajectory(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryCodec::decode(_self : Ros2Trajectory_msgsMsgJointTrajectoryCodec, input : Bytes) ->
        Result[Ros2Trajectory_msgsMsgJointTrajectory, Int] {
  if input.length() < 20 || input.length() > 1484 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Trajectory_msgsMsgJointTrajectory(writer : BoundedWriter, value : Ros2Trajectory_msgsMsgJointTrajectory) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.joint_names
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 128)
  }
  let part2 = value.points
  let count2 = part2.length()
  if count2 > 1 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, element)
  }
}
fn read_Ros2Trajectory_msgsMsgJointTrajectory(reader : BoundedReader) -> Ros2Trajectory_msgsMsgJointTrajectory {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(8, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(128))
  }
  let part2 : Array[Ros2Trajectory_msgsMsgJointTrajectoryPoint] = []
  let count2 = reader.count(1, 24)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader))
  }
  { header: part0, joint_names: part1, points: part2 }
}

/// @brief Own every original field of geometry_msgs/msg/Vector3.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgVector3 {
  /// @brief This represents a vector in free space. This is semantically different than a point. A vector
  /// is always anchored at the origin. When a transform is applied to a vector, only the rotational
  /// component is applied.
  /// @details Original geometry_msgs/msg/Vector3.x; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut x : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Vector3.y; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut y : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Vector3.z; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut z : Double
}
pub fn Ros2Geometry_msgsMsgVector3::new() -> Ros2Geometry_msgsMsgVector3 {
  {
    x: 0.0,
    y: 0.0,
    z: 0.0,
  }
}
pub(all) struct Ros2Geometry_msgsMsgVector3Codec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgVector3Codec::new() -> Ros2Geometry_msgsMsgVector3Codec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Vector3",
    native_identity: None,
    codec_identity: "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
pub fn Ros2Geometry_msgsMsgVector3Codec::encode(_self : Ros2Geometry_msgsMsgVector3Codec, value : Ros2Geometry_msgsMsgVector3) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Geometry_msgsMsgVector3(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgVector3Codec::decode(_self : Ros2Geometry_msgsMsgVector3Codec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgVector3, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgVector3(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgVector3(writer : BoundedWriter, value : Ros2Geometry_msgsMsgVector3) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
}
fn read_Ros2Geometry_msgsMsgVector3(reader : BoundedReader) -> Ros2Geometry_msgsMsgVector3 {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  { x: part0, y: part1, z: part2 }
}

/// @brief Own every original field of geometry_msgs/msg/Quaternion.
/// @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgQuaternion {
  /// @brief This represents an orientation in free space in quaternion form.
  /// @details Original geometry_msgs/msg/Quaternion.x; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut x : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.y; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut y : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.z; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut z : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.w; native type float64. Scalar value. Declared
  /// original default 1.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut w : Double
}
pub fn Ros2Geometry_msgsMsgQuaternion::new() -> Ros2Geometry_msgsMsgQuaternion {
  {
    x: (0UL).reinterpret_as_double(),
    y: (0UL).reinterpret_as_double(),
    z: (0UL).reinterpret_as_double(),
    w: (4607182418800017408UL).reinterpret_as_double(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgQuaternionCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgQuaternionCodec::new() -> Ros2Geometry_msgsMsgQuaternionCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Quaternion",
    native_identity: None,
    codec_identity: "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
    min_wire_bytes: 32, max_wire_bytes: 32 }
}
pub fn Ros2Geometry_msgsMsgQuaternionCodec::encode(_self : Ros2Geometry_msgsMsgQuaternionCodec, value :
        Ros2Geometry_msgsMsgQuaternion) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32, error: 0 }
  write_Ros2Geometry_msgsMsgQuaternion(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgQuaternionCodec::decode(_self : Ros2Geometry_msgsMsgQuaternionCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgQuaternion, Int] {
  if input.length() < 32 || input.length() > 32 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgQuaternion(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgQuaternion(writer : BoundedWriter, value : Ros2Geometry_msgsMsgQuaternion) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
  let part3 = value.w
  writer.float64(part3)
}
fn read_Ros2Geometry_msgsMsgQuaternion(reader : BoundedReader) -> Ros2Geometry_msgsMsgQuaternion {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  { x: part0, y: part1, z: part2, w: part3 }
}

/// @brief Own every original field of geometry_msgs/msg/Transform.
/// @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgTransform {
  /// @brief This represents the transform between two coordinate frames in free space.
  /// @details Original geometry_msgs/msg/Transform.translation; native type geometry_msgs/msg/Vector3.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut translation : Ros2Geometry_msgsMsgVector3
  /// @brief Retain the complete original geometry_msgs/msg/Quaternion field.
  /// @details Original geometry_msgs/msg/Transform.rotation; native type geometry_msgs/msg/Quaternion.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut rotation : Ros2Geometry_msgsMsgQuaternion
}
pub fn Ros2Geometry_msgsMsgTransform::new() -> Ros2Geometry_msgsMsgTransform {
  {
    translation: Ros2Geometry_msgsMsgVector3::new(),
    rotation: Ros2Geometry_msgsMsgQuaternion::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgTransformCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgTransformCodec::new() -> Ros2Geometry_msgsMsgTransformCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Transform",
    native_identity: None,
    codec_identity: "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
    min_wire_bytes: 56, max_wire_bytes: 56 }
}
pub fn Ros2Geometry_msgsMsgTransformCodec::encode(_self : Ros2Geometry_msgsMsgTransformCodec, value : Ros2Geometry_msgsMsgTransform)
        -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 56, error: 0 }
  write_Ros2Geometry_msgsMsgTransform(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 56 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgTransformCodec::decode(_self : Ros2Geometry_msgsMsgTransformCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgTransform, Int] {
  if input.length() < 56 || input.length() > 56 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgTransform(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgTransform(writer : BoundedWriter, value : Ros2Geometry_msgsMsgTransform) -> Unit {
  let part0 = value.translation
  write_Ros2Geometry_msgsMsgVector3(writer, part0)
  let part1 = value.rotation
  write_Ros2Geometry_msgsMsgQuaternion(writer, part1)
}
fn read_Ros2Geometry_msgsMsgTransform(reader : BoundedReader) -> Ros2Geometry_msgsMsgTransform {
  let part0 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part1 = read_Ros2Geometry_msgsMsgQuaternion(reader)
  { translation: part0, rotation: part1 }
}

/// @brief Own every original field of geometry_msgs/msg/Twist.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgTwist {
  /// @brief This expresses velocity in free space broken into its linear and angular parts.
  /// @details Original geometry_msgs/msg/Twist.linear; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut linear : Ros2Geometry_msgsMsgVector3
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Twist.angular; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut angular : Ros2Geometry_msgsMsgVector3
}
pub fn Ros2Geometry_msgsMsgTwist::new() -> Ros2Geometry_msgsMsgTwist {
  {
    linear: Ros2Geometry_msgsMsgVector3::new(),
    angular: Ros2Geometry_msgsMsgVector3::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgTwistCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgTwistCodec::new() -> Ros2Geometry_msgsMsgTwistCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Twist",
    native_identity: None,
    codec_identity: "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
    min_wire_bytes: 48, max_wire_bytes: 48 }
}
pub fn Ros2Geometry_msgsMsgTwistCodec::encode(_self : Ros2Geometry_msgsMsgTwistCodec, value : Ros2Geometry_msgsMsgTwist) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros2Geometry_msgsMsgTwist(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgTwistCodec::decode(_self : Ros2Geometry_msgsMsgTwistCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgTwist, Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgTwist(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgTwist(writer : BoundedWriter, value : Ros2Geometry_msgsMsgTwist) -> Unit {
  let part0 = value.linear
  write_Ros2Geometry_msgsMsgVector3(writer, part0)
  let part1 = value.angular
  write_Ros2Geometry_msgsMsgVector3(writer, part1)
}
fn read_Ros2Geometry_msgsMsgTwist(reader : BoundedReader) -> Ros2Geometry_msgsMsgTwist {
  let part0 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part1 = read_Ros2Geometry_msgsMsgVector3(reader)
  { linear: part0, angular: part1 }
}

/// @brief Own every original field of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details Canonical extent 20..844 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
  /// @brief Each multi-dof joint can specify a transform (up to 6 DOF).
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms; native type
  /// geometry_msgs/msg/Transform. At most 1 elements. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut transforms : Array[Ros2Geometry_msgsMsgTransform]
  /// @brief There can be a velocity specified for the origin of the joint.
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities; native type
  /// geometry_msgs/msg/Twist. At most 8 elements. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut velocities : Array[Ros2Geometry_msgsMsgTwist]
  /// @brief There can be an acceleration specified for the origin of the joint.
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations; native type
  /// geometry_msgs/msg/Twist. At most 8 elements. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut accelerations : Array[Ros2Geometry_msgsMsgTwist]
  /// @brief Desired time from the trajectory start to arrive at this trajectory point.
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start; native type
  /// builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut time_from_start : Ros2Builtin_interfacesMsgDuration
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new() -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
  {
    transforms: [],
    velocities: [],
    accelerations: [],
    time_from_start: Ros2Builtin_interfacesMsgDuration::new(),
  }
}
pub(all) struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec::new() -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec {
  { ros_version: 2, native_type: "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
    native_identity: None,
    codec_identity: "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf",
    min_wire_bytes: 20, max_wire_bytes: 844 }
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec::encode(_self :
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec, value : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 844, error: 0 }
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec::decode(_self :
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec, input : Bytes) ->
        Result[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, Int] {
  if input.length() < 20 || input.length() > 844 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer : BoundedWriter, value :
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint) -> Unit {
  let part0 = value.transforms
  let count0 = part0.length()
  if count0 > 1 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Geometry_msgsMsgTransform(writer, element)
  }
  let part1 = value.velocities
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Geometry_msgsMsgTwist(writer, element)
  }
  let part2 = value.accelerations
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Geometry_msgsMsgTwist(writer, element)
  }
  let part3 = value.time_from_start
  write_Ros2Builtin_interfacesMsgDuration(writer, part3)
}
fn read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader : BoundedReader) ->
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
  let part0 : Array[Ros2Geometry_msgsMsgTransform] = []
  let count0 = reader.count(1, 56)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Geometry_msgsMsgTransform(reader))
  }
  let part1 : Array[Ros2Geometry_msgsMsgTwist] = []
  let count1 = reader.count(8, 48)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Geometry_msgsMsgTwist(reader))
  }
  let part2 : Array[Ros2Geometry_msgsMsgTwist] = []
  let count2 = reader.count(8, 48)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Geometry_msgsMsgTwist(reader))
  }
  let part3 = read_Ros2Builtin_interfacesMsgDuration(reader)
  { transforms: part0, velocities: part1, accelerations: part2, time_from_start: part3 }
}

/// @brief Own every original field of trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details Canonical extent 20..2048 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
  /// @brief The header is used to specify the coordinate frame and the reference time for the trajectory
  /// durations
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.header; native type
  /// std_msgs/msg/Header. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief A representation of a multi-dof joint trajectory (each point is a transformation) Each point
  /// along the trajectory will include an array of positions/velocities/accelerations that has the same
  /// length as the array of joint names, and has the same order of joints as the joint names array.
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names; native type string. At
  /// most 8 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut joint_names : Array[String]
  /// @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.points; native type
  /// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. At most 1 elements. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut points : Array[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint]
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::new() -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    joint_names: [],
    points: [],
  }
}
pub(all) struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec::new() -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec {
  { ros_version: 2, native_type: "trajectory_msgs/msg/MultiDOFJointTrajectory",
    native_identity: None,
    codec_identity: "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5",
    min_wire_bytes: 20, max_wire_bytes: 2048 }
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec::encode(_self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec, value
        : Ros2Trajectory_msgsMsgMultiDOFJointTrajectory) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2048, error: 0 }
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec::decode(_self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec, input
        : Bytes) -> Result[Ros2Trajectory_msgsMsgMultiDOFJointTrajectory, Int] {
  if input.length() < 20 || input.length() > 2048 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer : BoundedWriter, value :
        Ros2Trajectory_msgsMsgMultiDOFJointTrajectory) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.joint_names
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 128)
  }
  let part2 = value.points
  let count2 = part2.length()
  if count2 > 1 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, element)
  }
}
fn read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader : BoundedReader) -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(8, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(128))
  }
  let part2 : Array[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] = []
  let count2 = reader.count(1, 20)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader))
  }
  { header: part0, joint_names: part1, points: part2 }
}

/// @brief Own every original field of control_msgs/msg/JointTolerance.
/// @details Canonical extent 28..156 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Control_msgsMsgJointTolerance {
  /// @brief The tolerances specify the amount the position, velocity, and accelerations can vary from the
  /// setpoints.  For example, in the case of trajectory control, when the actual position varies beyond
  /// (desired position + position tolerance), the trajectory goal may abort.  There are two special
  /// values for tolerances: * 0 - The tolerance is unspecified and will remain at whatever the default is
  /// * -1 - The tolerance is "erased".  If there was a default, the joint will be allowed to move without
  /// restriction.
  /// @details Original control_msgs/msg/JointTolerance.name; native type string. Scalar value. UTF-8
  /// capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut name : String
  /// @brief in radians or meters (for a revolute or prismatic joint, respectively)
  /// @details Original control_msgs/msg/JointTolerance.position; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut position : Double
  /// @brief in rad/sec or m/sec
  /// @details Original control_msgs/msg/JointTolerance.velocity; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut velocity : Double
  /// @brief in rad/sec^2 or m/sec^2
  /// @details Original control_msgs/msg/JointTolerance.acceleration; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut acceleration : Double
}
pub fn Ros2Control_msgsMsgJointTolerance::new() -> Ros2Control_msgsMsgJointTolerance {
  {
    name: "",
    position: 0.0,
    velocity: 0.0,
    acceleration: 0.0,
  }
}
pub(all) struct Ros2Control_msgsMsgJointToleranceCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Control_msgsMsgJointToleranceCodec::new() -> Ros2Control_msgsMsgJointToleranceCodec {
  { ros_version: 2, native_type: "control_msgs/msg/JointTolerance",
    native_identity: None,
    codec_identity: "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a",
    min_wire_bytes: 28, max_wire_bytes: 156 }
}
pub fn Ros2Control_msgsMsgJointToleranceCodec::encode(_self : Ros2Control_msgsMsgJointToleranceCodec, value :
        Ros2Control_msgsMsgJointTolerance) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 156, error: 0 }
  write_Ros2Control_msgsMsgJointTolerance(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Control_msgsMsgJointToleranceCodec::decode(_self : Ros2Control_msgsMsgJointToleranceCodec, input : Bytes) ->
        Result[Ros2Control_msgsMsgJointTolerance, Int] {
  if input.length() < 28 || input.length() > 156 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Control_msgsMsgJointTolerance(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Control_msgsMsgJointTolerance(writer : BoundedWriter, value : Ros2Control_msgsMsgJointTolerance) -> Unit {
  let part0 = value.name
  writer.text(part0, 128)
  let part1 = value.position
  writer.float64(part1)
  let part2 = value.velocity
  writer.float64(part2)
  let part3 = value.acceleration
  writer.float64(part3)
}
fn read_Ros2Control_msgsMsgJointTolerance(reader : BoundedReader) -> Ros2Control_msgsMsgJointTolerance {
  let part0 = reader.text(128)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  { name: part0, position: part1, velocity: part2, acceleration: part3 }
}

/// @brief Own every original field of control_msgs/msg/JointComponentTolerance.
/// @details Canonical extent 30..158 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Control_msgsMsgJointComponentTolerance {
  /// @brief Retain the complete original string field.
  /// @details Original control_msgs/msg/JointComponentTolerance.joint_name; native type string. Scalar
  /// value. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut joint_name : String
  /// @brief Retain the complete original uint16 field.
  /// @details Original control_msgs/msg/JointComponentTolerance.component; native type uint16. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut component : Int
  /// @brief Retain the complete original float64 field.
  /// @details Original control_msgs/msg/JointComponentTolerance.position; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut position : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original control_msgs/msg/JointComponentTolerance.velocity; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut velocity : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original control_msgs/msg/JointComponentTolerance.acceleration; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut acceleration : Double
}
pub fn Ros2Control_msgsMsgJointComponentTolerance::new() -> Ros2Control_msgsMsgJointComponentTolerance {
  {
    joint_name: "",
    component: 0,
    position: 0.0,
    velocity: 0.0,
    acceleration: 0.0,
  }
}
pub(all) struct Ros2Control_msgsMsgJointComponentToleranceCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Control_msgsMsgJointComponentToleranceCodec::new() -> Ros2Control_msgsMsgJointComponentToleranceCodec {
  { ros_version: 2, native_type: "control_msgs/msg/JointComponentTolerance",
    native_identity: None,
    codec_identity: "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb",
    min_wire_bytes: 30, max_wire_bytes: 158 }
}
pub fn Ros2Control_msgsMsgJointComponentToleranceCodec::encode(_self : Ros2Control_msgsMsgJointComponentToleranceCodec, value :
        Ros2Control_msgsMsgJointComponentTolerance) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 158, error: 0 }
  write_Ros2Control_msgsMsgJointComponentTolerance(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 30 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Control_msgsMsgJointComponentToleranceCodec::decode(_self : Ros2Control_msgsMsgJointComponentToleranceCodec, input :
        Bytes) -> Result[Ros2Control_msgsMsgJointComponentTolerance, Int] {
  if input.length() < 30 || input.length() > 158 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Control_msgsMsgJointComponentTolerance(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Control_msgsMsgJointComponentTolerance(writer : BoundedWriter, value : Ros2Control_msgsMsgJointComponentTolerance) ->
        Unit {
  let part0 = value.joint_name
  writer.text(part0, 128)
  let part1 = value.component
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.position
  writer.float64(part2)
  let part3 = value.velocity
  writer.float64(part3)
  let part4 = value.acceleration
  writer.float64(part4)
}
fn read_Ros2Control_msgsMsgJointComponentTolerance(reader : BoundedReader) -> Ros2Control_msgsMsgJointComponentTolerance {
  let part0 = reader.text(128)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
  { joint_name: part0, component: part1, position: part2, velocity: part3, acceleration: part4 }
}

/// @brief Own every original field of control_msgs/action/FollowJointTrajectory_Goal.
/// @details Canonical extent 64..8580 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_Goal {
  /// @brief The trajectory for all revolute, continuous or prismatic joints
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.trajectory; native type
  /// trajectory_msgs/msg/JointTrajectory. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut trajectory : Ros2Trajectory_msgsMsgJointTrajectory
  /// @brief The trajectory for all planar or floating joints (i.e. individual joints with more than one
  /// DOF)
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory; native type
  /// trajectory_msgs/msg/MultiDOFJointTrajectory. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut multi_dof_trajectory : Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
  /// @brief Tolerances for the trajectory.  If the measured joint values fall outside the tolerances the
  /// trajectory goal is aborted.  Any tolerances that are not specified (by being omitted or set to 0)
  /// are set to the defaults for the action server (often taken from the parameter server). Tolerances
  /// applied to the joints as the trajectory is executed.  If violated, the goal aborts with error_code
  /// set to PATH_TOLERANCE_VIOLATED.
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance; native type
  /// control_msgs/msg/JointTolerance. At most 8 elements. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut path_tolerance : Array[Ros2Control_msgsMsgJointTolerance]
  /// @brief Retain the complete original control_msgs/msg/JointComponentTolerance field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance; native
  /// type control_msgs/msg/JointComponentTolerance. At most 8 elements. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut component_path_tolerance : Array[Ros2Control_msgsMsgJointComponentTolerance]
  /// @brief To report success, the joints must be within goal_tolerance of the final trajectory value.
  /// The goal must be achieved by time the trajectory ends plus goal_time_tolerance.
  /// (goal_time_tolerance allows some leeway in time, so that the trajectory goal can still succeed even
  /// if the joints reach the goal some time after the precise end time of the trajectory).  If the joints
  /// are not within goal_tolerance after "trajectory finish time" + goal_time_tolerance, the goal aborts
  /// with error_code set to GOAL_TOLERANCE_VIOLATED
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance; native type
  /// control_msgs/msg/JointTolerance. At most 8 elements. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut goal_tolerance : Array[Ros2Control_msgsMsgJointTolerance]
  /// @brief Retain the complete original control_msgs/msg/JointComponentTolerance field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance; native
  /// type control_msgs/msg/JointComponentTolerance. At most 8 elements. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut component_goal_tolerance : Array[Ros2Control_msgsMsgJointComponentTolerance]
  /// @brief Retain the complete original builtin_interfaces/msg/Duration field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance; native type
  /// builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut goal_time_tolerance : Ros2Builtin_interfacesMsgDuration
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_Goal::new() -> Ros2Control_msgsActionFollowJointTrajectory_Goal {
  {
    trajectory: Ros2Trajectory_msgsMsgJointTrajectory::new(),
    multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::new(),
    path_tolerance: [],
    component_path_tolerance: [],
    goal_tolerance: [],
    component_goal_tolerance: [],
    goal_time_tolerance: Ros2Builtin_interfacesMsgDuration::new(),
  }
}
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_GoalCodec::new() -> Ros2Control_msgsActionFollowJointTrajectory_GoalCodec {
  { ros_version: 2, native_type: "control_msgs/action/FollowJointTrajectory_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018",
    min_wire_bytes: 64, max_wire_bytes: 8580 }
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_GoalCodec::encode(_self : Ros2Control_msgsActionFollowJointTrajectory_GoalCodec,
        value : Ros2Control_msgsActionFollowJointTrajectory_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8580, error: 0 }
  write_Ros2Control_msgsActionFollowJointTrajectory_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 64 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_GoalCodec::decode(_self : Ros2Control_msgsActionFollowJointTrajectory_GoalCodec,
        input : Bytes) -> Result[Ros2Control_msgsActionFollowJointTrajectory_Goal, Int] {
  if input.length() < 64 || input.length() > 8580 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Control_msgsActionFollowJointTrajectory_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Control_msgsActionFollowJointTrajectory_Goal(writer : BoundedWriter, value :
        Ros2Control_msgsActionFollowJointTrajectory_Goal) -> Unit {
  let part0 = value.trajectory
  write_Ros2Trajectory_msgsMsgJointTrajectory(writer, part0)
  let part1 = value.multi_dof_trajectory
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, part1)
  let part2 = value.path_tolerance
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Control_msgsMsgJointTolerance(writer, element)
  }
  let part3 = value.component_path_tolerance
  let count3 = part3.length()
  if count3 > 8 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    write_Ros2Control_msgsMsgJointComponentTolerance(writer, element)
  }
  let part4 = value.goal_tolerance
  let count4 = part4.length()
  if count4 > 8 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    write_Ros2Control_msgsMsgJointTolerance(writer, element)
  }
  let part5 = value.component_goal_tolerance
  let count5 = part5.length()
  if count5 > 8 { writer.error = 22; return () }
  writer.unsigned(count5.to_uint64(), 4)
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    write_Ros2Control_msgsMsgJointComponentTolerance(writer, element)
  }
  let part6 = value.goal_time_tolerance
  write_Ros2Builtin_interfacesMsgDuration(writer, part6)
}
fn read_Ros2Control_msgsActionFollowJointTrajectory_Goal(reader : BoundedReader) -> Ros2Control_msgsActionFollowJointTrajectory_Goal
        {
  let part0 = read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
  let part1 = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader)
  let part2 : Array[Ros2Control_msgsMsgJointTolerance] = []
  let count2 = reader.count(8, 28)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Control_msgsMsgJointTolerance(reader))
  }
  let part3 : Array[Ros2Control_msgsMsgJointComponentTolerance] = []
  let count3 = reader.count(8, 30)
  for index = 0; index < count3; index = index + 1 {
    part3.push(read_Ros2Control_msgsMsgJointComponentTolerance(reader))
  }
  let part4 : Array[Ros2Control_msgsMsgJointTolerance] = []
  let count4 = reader.count(8, 28)
  for index = 0; index < count4; index = index + 1 {
    part4.push(read_Ros2Control_msgsMsgJointTolerance(reader))
  }
  let part5 : Array[Ros2Control_msgsMsgJointComponentTolerance] = []
  let count5 = reader.count(8, 30)
  for index = 0; index < count5; index = index + 1 {
    part5.push(read_Ros2Control_msgsMsgJointComponentTolerance(reader))
  }
  let part6 = read_Ros2Builtin_interfacesMsgDuration(reader)
  { trajectory: part0, multi_dof_trajectory: part1, path_tolerance: part2, component_path_tolerance: part3, goal_tolerance: part4,
          component_goal_tolerance: part5, goal_time_tolerance: part6 }
}

/// @brief Own every original field of control_msgs/action/FollowJointTrajectory_Result.
/// @details Canonical extent 8..264 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_Result {
  /// @brief Retain the complete original int32 field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Result.error_code; native type int32.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut error_code : Int
  /// @brief Human readable description of the error code. Contains complementary information that is
  /// especially useful when execution fails, for instance: - INVALID_GOAL: The reason for the invalid
  /// goal (e.g., the requested trajectory is in the past). - INVALID_JOINTS: The mismatch between the
  /// expected controller joints and those provided in the goal. - PATH_TOLERANCE_VIOLATED and
  /// GOAL_TOLERANCE_VIOLATED: Which joint violated which tolerance, and by how much.
  /// @details Original control_msgs/action/FollowJointTrajectory_Result.error_string; native type string.
  /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut error_string : String
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::new() -> Ros2Control_msgsActionFollowJointTrajectory_Result {
  {
    error_code: 0,
    error_string: "",
  }
}
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::new() -> Ros2Control_msgsActionFollowJointTrajectory_ResultCodec {
  { ros_version: 2, native_type: "control_msgs/action/FollowJointTrajectory_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649",
    min_wire_bytes: 8, max_wire_bytes: 264 }
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::encode(_self :
        Ros2Control_msgsActionFollowJointTrajectory_ResultCodec, value : Ros2Control_msgsActionFollowJointTrajectory_Result) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 264, error: 0 }
  write_Ros2Control_msgsActionFollowJointTrajectory_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::decode(_self :
        Ros2Control_msgsActionFollowJointTrajectory_ResultCodec, input : Bytes) ->
        Result[Ros2Control_msgsActionFollowJointTrajectory_Result, Int] {
  if input.length() < 8 || input.length() > 264 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Control_msgsActionFollowJointTrajectory_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Control_msgsActionFollowJointTrajectory_Result(writer : BoundedWriter, value :
        Ros2Control_msgsActionFollowJointTrajectory_Result) -> Unit {
  let part0 = value.error_code
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.error_string
  writer.text(part1, 256)
}
fn read_Ros2Control_msgsActionFollowJointTrajectory_Result(reader : BoundedReader) ->
        Ros2Control_msgsActionFollowJointTrajectory_Result {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.text(256)
  { error_code: part0, error_string: part1 }
}

/// @brief Own every original field of control_msgs/action/FollowJointTrajectory_Feedback.
/// @details Canonical extent 152..4708 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_Feedback {
  /// @brief Retain the complete original std_msgs/msg/Header field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.header; native type
  /// std_msgs/msg/Header. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original string field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names; native type
  /// string. At most 8 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut joint_names : Array[String]
  /// @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.desired; native type
  /// trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut desired : Ros2Trajectory_msgsMsgJointTrajectoryPoint
  /// @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.actual; native type
  /// trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut actual : Ros2Trajectory_msgsMsgJointTrajectoryPoint
  /// @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.error; native type
  /// trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut error : Ros2Trajectory_msgsMsgJointTrajectoryPoint
  /// @brief Retain the complete original string field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names; native
  /// type string. At most 1 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut multi_dof_joint_names : Array[String]
  /// @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired; native type
  /// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut multi_dof_desired : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  /// @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual; native type
  /// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut multi_dof_actual : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  /// @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error; native type
  /// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut multi_dof_error : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_Feedback::new() -> Ros2Control_msgsActionFollowJointTrajectory_Feedback {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    joint_names: [],
    desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint::new(),
    actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint::new(),
    error: Ros2Trajectory_msgsMsgJointTrajectoryPoint::new(),
    multi_dof_joint_names: [],
    multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new(),
    multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new(),
    multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new(),
  }
}
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec::new() -> Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec
        {
  { ros_version: 2, native_type: "control_msgs/action/FollowJointTrajectory_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529",
    min_wire_bytes: 152, max_wire_bytes: 4708 }
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec::encode(_self :
        Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec, value : Ros2Control_msgsActionFollowJointTrajectory_Feedback) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4708, error: 0 }
  write_Ros2Control_msgsActionFollowJointTrajectory_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 152 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec::decode(_self :
        Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec, input : Bytes) ->
        Result[Ros2Control_msgsActionFollowJointTrajectory_Feedback, Int] {
  if input.length() < 152 || input.length() > 4708 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Control_msgsActionFollowJointTrajectory_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Control_msgsActionFollowJointTrajectory_Feedback(writer : BoundedWriter, value :
        Ros2Control_msgsActionFollowJointTrajectory_Feedback) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.joint_names
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 128)
  }
  let part2 = value.desired
  write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, part2)
  let part3 = value.actual
  write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, part3)
  let part4 = value.error
  write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, part4)
  let part5 = value.multi_dof_joint_names
  let count5 = part5.length()
  if count5 > 1 { writer.error = 22; return () }
  writer.unsigned(count5.to_uint64(), 4)
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    writer.text(element, 128)
  }
  let part6 = value.multi_dof_desired
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part6)
  let part7 = value.multi_dof_actual
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part7)
  let part8 = value.multi_dof_error
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part8)
}
fn read_Ros2Control_msgsActionFollowJointTrajectory_Feedback(reader : BoundedReader) ->
        Ros2Control_msgsActionFollowJointTrajectory_Feedback {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(8, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(128))
  }
  let part2 = read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
  let part3 = read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
  let part4 = read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
  let part5 : Array[String] = []
  let count5 = reader.count(1, 4)
  for index = 0; index < count5; index = index + 1 {
    part5.push(reader.text(128))
  }
  let part6 = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
  let part7 = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
  let part8 = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
  { header: part0, joint_names: part1, desired: part2, actual: part3, error: part4, multi_dof_joint_names: part5, multi_dof_desired:
          part6, multi_dof_actual: part7, multi_dof_error: part8 }
}

/// @brief Own every original field of sensor_msgs/msg/JointState.
/// @details Canonical extent 28..1404 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Sensor_msgsMsgJointState {
  /// @brief This is a message that holds data to describe the state of a set of torque controlled joints.
  /// The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or
  /// m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or
  /// N).  Each joint is uniquely identified by its name The header specifies the time at which the joint
  /// states were recorded. All the joint states in one message have to be recorded at the same time.
  /// This message consists of a multiple arrays, one for each part of the joint state. The goal is to
  /// make each of the fields optional. When e.g. your joints have no effort associated with them, you can
  /// leave the effort array empty.  All arrays in this message should have the same size, or be empty.
  /// This is the only way to uniquely associate the joint name with the correct states.
  /// @details Original sensor_msgs/msg/JointState.header; native type std_msgs/msg/Header. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original string field.
  /// @details Original sensor_msgs/msg/JointState.name; native type string. At most 8 elements. UTF-8
  /// capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut name : Array[String]
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.position; native type float64. At most 8 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut position : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 8 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut velocity : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 8 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut effort : Array[Double]
}
pub fn Ros2Sensor_msgsMsgJointState::new() -> Ros2Sensor_msgsMsgJointState {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    name: [],
    position: [],
    velocity: [],
    effort: [],
  }
}
pub(all) struct Ros2Sensor_msgsMsgJointStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::new() -> Ros2Sensor_msgsMsgJointStateCodec {
  { ros_version: 2, native_type: "sensor_msgs/msg/JointState",
    native_identity: None,
    codec_identity: "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11",
    min_wire_bytes: 28, max_wire_bytes: 1404 }
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::encode(_self : Ros2Sensor_msgsMsgJointStateCodec, value : Ros2Sensor_msgsMsgJointState) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1404, error: 0 }
  write_Ros2Sensor_msgsMsgJointState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::decode(_self : Ros2Sensor_msgsMsgJointStateCodec, input : Bytes) ->
        Result[Ros2Sensor_msgsMsgJointState, Int] {
  if input.length() < 28 || input.length() > 1404 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Sensor_msgsMsgJointState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Sensor_msgsMsgJointState(writer : BoundedWriter, value : Ros2Sensor_msgsMsgJointState) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.name
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 128)
  }
  let part2 = value.position
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.velocity
  let count3 = part3.length()
  if count3 > 8 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.effort
  let count4 = part4.length()
  if count4 > 8 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
  if (count1 != 0 && count2 != 0 && count1 != count2) || (count1 != 0 && count3 != 0 && count1 != count3) || (count1 != 0 && count4
          != 0 && count1 != count4) || (count2 != 0 && count3 != 0 && count2 != count3) || (count2 != 0 && count4 != 0 && count2 !=
          count4) || (count3 != 0 && count4 != 0 && count3 != count4) { writer.error = 22 }
}
fn read_Ros2Sensor_msgsMsgJointState(reader : BoundedReader) -> Ros2Sensor_msgsMsgJointState {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(8, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(128))
  }
  let part2 : Array[Double] = []
  let count2 = reader.count(8, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = reader.count(8, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 : Array[Double] = []
  let count4 = reader.count(8, 8)
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.float64())
  }
  if (part1.length() != 0 && part2.length() != 0 && part1.length() != part2.length()) || (part1.length() != 0 && part3.length() != 0
          && part1.length() != part3.length()) || (part1.length() != 0 && part4.length() != 0 && part1.length() != part4.length())
          || (part2.length() != 0 && part3.length() != 0 && part2.length() != part3.length()) || (part2.length() != 0 &&
          part4.length() != 0 && part2.length() != part4.length()) || (part3.length() != 0 && part4.length() != 0 && part3.length()
          != part4.length()) { reader.error = 22 }
  { header: part0, name: part1, position: part2, velocity: part3, effort: part4 }
}

