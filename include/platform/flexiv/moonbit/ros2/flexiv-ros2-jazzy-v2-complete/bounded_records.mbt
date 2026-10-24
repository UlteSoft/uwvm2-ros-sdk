// @brief Complete original flexiv ros2_jazzy_v2 canonical values.
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

/// @brief Own every original field of flexiv_msgs/action/Grasp_Goal.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionGrasp_Goal {
  /// @brief N
  /// @details Original flexiv_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut force : Double
}
pub fn Ros2Flexiv_msgsActionGrasp_Goal::new() -> Ros2Flexiv_msgsActionGrasp_Goal {
  {
    force: 0.0,
  }
}
pub(all) struct Ros2Flexiv_msgsActionGrasp_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionGrasp_GoalCodec::new() -> Ros2Flexiv_msgsActionGrasp_GoalCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Grasp_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Flexiv_msgsActionGrasp_GoalCodec::encode(_self : Ros2Flexiv_msgsActionGrasp_GoalCodec, value :
        Ros2Flexiv_msgsActionGrasp_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Flexiv_msgsActionGrasp_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionGrasp_GoalCodec::decode(_self : Ros2Flexiv_msgsActionGrasp_GoalCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionGrasp_Goal, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionGrasp_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionGrasp_Goal(writer : BoundedWriter, value : Ros2Flexiv_msgsActionGrasp_Goal) -> Unit {
  let part0 = value.force
  writer.float64(part0)
}
fn read_Ros2Flexiv_msgsActionGrasp_Goal(reader : BoundedReader) -> Ros2Flexiv_msgsActionGrasp_Goal {
  let part0 = reader.float64()
  { force: part0 }
}

/// @brief Own every original field of flexiv_msgs/action/Grasp_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionGrasp_Result {
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original flexiv_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut error : String
}
pub fn Ros2Flexiv_msgsActionGrasp_Result::new() -> Ros2Flexiv_msgsActionGrasp_Result {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Flexiv_msgsActionGrasp_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionGrasp_ResultCodec::new() -> Ros2Flexiv_msgsActionGrasp_ResultCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Grasp_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Flexiv_msgsActionGrasp_ResultCodec::encode(_self : Ros2Flexiv_msgsActionGrasp_ResultCodec, value :
        Ros2Flexiv_msgsActionGrasp_Result) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Flexiv_msgsActionGrasp_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionGrasp_ResultCodec::decode(_self : Ros2Flexiv_msgsActionGrasp_ResultCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionGrasp_Result, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionGrasp_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionGrasp_Result(writer : BoundedWriter, value : Ros2Flexiv_msgsActionGrasp_Result) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Flexiv_msgsActionGrasp_Result(reader : BoundedReader) -> Ros2Flexiv_msgsActionGrasp_Result {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of flexiv_msgs/action/Grasp_Feedback.
/// @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionGrasp_Feedback {
  /// @brief m
  /// @details Original flexiv_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut current_width : Double
  /// @brief N
  /// @details Original flexiv_msgs/action/Grasp_Feedback.current_force; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut current_force : Double
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Grasp_Feedback.moving; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut moving : Bool
}
pub fn Ros2Flexiv_msgsActionGrasp_Feedback::new() -> Ros2Flexiv_msgsActionGrasp_Feedback {
  {
    current_width: 0.0,
    current_force: 0.0,
    moving: false,
  }
}
pub(all) struct Ros2Flexiv_msgsActionGrasp_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionGrasp_FeedbackCodec::new() -> Ros2Flexiv_msgsActionGrasp_FeedbackCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Grasp_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05",
    min_wire_bytes: 17, max_wire_bytes: 17 }
}
pub fn Ros2Flexiv_msgsActionGrasp_FeedbackCodec::encode(_self : Ros2Flexiv_msgsActionGrasp_FeedbackCodec, value :
        Ros2Flexiv_msgsActionGrasp_Feedback) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 17, error: 0 }
  write_Ros2Flexiv_msgsActionGrasp_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionGrasp_FeedbackCodec::decode(_self : Ros2Flexiv_msgsActionGrasp_FeedbackCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionGrasp_Feedback, Int] {
  if input.length() < 17 || input.length() > 17 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionGrasp_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionGrasp_Feedback(writer : BoundedWriter, value : Ros2Flexiv_msgsActionGrasp_Feedback) -> Unit {
  let part0 = value.current_width
  writer.float64(part0)
  let part1 = value.current_force
  writer.float64(part1)
  let part2 = value.moving
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Flexiv_msgsActionGrasp_Feedback(reader : BoundedReader) -> Ros2Flexiv_msgsActionGrasp_Feedback {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.boolean()
  { current_width: part0, current_force: part1, moving: part2 }
}

/// @brief Own every original field of flexiv_msgs/action/Move_Goal.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionMove_Goal {
  /// @brief m
  /// @details Original flexiv_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut width : Double
  /// @brief m/s
  /// @details Original flexiv_msgs/action/Move_Goal.velocity; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut velocity : Double
  /// @brief N
  /// @details Original flexiv_msgs/action/Move_Goal.max_force; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut max_force : Double
}
pub fn Ros2Flexiv_msgsActionMove_Goal::new() -> Ros2Flexiv_msgsActionMove_Goal {
  {
    width: 0.0,
    velocity: 0.0,
    max_force: 0.0,
  }
}
pub(all) struct Ros2Flexiv_msgsActionMove_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionMove_GoalCodec::new() -> Ros2Flexiv_msgsActionMove_GoalCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Move_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
pub fn Ros2Flexiv_msgsActionMove_GoalCodec::encode(_self : Ros2Flexiv_msgsActionMove_GoalCodec, value :
        Ros2Flexiv_msgsActionMove_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Flexiv_msgsActionMove_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionMove_GoalCodec::decode(_self : Ros2Flexiv_msgsActionMove_GoalCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionMove_Goal, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionMove_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionMove_Goal(writer : BoundedWriter, value : Ros2Flexiv_msgsActionMove_Goal) -> Unit {
  let part0 = value.width
  writer.float64(part0)
  let part1 = value.velocity
  writer.float64(part1)
  let part2 = value.max_force
  writer.float64(part2)
}
fn read_Ros2Flexiv_msgsActionMove_Goal(reader : BoundedReader) -> Ros2Flexiv_msgsActionMove_Goal {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  { width: part0, velocity: part1, max_force: part2 }
}

/// @brief Own every original field of flexiv_msgs/action/Move_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionMove_Result {
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original flexiv_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut error : String
}
pub fn Ros2Flexiv_msgsActionMove_Result::new() -> Ros2Flexiv_msgsActionMove_Result {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Flexiv_msgsActionMove_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionMove_ResultCodec::new() -> Ros2Flexiv_msgsActionMove_ResultCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Move_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Flexiv_msgsActionMove_ResultCodec::encode(_self : Ros2Flexiv_msgsActionMove_ResultCodec, value :
        Ros2Flexiv_msgsActionMove_Result) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Flexiv_msgsActionMove_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionMove_ResultCodec::decode(_self : Ros2Flexiv_msgsActionMove_ResultCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionMove_Result, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionMove_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionMove_Result(writer : BoundedWriter, value : Ros2Flexiv_msgsActionMove_Result) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Flexiv_msgsActionMove_Result(reader : BoundedReader) -> Ros2Flexiv_msgsActionMove_Result {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of flexiv_msgs/action/Move_Feedback.
/// @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionMove_Feedback {
  /// @brief m
  /// @details Original flexiv_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut current_width : Double
  /// @brief N
  /// @details Original flexiv_msgs/action/Move_Feedback.current_force; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut current_force : Double
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Move_Feedback.moving; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut moving : Bool
}
pub fn Ros2Flexiv_msgsActionMove_Feedback::new() -> Ros2Flexiv_msgsActionMove_Feedback {
  {
    current_width: 0.0,
    current_force: 0.0,
    moving: false,
  }
}
pub(all) struct Ros2Flexiv_msgsActionMove_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionMove_FeedbackCodec::new() -> Ros2Flexiv_msgsActionMove_FeedbackCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Move_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38",
    min_wire_bytes: 17, max_wire_bytes: 17 }
}
pub fn Ros2Flexiv_msgsActionMove_FeedbackCodec::encode(_self : Ros2Flexiv_msgsActionMove_FeedbackCodec, value :
        Ros2Flexiv_msgsActionMove_Feedback) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 17, error: 0 }
  write_Ros2Flexiv_msgsActionMove_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionMove_FeedbackCodec::decode(_self : Ros2Flexiv_msgsActionMove_FeedbackCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionMove_Feedback, Int] {
  if input.length() < 17 || input.length() > 17 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionMove_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionMove_Feedback(writer : BoundedWriter, value : Ros2Flexiv_msgsActionMove_Feedback) -> Unit {
  let part0 = value.current_width
  writer.float64(part0)
  let part1 = value.current_force
  writer.float64(part1)
  let part2 = value.moving
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Flexiv_msgsActionMove_Feedback(reader : BoundedReader) -> Ros2Flexiv_msgsActionMove_Feedback {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.boolean()
  { current_width: part0, current_force: part1, moving: part2 }
}

/// @brief Own every original field of flexiv_msgs/msg/Digital.
/// @details Canonical extent 2..2 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgDigital {
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/Digital.pin; native type uint8. Scalar value. Storage belongs to
  /// the complete value and acquires no ROS resource.
  mut pin : Int
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/Digital.state; native type bool. Scalar value. Storage belongs to
  /// the complete value and acquires no ROS resource.
  mut state : Bool
}
pub fn Ros2Flexiv_msgsMsgDigital::new() -> Ros2Flexiv_msgsMsgDigital {
  {
    pin: 0,
    state: false,
  }
}
pub(all) struct Ros2Flexiv_msgsMsgDigitalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgDigitalCodec::new() -> Ros2Flexiv_msgsMsgDigitalCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/Digital",
    native_identity: None,
    codec_identity: "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Flexiv_msgsMsgDigitalCodec::encode(_self : Ros2Flexiv_msgsMsgDigitalCodec, value : Ros2Flexiv_msgsMsgDigital) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Flexiv_msgsMsgDigital(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgDigitalCodec::decode(_self : Ros2Flexiv_msgsMsgDigitalCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgDigital, Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgDigital(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgDigital(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgDigital) -> Unit {
  let part0 = value.pin
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.state
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Flexiv_msgsMsgDigital(reader : BoundedReader) -> Ros2Flexiv_msgsMsgDigital {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.boolean()
  { pin: part0, state: part1 }
}

/// @brief Own every original field of flexiv_msgs/msg/GPIOStates.
/// @details Canonical extent 4..68 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgGPIOStates {
  /// @brief Retain the complete original flexiv_msgs/msg/Digital field.
  /// @details Original flexiv_msgs/msg/GPIOStates.states; native type flexiv_msgs/msg/Digital. At most 32
  /// elements. Storage belongs to the complete value and acquires no ROS resource.
  mut states : Array[Ros2Flexiv_msgsMsgDigital]
}
pub fn Ros2Flexiv_msgsMsgGPIOStates::new() -> Ros2Flexiv_msgsMsgGPIOStates {
  {
    states: [],
  }
}
pub(all) struct Ros2Flexiv_msgsMsgGPIOStatesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgGPIOStatesCodec::new() -> Ros2Flexiv_msgsMsgGPIOStatesCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/GPIOStates",
    native_identity: None,
    codec_identity: "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14",
    min_wire_bytes: 4, max_wire_bytes: 68 }
}
pub fn Ros2Flexiv_msgsMsgGPIOStatesCodec::encode(_self : Ros2Flexiv_msgsMsgGPIOStatesCodec, value : Ros2Flexiv_msgsMsgGPIOStates) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 68, error: 0 }
  write_Ros2Flexiv_msgsMsgGPIOStates(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgGPIOStatesCodec::decode(_self : Ros2Flexiv_msgsMsgGPIOStatesCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgGPIOStates, Int] {
  if input.length() < 4 || input.length() > 68 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgGPIOStates(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgGPIOStates(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgGPIOStates) -> Unit {
  let part0 = value.states
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Flexiv_msgsMsgDigital(writer, element)
  }
}
fn read_Ros2Flexiv_msgsMsgGPIOStates(reader : BoundedReader) -> Ros2Flexiv_msgsMsgGPIOStates {
  let part0 : Array[Ros2Flexiv_msgsMsgDigital] = []
  let count0 = reader.count(32, 2)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Flexiv_msgsMsgDigital(reader))
  }
  { states: part0 }
}

/// @brief Own every original field of flexiv_msgs/msg/JointPosVel.
/// @details Canonical extent 8..520 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgJointPosVel {
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut positions : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut velocities : Array[Double]
}
pub fn Ros2Flexiv_msgsMsgJointPosVel::new() -> Ros2Flexiv_msgsMsgJointPosVel {
  {
    positions: [],
    velocities: [],
  }
}
pub(all) struct Ros2Flexiv_msgsMsgJointPosVelCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgJointPosVelCodec::new() -> Ros2Flexiv_msgsMsgJointPosVelCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/JointPosVel",
    native_identity: None,
    codec_identity: "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca",
    min_wire_bytes: 8, max_wire_bytes: 520 }
}
pub fn Ros2Flexiv_msgsMsgJointPosVelCodec::encode(_self : Ros2Flexiv_msgsMsgJointPosVelCodec, value : Ros2Flexiv_msgsMsgJointPosVel)
        -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 520, error: 0 }
  write_Ros2Flexiv_msgsMsgJointPosVel(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgJointPosVelCodec::decode(_self : Ros2Flexiv_msgsMsgJointPosVelCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgJointPosVel, Int] {
  if input.length() < 8 || input.length() > 520 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgJointPosVel(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgJointPosVel(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgJointPosVel) -> Unit {
  let part0 = value.positions
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.velocities
  let count1 = part1.length()
  if count1 > 32 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
}
fn read_Ros2Flexiv_msgsMsgJointPosVel(reader : BoundedReader) -> Ros2Flexiv_msgsMsgJointPosVel {
  let part0 : Array[Double] = []
  let count0 = reader.count(32, 8)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Double] = []
  let count1 = reader.count(32, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  { positions: part0, velocities: part1 }
}

/// @brief Own every original field of flexiv_msgs/msg/Mode.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgMode {
  /// @brief Retain the complete original int8 field.
  /// @details Original flexiv_msgs/msg/Mode.mode; native type int8. Scalar value. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut mode : Int
}
pub fn Ros2Flexiv_msgsMsgMode::new() -> Ros2Flexiv_msgsMsgMode {
  {
    mode: 0,
  }
}
pub(all) struct Ros2Flexiv_msgsMsgModeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgModeCodec::new() -> Ros2Flexiv_msgsMsgModeCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/Mode",
    native_identity: None,
    codec_identity: "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Flexiv_msgsMsgModeCodec::encode(_self : Ros2Flexiv_msgsMsgModeCodec, value : Ros2Flexiv_msgsMsgMode) -> Result[Bytes,
        Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Flexiv_msgsMsgMode(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgModeCodec::decode(_self : Ros2Flexiv_msgsMsgModeCodec, input : Bytes) -> Result[Ros2Flexiv_msgsMsgMode,
        Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgMode(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgMode(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgMode) -> Unit {
  let part0 = value.mode
  if part0 < -128 || part0 > 127 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Flexiv_msgsMsgMode(reader : BoundedReader) -> Ros2Flexiv_msgsMsgMode {
  let part0 = reader.signed8()
  { mode: part0 }
}

/// @brief Own every original field of std_msgs/msg/Header.
/// @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Std_msgsMsgHeader {
  /// @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  /// timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
  /// seconds and nanoseconds.
  /// @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut stamp : Ros2Builtin_interfacesMsgTime
  /// @brief Transform frame with which this data is associated.
  /// @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
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
    codec_identity: "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b",
    min_wire_bytes: 12, max_wire_bytes: 268 }
}
pub fn Ros2Std_msgsMsgHeaderCodec::encode(_self : Ros2Std_msgsMsgHeaderCodec, value : Ros2Std_msgsMsgHeader) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 268, error: 0 }
  write_Ros2Std_msgsMsgHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_msgsMsgHeaderCodec::decode(_self : Ros2Std_msgsMsgHeaderCodec, input : Bytes) -> Result[Ros2Std_msgsMsgHeader, Int] {
  if input.length() < 12 || input.length() > 268 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Std_msgsMsgHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Std_msgsMsgHeader(writer : BoundedWriter, value : Ros2Std_msgsMsgHeader) -> Unit {
  let part0 = value.stamp
  write_Ros2Builtin_interfacesMsgTime(writer, part0)
  let part1 = value.frame_id
  writer.text(part1, 256)
}
fn read_Ros2Std_msgsMsgHeader(reader : BoundedReader) -> Ros2Std_msgsMsgHeader {
  let part0 = read_Ros2Builtin_interfacesMsgTime(reader)
  let part1 = reader.text(256)
  { stamp: part0, frame_id: part1 }
}

/// @brief Own every original field of geometry_msgs/msg/Point.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgPoint {
  /// @brief This contains the position of a point in free space
  /// @details Original geometry_msgs/msg/Point.x; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut x : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Point.y; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut y : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Point.z; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut z : Double
}
pub fn Ros2Geometry_msgsMsgPoint::new() -> Ros2Geometry_msgsMsgPoint {
  {
    x: 0.0,
    y: 0.0,
    z: 0.0,
  }
}
pub(all) struct Ros2Geometry_msgsMsgPointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgPointCodec::new() -> Ros2Geometry_msgsMsgPointCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Point",
    native_identity: None,
    codec_identity: "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
pub fn Ros2Geometry_msgsMsgPointCodec::encode(_self : Ros2Geometry_msgsMsgPointCodec, value : Ros2Geometry_msgsMsgPoint) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Geometry_msgsMsgPoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgPointCodec::decode(_self : Ros2Geometry_msgsMsgPointCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgPoint, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgPoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgPoint(writer : BoundedWriter, value : Ros2Geometry_msgsMsgPoint) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
}
fn read_Ros2Geometry_msgsMsgPoint(reader : BoundedReader) -> Ros2Geometry_msgsMsgPoint {
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

/// @brief Own every original field of geometry_msgs/msg/Pose.
/// @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgPose {
  /// @brief A representation of pose in free space, composed of position and orientation.
  /// @details Original geometry_msgs/msg/Pose.position; native type geometry_msgs/msg/Point. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut position : Ros2Geometry_msgsMsgPoint
  /// @brief Retain the complete original geometry_msgs/msg/Quaternion field.
  /// @details Original geometry_msgs/msg/Pose.orientation; native type geometry_msgs/msg/Quaternion.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut orientation : Ros2Geometry_msgsMsgQuaternion
}
pub fn Ros2Geometry_msgsMsgPose::new() -> Ros2Geometry_msgsMsgPose {
  {
    position: Ros2Geometry_msgsMsgPoint::new(),
    orientation: Ros2Geometry_msgsMsgQuaternion::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgPoseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgPoseCodec::new() -> Ros2Geometry_msgsMsgPoseCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Pose",
    native_identity: None,
    codec_identity: "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
    min_wire_bytes: 56, max_wire_bytes: 56 }
}
pub fn Ros2Geometry_msgsMsgPoseCodec::encode(_self : Ros2Geometry_msgsMsgPoseCodec, value : Ros2Geometry_msgsMsgPose) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 56, error: 0 }
  write_Ros2Geometry_msgsMsgPose(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 56 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgPoseCodec::decode(_self : Ros2Geometry_msgsMsgPoseCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgPose, Int] {
  if input.length() < 56 || input.length() > 56 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgPose(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgPose(writer : BoundedWriter, value : Ros2Geometry_msgsMsgPose) -> Unit {
  let part0 = value.position
  write_Ros2Geometry_msgsMsgPoint(writer, part0)
  let part1 = value.orientation
  write_Ros2Geometry_msgsMsgQuaternion(writer, part1)
}
fn read_Ros2Geometry_msgsMsgPose(reader : BoundedReader) -> Ros2Geometry_msgsMsgPose {
  let part0 = read_Ros2Geometry_msgsMsgPoint(reader)
  let part1 = read_Ros2Geometry_msgsMsgQuaternion(reader)
  { position: part0, orientation: part1 }
}

/// @brief Own every original field of geometry_msgs/msg/PoseStamped.
/// @details Canonical extent 68..324 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgPoseStamped {
  /// @brief A Pose with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/PoseStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original geometry_msgs/msg/PoseStamped.pose; native type geometry_msgs/msg/Pose. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut pose : Ros2Geometry_msgsMsgPose
}
pub fn Ros2Geometry_msgsMsgPoseStamped::new() -> Ros2Geometry_msgsMsgPoseStamped {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    pose: Ros2Geometry_msgsMsgPose::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgPoseStampedCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgPoseStampedCodec::new() -> Ros2Geometry_msgsMsgPoseStampedCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/PoseStamped",
    native_identity: None,
    codec_identity: "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad",
    min_wire_bytes: 68, max_wire_bytes: 324 }
}
pub fn Ros2Geometry_msgsMsgPoseStampedCodec::encode(_self : Ros2Geometry_msgsMsgPoseStampedCodec, value :
        Ros2Geometry_msgsMsgPoseStamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 324, error: 0 }
  write_Ros2Geometry_msgsMsgPoseStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 68 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgPoseStampedCodec::decode(_self : Ros2Geometry_msgsMsgPoseStampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgPoseStamped, Int] {
  if input.length() < 68 || input.length() > 324 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgPoseStamped(writer : BoundedWriter, value : Ros2Geometry_msgsMsgPoseStamped) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.pose
  write_Ros2Geometry_msgsMsgPose(writer, part1)
}
fn read_Ros2Geometry_msgsMsgPoseStamped(reader : BoundedReader) -> Ros2Geometry_msgsMsgPoseStamped {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Geometry_msgsMsgPose(reader)
  { header: part0, pose: part1 }
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

/// @brief Own every original field of geometry_msgs/msg/TwistStamped.
/// @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgTwistStamped {
  /// @brief A twist with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/TwistStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original geometry_msgs/msg/Twist field.
  /// @details Original geometry_msgs/msg/TwistStamped.twist; native type geometry_msgs/msg/Twist. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut twist : Ros2Geometry_msgsMsgTwist
}
pub fn Ros2Geometry_msgsMsgTwistStamped::new() -> Ros2Geometry_msgsMsgTwistStamped {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    twist: Ros2Geometry_msgsMsgTwist::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgTwistStampedCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgTwistStampedCodec::new() -> Ros2Geometry_msgsMsgTwistStampedCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/TwistStamped",
    native_identity: None,
    codec_identity: "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308",
    min_wire_bytes: 60, max_wire_bytes: 316 }
}
pub fn Ros2Geometry_msgsMsgTwistStampedCodec::encode(_self : Ros2Geometry_msgsMsgTwistStampedCodec, value :
        Ros2Geometry_msgsMsgTwistStamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 316, error: 0 }
  write_Ros2Geometry_msgsMsgTwistStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 60 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgTwistStampedCodec::decode(_self : Ros2Geometry_msgsMsgTwistStampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgTwistStamped, Int] {
  if input.length() < 60 || input.length() > 316 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgTwistStamped(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgTwistStamped(writer : BoundedWriter, value : Ros2Geometry_msgsMsgTwistStamped) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.twist
  write_Ros2Geometry_msgsMsgTwist(writer, part1)
}
fn read_Ros2Geometry_msgsMsgTwistStamped(reader : BoundedReader) -> Ros2Geometry_msgsMsgTwistStamped {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Geometry_msgsMsgTwist(reader)
  { header: part0, twist: part1 }
}

/// @brief Own every original field of geometry_msgs/msg/Wrench.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgWrench {
  /// @brief This represents force in free space, separated into its linear and angular parts.
  /// @details Original geometry_msgs/msg/Wrench.force; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut force : Ros2Geometry_msgsMsgVector3
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Wrench.torque; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut torque : Ros2Geometry_msgsMsgVector3
}
pub fn Ros2Geometry_msgsMsgWrench::new() -> Ros2Geometry_msgsMsgWrench {
  {
    force: Ros2Geometry_msgsMsgVector3::new(),
    torque: Ros2Geometry_msgsMsgVector3::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgWrenchCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgWrenchCodec::new() -> Ros2Geometry_msgsMsgWrenchCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Wrench",
    native_identity: None,
    codec_identity: "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6",
    min_wire_bytes: 48, max_wire_bytes: 48 }
}
pub fn Ros2Geometry_msgsMsgWrenchCodec::encode(_self : Ros2Geometry_msgsMsgWrenchCodec, value : Ros2Geometry_msgsMsgWrench) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros2Geometry_msgsMsgWrench(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgWrenchCodec::decode(_self : Ros2Geometry_msgsMsgWrenchCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgWrench, Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgWrench(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgWrench(writer : BoundedWriter, value : Ros2Geometry_msgsMsgWrench) -> Unit {
  let part0 = value.force
  write_Ros2Geometry_msgsMsgVector3(writer, part0)
  let part1 = value.torque
  write_Ros2Geometry_msgsMsgVector3(writer, part1)
}
fn read_Ros2Geometry_msgsMsgWrench(reader : BoundedReader) -> Ros2Geometry_msgsMsgWrench {
  let part0 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part1 = read_Ros2Geometry_msgsMsgVector3(reader)
  { force: part0, torque: part1 }
}

/// @brief Own every original field of geometry_msgs/msg/WrenchStamped.
/// @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgWrenchStamped {
  /// @brief A wrench with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/WrenchStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
  /// @details Original geometry_msgs/msg/WrenchStamped.wrench; native type geometry_msgs/msg/Wrench.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut wrench : Ros2Geometry_msgsMsgWrench
}
pub fn Ros2Geometry_msgsMsgWrenchStamped::new() -> Ros2Geometry_msgsMsgWrenchStamped {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    wrench: Ros2Geometry_msgsMsgWrench::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgWrenchStampedCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgWrenchStampedCodec::new() -> Ros2Geometry_msgsMsgWrenchStampedCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/WrenchStamped",
    native_identity: None,
    codec_identity: "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177",
    min_wire_bytes: 60, max_wire_bytes: 316 }
}
pub fn Ros2Geometry_msgsMsgWrenchStampedCodec::encode(_self : Ros2Geometry_msgsMsgWrenchStampedCodec, value :
        Ros2Geometry_msgsMsgWrenchStamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 316, error: 0 }
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 60 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgWrenchStampedCodec::decode(_self : Ros2Geometry_msgsMsgWrenchStampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgWrenchStamped, Int] {
  if input.length() < 60 || input.length() > 316 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgWrenchStamped(writer : BoundedWriter, value : Ros2Geometry_msgsMsgWrenchStamped) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.wrench
  write_Ros2Geometry_msgsMsgWrench(writer, part1)
}
fn read_Ros2Geometry_msgsMsgWrenchStamped(reader : BoundedReader) -> Ros2Geometry_msgsMsgWrenchStamped {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Geometry_msgsMsgWrench(reader)
  { header: part0, wrench: part1 }
}

/// @brief Own every original field of flexiv_msgs/msg/RobotStates.
/// @details Canonical extent 552..5160 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgRobotStates {
  /// @brief Header
  /// @details Original flexiv_msgs/msg/RobotStates.header; native type std_msgs/msg/Header. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Robot system timestamp
  /// @details Original flexiv_msgs/msg/RobotStates.robot_timestamp; native type
  /// builtin_interfaces/msg/Time. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut robot_timestamp : Ros2Builtin_interfacesMsgTime
  /// @brief Measured joint positions using link-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.q; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut q : Array[Double]
  /// @brief Measured joint positions using motor-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut theta : Array[Double]
  /// @brief Measured joint velocities using link-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut dq : Array[Double]
  /// @brief Measured joint velocities using motor-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut dtheta : Array[Double]
  /// @brief Measured joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut tau : Array[Double]
  /// @brief Numerical derivative of measured joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut tau_dot : Array[Double]
  /// @brief Estimated external joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut tau_ext : Array[Double]
  /// @brief Estimated interaction joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_interact; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut tau_interact : Array[Double]
  /// @brief Measured joint temperatures
  /// @details Original flexiv_msgs/msg/RobotStates.temperature; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut temperature : Array[Double]
  /// @brief Measured TCP pose expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/PoseStamped.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut tcp_pose : Ros2Geometry_msgsMsgPoseStamped
  /// @brief Measured TCP twist expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_twist; native type geometry_msgs/msg/TwistStamped.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut tcp_twist : Ros2Geometry_msgsMsgTwistStamped
  /// @brief Measured flange pose expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut flange_pose : Ros2Geometry_msgsMsgPoseStamped
  /// @brief Raw force-torque (FT) sensor reading in flange frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_ft_sensor; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut raw_ft_sensor : Ros2Geometry_msgsMsgWrenchStamped
  /// @brief Estimated external wrench applied on TCP and expressed in TCP frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_wrench_local; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut tcp_wrench_local : Ros2Geometry_msgsMsgWrenchStamped
  /// @brief Estimated external wrench applied on TCP and expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_wrench; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut tcp_wrench : Ros2Geometry_msgsMsgWrenchStamped
  /// @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut raw_tcp_wrench_local : Ros2Geometry_msgsMsgWrenchStamped
  /// @brief Unfiltered external wrench applied on TCP and expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut raw_tcp_wrench : Ros2Geometry_msgsMsgWrenchStamped
}
pub fn Ros2Flexiv_msgsMsgRobotStates::new() -> Ros2Flexiv_msgsMsgRobotStates {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    robot_timestamp: Ros2Builtin_interfacesMsgTime::new(),
    q: [],
    theta: [],
    dq: [],
    dtheta: [],
    tau: [],
    tau_dot: [],
    tau_ext: [],
    tau_interact: [],
    temperature: [],
    tcp_pose: Ros2Geometry_msgsMsgPoseStamped::new(),
    tcp_twist: Ros2Geometry_msgsMsgTwistStamped::new(),
    flange_pose: Ros2Geometry_msgsMsgPoseStamped::new(),
    raw_ft_sensor: Ros2Geometry_msgsMsgWrenchStamped::new(),
    tcp_wrench_local: Ros2Geometry_msgsMsgWrenchStamped::new(),
    tcp_wrench: Ros2Geometry_msgsMsgWrenchStamped::new(),
    raw_tcp_wrench_local: Ros2Geometry_msgsMsgWrenchStamped::new(),
    raw_tcp_wrench: Ros2Geometry_msgsMsgWrenchStamped::new(),
  }
}
pub(all) struct Ros2Flexiv_msgsMsgRobotStatesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgRobotStatesCodec::new() -> Ros2Flexiv_msgsMsgRobotStatesCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/RobotStates",
    native_identity: None,
    codec_identity: "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a",
    min_wire_bytes: 552, max_wire_bytes: 5160 }
}
pub fn Ros2Flexiv_msgsMsgRobotStatesCodec::encode(_self : Ros2Flexiv_msgsMsgRobotStatesCodec, value : Ros2Flexiv_msgsMsgRobotStates)
        -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 5160, error: 0 }
  write_Ros2Flexiv_msgsMsgRobotStates(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 552 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgRobotStatesCodec::decode(_self : Ros2Flexiv_msgsMsgRobotStatesCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgRobotStates, Int] {
  if input.length() < 552 || input.length() > 5160 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgRobotStates(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgRobotStates(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgRobotStates) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.robot_timestamp
  write_Ros2Builtin_interfacesMsgTime(writer, part1)
  let part2 = value.q
  let count2 = part2.length()
  if count2 > 32 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.theta
  let count3 = part3.length()
  if count3 > 32 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.dq
  let count4 = part4.length()
  if count4 > 32 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
  let part5 = value.dtheta
  let count5 = part5.length()
  if count5 > 32 { writer.error = 22; return () }
  writer.unsigned(count5.to_uint64(), 4)
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    writer.float64(element)
  }
  let part6 = value.tau
  let count6 = part6.length()
  if count6 > 32 { writer.error = 22; return () }
  writer.unsigned(count6.to_uint64(), 4)
  for index = 0; index < count6; index = index + 1 {
    let element = part6[index]
    writer.float64(element)
  }
  let part7 = value.tau_dot
  let count7 = part7.length()
  if count7 > 32 { writer.error = 22; return () }
  writer.unsigned(count7.to_uint64(), 4)
  for index = 0; index < count7; index = index + 1 {
    let element = part7[index]
    writer.float64(element)
  }
  let part8 = value.tau_ext
  let count8 = part8.length()
  if count8 > 32 { writer.error = 22; return () }
  writer.unsigned(count8.to_uint64(), 4)
  for index = 0; index < count8; index = index + 1 {
    let element = part8[index]
    writer.float64(element)
  }
  let part9 = value.tau_interact
  let count9 = part9.length()
  if count9 > 32 { writer.error = 22; return () }
  writer.unsigned(count9.to_uint64(), 4)
  for index = 0; index < count9; index = index + 1 {
    let element = part9[index]
    writer.float64(element)
  }
  let part10 = value.temperature
  let count10 = part10.length()
  if count10 > 32 { writer.error = 22; return () }
  writer.unsigned(count10.to_uint64(), 4)
  for index = 0; index < count10; index = index + 1 {
    let element = part10[index]
    writer.float64(element)
  }
  let part11 = value.tcp_pose
  write_Ros2Geometry_msgsMsgPoseStamped(writer, part11)
  let part12 = value.tcp_twist
  write_Ros2Geometry_msgsMsgTwistStamped(writer, part12)
  let part13 = value.flange_pose
  write_Ros2Geometry_msgsMsgPoseStamped(writer, part13)
  let part14 = value.raw_ft_sensor
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part14)
  let part15 = value.tcp_wrench_local
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part15)
  let part16 = value.tcp_wrench
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part16)
  let part17 = value.raw_tcp_wrench_local
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part17)
  let part18 = value.raw_tcp_wrench
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part18)
}
fn read_Ros2Flexiv_msgsMsgRobotStates(reader : BoundedReader) -> Ros2Flexiv_msgsMsgRobotStates {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Builtin_interfacesMsgTime(reader)
  let part2 : Array[Double] = []
  let count2 = reader.count(32, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = reader.count(32, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 : Array[Double] = []
  let count4 = reader.count(32, 8)
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.float64())
  }
  let part5 : Array[Double] = []
  let count5 = reader.count(32, 8)
  for index = 0; index < count5; index = index + 1 {
    part5.push(reader.float64())
  }
  let part6 : Array[Double] = []
  let count6 = reader.count(32, 8)
  for index = 0; index < count6; index = index + 1 {
    part6.push(reader.float64())
  }
  let part7 : Array[Double] = []
  let count7 = reader.count(32, 8)
  for index = 0; index < count7; index = index + 1 {
    part7.push(reader.float64())
  }
  let part8 : Array[Double] = []
  let count8 = reader.count(32, 8)
  for index = 0; index < count8; index = index + 1 {
    part8.push(reader.float64())
  }
  let part9 : Array[Double] = []
  let count9 = reader.count(32, 8)
  for index = 0; index < count9; index = index + 1 {
    part9.push(reader.float64())
  }
  let part10 : Array[Double] = []
  let count10 = reader.count(32, 8)
  for index = 0; index < count10; index = index + 1 {
    part10.push(reader.float64())
  }
  let part11 = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  let part12 = read_Ros2Geometry_msgsMsgTwistStamped(reader)
  let part13 = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  let part14 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  let part15 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  let part16 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  let part17 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  let part18 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  { header: part0, robot_timestamp: part1, q: part2, theta: part3, dq: part4, dtheta: part5, tau: part6, tau_dot: part7, tau_ext:
          part8, tau_interact: part9, temperature: part10, tcp_pose: part11, tcp_twist: part12, flange_pose: part13, raw_ft_sensor:
          part14, tcp_wrench_local: part15, tcp_wrench: part16, raw_tcp_wrench_local: part17, raw_tcp_wrench: part18 }
}

