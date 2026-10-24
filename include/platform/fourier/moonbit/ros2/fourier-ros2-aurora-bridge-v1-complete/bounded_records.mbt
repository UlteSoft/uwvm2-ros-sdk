/// @file bounded_records.mbt
/// @brief Bound complete MoonBit field writes and reads for this catalog.
/// @details Shared trusted cursor template used by fourier ros2_aurora_bridge_v1. The adjacent generated catalog
/// supplies 51 complete record layouts. Writer and reader track independent bounded extents; malformed or partial
/// values must not be exposed. Encoding grants no native authority. This source still requires the pinned MoonBit
/// compiler and real guest tests.
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

pub(all) struct Ros2Uwvm_fourier_bridgeMsgGroupState {
  mut group : String
  mut position : Array[Double]
  mut velocity : Array[Double]
  mut effort : Array[Double]
  mut motion_state : Int
}
pub fn Ros2Uwvm_fourier_bridgeMsgGroupState::new() -> Ros2Uwvm_fourier_bridgeMsgGroupState {
  {
    group: "",
    position: [],
    velocity: [],
    effort: [],
    motion_state: 0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeMsgGroupStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeMsgGroupStateCodec::new() -> Ros2Uwvm_fourier_bridgeMsgGroupStateCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/msg/GroupState",
    native_identity: None,
    codec_identity: "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4",
    min_wire_bytes: 20, max_wire_bytes: 1684 }
}
pub fn Ros2Uwvm_fourier_bridgeMsgGroupStateCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeMsgGroupStateCodec,
  value : Ros2Uwvm_fourier_bridgeMsgGroupState
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1684, error: 0 }
  write_Ros2Uwvm_fourier_bridgeMsgGroupState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeMsgGroupStateCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeMsgGroupStateCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeMsgGroupState, Int] {
  if input.length() < 20 || input.length() > 1684 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeMsgGroupState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeMsgGroupState(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeMsgGroupState) -> Unit {
  let part0 = value.group
  writer.text(part0, 128)
  let part1 = value.position
  let count1 = part1.length()
  if count1 > 64 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.velocity
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.effort
  let count3 = part3.length()
  if count3 > 64 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.motion_state
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Uwvm_fourier_bridgeMsgGroupState(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeMsgGroupState {
  let part0 = reader.text(128)
  let part1 : Array[Double] = []
  let count1 = reader.count(64, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = reader.count(64, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { group: part0, position: part1, velocity: part2, effort: part3, motion_state: part4 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeMsgGroupValues {
  mut group : String
  mut values : Array[Double]
}
pub fn Ros2Uwvm_fourier_bridgeMsgGroupValues::new() -> Ros2Uwvm_fourier_bridgeMsgGroupValues {
  {
    group: "",
    values: [],
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec::new() -> Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/msg/GroupValues",
    native_identity: None,
    codec_identity: "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3",
    min_wire_bytes: 8, max_wire_bytes: 648 }
}
pub fn Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec,
  value : Ros2Uwvm_fourier_bridgeMsgGroupValues
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 648, error: 0 }
  write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeMsgGroupValues, Int] {
  if input.length() < 8 || input.length() > 648 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeMsgGroupValues) -> Unit {
  let part0 = value.group
  writer.text(part0, 128)
  let part1 = value.values
  let count1 = part1.length()
  if count1 > 64 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
}
fn read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeMsgGroupValues {
  let part0 = reader.text(128)
  let part1 : Array[Double] = []
  let count1 = reader.count(64, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  { group: part0, values: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeMsgMotionRecipe {
  mut move_type : Int
  mut group : String
  mut position : Array[Double]
  mut has_velocity : Bool
  mut velocity : Array[Double]
  mut expected_velocity : Int
}
pub fn Ros2Uwvm_fourier_bridgeMsgMotionRecipe::new() -> Ros2Uwvm_fourier_bridgeMsgMotionRecipe {
  {
    move_type: 0,
    group: "",
    position: [],
    has_velocity: false,
    velocity: [],
    expected_velocity: 0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec::new() -> Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/msg/MotionRecipe",
    native_identity: None,
    codec_identity: "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14",
    min_wire_bytes: 18, max_wire_bytes: 1170 }
}
pub fn Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec,
  value : Ros2Uwvm_fourier_bridgeMsgMotionRecipe
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1170, error: 0 }
  write_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 18 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeMsgMotionRecipe, Int] {
  if input.length() < 18 || input.length() > 1170 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeMsgMotionRecipe) -> Unit {
  let part0 = value.move_type
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.group
  writer.text(part1, 128)
  let part2 = value.position
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.has_velocity
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
  let part4 = value.velocity
  let count4 = part4.length()
  if count4 > 64 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
  let part5 = value.expected_velocity
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeMsgMotionRecipe {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 = reader.boolean()
  let part4 : Array[Double] = []
  let count4 = reader.count(64, 8)
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.float64())
  }
  let part5 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { move_type: part0, group: part1, position: part2, has_velocity: part3, velocity: part4, expected_velocity: part5 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeMsgStatus {
  mut fsm_state : Int
  mut fsm_name : String
  mut upper_fsm_state : Int
  mut upper_fsm_name : String
  mut velocity_source : Int
  mut velocity_source_name : String
  mut stand_pose : Array[Double]
  mut groups : Array[Ros2Uwvm_fourier_bridgeMsgGroupState]
}
pub fn Ros2Uwvm_fourier_bridgeMsgStatus::new() -> Ros2Uwvm_fourier_bridgeMsgStatus {
  {
    fsm_state: 0,
    fsm_name: "",
    upper_fsm_state: 0,
    upper_fsm_name: "",
    velocity_source: 0,
    velocity_source_name: "",
    stand_pose: [],
    groups: [],
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeMsgStatusCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeMsgStatusCodec::new() -> Ros2Uwvm_fourier_bridgeMsgStatusCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/msg/Status",
    native_identity: None,
    codec_identity: "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e",
    min_wire_bytes: 32, max_wire_bytes: 14400 }
}
pub fn Ros2Uwvm_fourier_bridgeMsgStatusCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeMsgStatusCodec,
  value : Ros2Uwvm_fourier_bridgeMsgStatus
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 14400, error: 0 }
  write_Ros2Uwvm_fourier_bridgeMsgStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeMsgStatusCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeMsgStatusCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeMsgStatus, Int] {
  if input.length() < 32 || input.length() > 14400 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeMsgStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeMsgStatus(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeMsgStatus) -> Unit {
  let part0 = value.fsm_state
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.fsm_name
  writer.text(part1, 128)
  let part2 = value.upper_fsm_state
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part3 = value.upper_fsm_name
  writer.text(part3, 128)
  let part4 = value.velocity_source
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part5 = value.velocity_source_name
  writer.text(part5, 128)
  let part6 = value.stand_pose
  let count6 = part6.length()
  if count6 > 64 { writer.error = 22; return () }
  writer.unsigned(count6.to_uint64(), 4)
  for index = 0; index < count6; index = index + 1 {
    let element = part6[index]
    writer.float64(element)
  }
  let part7 = value.groups
  let count7 = part7.length()
  if count7 > 8 { writer.error = 22; return () }
  writer.unsigned(count7.to_uint64(), 4)
  for index = 0; index < count7; index = index + 1 {
    let element = part7[index]
    write_Ros2Uwvm_fourier_bridgeMsgGroupState(writer, element)
  }
}
fn read_Ros2Uwvm_fourier_bridgeMsgStatus(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeMsgStatus {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.text(128)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part3 = reader.text(128)
  let part4 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part5 = reader.text(128)
  let part6 : Array[Double] = []
  let count6 = reader.count(64, 8)
  for index = 0; index < count6; index = index + 1 {
    part6.push(reader.float64())
  }
  let part7 : Array[Ros2Uwvm_fourier_bridgeMsgGroupState] = []
  let count7 = reader.count(8, 20)
  for index = 0; index < count7; index = index + 1 {
    part7.push(read_Ros2Uwvm_fourier_bridgeMsgGroupState(reader))
  }
  {
    fsm_state: part0,
    fsm_name: part1,
    upper_fsm_state: part2,
    upper_fsm_name: part3,
    velocity_source: part4,
    velocity_source_name: part5,
    stand_pose: part6,
    groups: part7
  }
}

pub(all) struct Ros2Uwvm_fourier_bridgeMsgVelocityCommand {
  mut sequence : UInt64
  mut vx : Double
  mut vy : Double
  mut yaw : Double
  mut duration : Double
}
pub fn Ros2Uwvm_fourier_bridgeMsgVelocityCommand::new() -> Ros2Uwvm_fourier_bridgeMsgVelocityCommand {
  {
    sequence: 0UL,
    vx: 0.0,
    vy: 0.0,
    yaw: 0.0,
    duration: 0.0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec::new() -> Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/msg/VelocityCommand",
    native_identity: None,
    codec_identity: "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d",
    min_wire_bytes: 40, max_wire_bytes: 40 }
}
pub fn Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec,
  value : Ros2Uwvm_fourier_bridgeMsgVelocityCommand
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 40, error: 0 }
  write_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 40 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeMsgVelocityCommand, Int] {
  if input.length() < 40 || input.length() > 40 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeMsgVelocityCommand) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.vx
  writer.float64(part1)
  let part2 = value.vy
  writer.float64(part2)
  let part3 = value.yaw
  writer.float64(part3)
  let part4 = value.duration
  writer.float64(part4)
}
fn read_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeMsgVelocityCommand {
  let part0 = reader.unsigned(8)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
  { sequence: part0, vx: part1, vy: part2, yaw: part3, duration: part4 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request {
  mut sequence : UInt64
  mut moves : Array[Ros2Uwvm_fourier_bridgeMsgMotionRecipe]
}
pub fn Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request::new() -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request {
  {
    sequence: 0UL,
    moves: [],
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec::new() -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/ExecuteMove_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b",
    min_wire_bytes: 12, max_wire_bytes: 9372 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 9372, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request, Int] {
  if input.length() < 12 || input.length() > 9372 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.moves
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(writer, element)
  }
}
fn read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request {
  let part0 = reader.unsigned(8)
  let part1 : Array[Ros2Uwvm_fourier_bridgeMsgMotionRecipe] = []
  let count1 = reader.count(8, 18)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(reader))
  }
  { sequence: part0, moves: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response {
  mut status : UInt
  mut error : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response::new() -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/ExecuteMove_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request {
  mut sequence : UInt64
  mut key : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request::new() -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request {
  {
    sequence: 0UL,
    key: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec::new() -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetBaseData_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.key
  writer.text(part1, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  { sequence: part0, key: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response::new() -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetBaseData_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request {
  mut sequence : UInt64
  mut group : String
  mut key : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request {
  {
    sequence: 0UL,
    group: "",
    key: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetCartesianState_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee",
    min_wire_bytes: 16, max_wire_bytes: 272 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 272, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request, Int] {
  if input.length() < 16 || input.length() > 272 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.group
  writer.text(part1, 128)
  let part2 = value.key
  writer.text(part2, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { sequence: part0, group: part1, key: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetCartesianState_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetContactData_Request {
  mut sequence : UInt64
  mut key : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetContactData_Request::new() -> Ros2Uwvm_fourier_bridgeSrvGetContactData_Request {
  {
    sequence: 0UL,
    key: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetContactData_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetContactData_Request, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetContactData_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.key
  writer.text(part1, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetContactData_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  { sequence: part0, key: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetContactData_Response {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetContactData_Response::new() -> Ros2Uwvm_fourier_bridgeSrvGetContactData_Response {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetContactData_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetContactData_Response, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetContactData_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetContactData_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request {
  mut sequence : UInt64
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request::new() -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec::new() -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetFsmName_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response {
  mut status : UInt
  mut error : String
  mut value : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response::new() -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response {
  {
    status: 0U,
    error: "",
    value: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec::new() -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetFsmName_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e",
    min_wire_bytes: 12, max_wire_bytes: 268 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 268, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response, Int] {
  if input.length() < 12 || input.length() > 268 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.text(part2, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request {
  mut sequence : UInt64
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request::new() -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec::new() -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetFsmState_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response {
  mut status : UInt
  mut error : String
  mut value : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response::new() -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response {
  {
    status: 0U,
    error: "",
    value: 0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetFsmState_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request {
  mut sequence : UInt64
  mut group : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request {
  {
    sequence: 0UL,
    group: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetGroupMotionState_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.group
  writer.text(part1, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  { sequence: part0, group: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response {
  mut status : UInt
  mut error : String
  mut value : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response {
  {
    status: 0U,
    error: "",
    value: 0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetGroupMotionState_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request {
  mut sequence : UInt64
  mut group : String
  mut key : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request::new() -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request {
  {
    sequence: 0UL,
    group: "",
    key: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a",
    min_wire_bytes: 16, max_wire_bytes: 272 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 272, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request, Int] {
  if input.length() < 16 || input.length() > 272 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.group
  writer.text(part1, 128)
  let part2 = value.key
  writer.text(part2, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { sequence: part0, group: part1, key: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request {
  mut sequence : UInt64
  mut group : String
  mut key : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request::new() -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request {
  {
    sequence: 0UL,
    group: "",
    key: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetGroupState_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9",
    min_wire_bytes: 16, max_wire_bytes: 272 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 272, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request, Int] {
  if input.length() < 16 || input.length() > 272 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.group
  writer.text(part1, 128)
  let part2 = value.key
  writer.text(part2, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { sequence: part0, group: part1, key: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response::new() -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetGroupState_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request {
  mut sequence : UInt64
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request::new() -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec::new() -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetSnapshot_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response {
  mut status : UInt
  mut error : String
  mut value : Ros2Uwvm_fourier_bridgeMsgStatus
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response::new() -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response {
  {
    status: 0U,
    error: "",
    value: Ros2Uwvm_fourier_bridgeMsgStatus::new(),
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetSnapshot_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3",
    min_wire_bytes: 40, max_wire_bytes: 14536 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 14536, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 40 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response, Int] {
  if input.length() < 40 || input.length() > 14536 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  write_Ros2Uwvm_fourier_bridgeMsgStatus(writer, part2)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = read_Ros2Uwvm_fourier_bridgeMsgStatus(reader)
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request {
  mut sequence : UInt64
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request::new() -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetStandPose_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response::new() -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetStandPose_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request {
  mut sequence : UInt64
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request::new() -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetUpperFsmName_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response {
  mut status : UInt
  mut error : String
  mut value : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response::new() -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response {
  {
    status: 0U,
    error: "",
    value: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetUpperFsmName_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed",
    min_wire_bytes: 12, max_wire_bytes: 268 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 268, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response, Int] {
  if input.length() < 12 || input.length() > 268 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.text(part2, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request {
  mut sequence : UInt64
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request::new() -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetUpperFsmState_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response {
  mut status : UInt
  mut error : String
  mut value : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response {
  {
    status: 0U,
    error: "",
    value: 0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetUpperFsmState_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request {
  mut sequence : UInt64
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetVelocitySource_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response {
  mut status : UInt
  mut error : String
  mut value : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response {
  {
    status: 0U,
    error: "",
    value: 0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetVelocitySource_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request {
  mut sequence : UInt64
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetVelocitySourceName_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response {
  mut status : UInt
  mut error : String
  mut value : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response {
  {
    status: 0U,
    error: "",
    value: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/GetVelocitySourceName_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40",
    min_wire_bytes: 12, max_wire_bytes: 268 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 268, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response, Int] {
  if input.length() < 12 || input.length() > 268 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.text(part2, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request {
  mut sequence : UInt64
  mut state : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request::new() -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request {
  {
    sequence: 0UL,
    state: 0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec::new() -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetFsmState_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d",
    min_wire_bytes: 12, max_wire_bytes: 12 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 12, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request, Int] {
  if input.length() < 12 || input.length() > 12 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.state
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { sequence: part0, state: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response {
  mut status : UInt
  mut error : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response::new() -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetFsmState_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request {
  mut sequence : UInt64
  mut position : Array[Ros2Uwvm_fourier_bridgeMsgGroupValues]
  mut velocity : Array[Ros2Uwvm_fourier_bridgeMsgGroupValues]
  mut torque : Array[Ros2Uwvm_fourier_bridgeMsgGroupValues]
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request::new() -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request {
  {
    sequence: 0UL,
    position: [],
    velocity: [],
    torque: [],
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetGroupCommand_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9",
    min_wire_bytes: 20, max_wire_bytes: 15572 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 15572, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request, Int] {
  if input.length() < 20 || input.length() > 15572 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.position
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, element)
  }
  let part2 = value.velocity
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, element)
  }
  let part3 = value.torque
  let count3 = part3.length()
  if count3 > 8 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, element)
  }
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request {
  let part0 = reader.unsigned(8)
  let part1 : Array[Ros2Uwvm_fourier_bridgeMsgGroupValues] = []
  let count1 = reader.count(8, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader))
  }
  let part2 : Array[Ros2Uwvm_fourier_bridgeMsgGroupValues] = []
  let count2 = reader.count(8, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader))
  }
  let part3 : Array[Ros2Uwvm_fourier_bridgeMsgGroupValues] = []
  let count3 = reader.count(8, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader))
  }
  { sequence: part0, position: part1, velocity: part2, torque: part3 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response {
  mut status : UInt
  mut error : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response::new() -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetGroupCommand_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request {
  mut sequence : UInt64
  mut kp : Array[Ros2Uwvm_fourier_bridgeMsgGroupValues]
  mut kd : Array[Ros2Uwvm_fourier_bridgeMsgGroupValues]
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request::new() -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request {
  {
    sequence: 0UL,
    kp: [],
    kd: [],
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetMotorCfgPd_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de",
    min_wire_bytes: 16, max_wire_bytes: 10384 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 10384, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request, Int] {
  if input.length() < 16 || input.length() > 10384 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.kp
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, element)
  }
  let part2 = value.kd
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, element)
  }
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request {
  let part0 = reader.unsigned(8)
  let part1 : Array[Ros2Uwvm_fourier_bridgeMsgGroupValues] = []
  let count1 = reader.count(8, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader))
  }
  let part2 : Array[Ros2Uwvm_fourier_bridgeMsgGroupValues] = []
  let count2 = reader.count(8, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader))
  }
  { sequence: part0, kp: part1, kd: part2 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response {
  mut status : UInt
  mut error : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response::new() -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetMotorCfgPd_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request {
  mut sequence : UInt64
  mut delta_z : Double
  mut delta_pitch : Double
  mut delta_yaw : Double
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request::new() -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request {
  {
    sequence: 0UL,
    delta_z: 0.0,
    delta_pitch: 0.0,
    delta_yaw: 0.0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetStandPose_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211",
    min_wire_bytes: 32, max_wire_bytes: 32 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request, Int] {
  if input.length() < 32 || input.length() > 32 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.delta_z
  writer.float64(part1)
  let part2 = value.delta_pitch
  writer.float64(part2)
  let part3 = value.delta_yaw
  writer.float64(part3)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  { sequence: part0, delta_z: part1, delta_pitch: part2, delta_yaw: part3 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response {
  mut status : UInt
  mut error : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response::new() -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetStandPose_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request {
  mut sequence : UInt64
  mut state : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request::new() -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request {
  {
    sequence: 0UL,
    state: 0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetUpperFsmState_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182",
    min_wire_bytes: 12, max_wire_bytes: 12 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 12, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request, Int] {
  if input.length() < 12 || input.length() > 12 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.state
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { sequence: part0, state: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response {
  mut status : UInt
  mut error : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetUpperFsmState_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request {
  mut sequence : UInt64
  mut vx : Double
  mut vy : Double
  mut yaw : Double
  mut duration : Double
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request::new() -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request {
  {
    sequence: 0UL,
    vx: 0.0,
    vy: 0.0,
    yaw: 0.0,
    duration: 0.0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec::new() -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetVelocity_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44",
    min_wire_bytes: 40, max_wire_bytes: 40 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 40, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 40 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request, Int] {
  if input.length() < 40 || input.length() > 40 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.vx
  writer.float64(part1)
  let part2 = value.vy
  writer.float64(part2)
  let part3 = value.yaw
  writer.float64(part3)
  let part4 = value.duration
  writer.float64(part4)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
  { sequence: part0, vx: part1, vy: part2, yaw: part3, duration: part4 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response {
  mut status : UInt
  mut error : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response::new() -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetVelocity_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request {
  mut sequence : UInt64
  mut source : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request {
  {
    sequence: 0UL,
    source: 0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetVelocitySource_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c",
    min_wire_bytes: 12, max_wire_bytes: 12 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 12, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request, Int] {
  if input.length() < 12 || input.length() > 12 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.source
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { sequence: part0, source: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response {
  mut status : UInt
  mut error : String
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/SetVelocitySource_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request {
  mut sequence : UInt64
  mut groups : Array[String]
  mut timeout_seconds : Double
  mut poll_seconds : Double
}
pub fn Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request {
  {
    sequence: 0UL,
    groups: [],
    timeout_seconds: 0.0,
    poll_seconds: 0.0,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202",
    min_wire_bytes: 28, max_wire_bytes: 1084 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec,
  value : Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1084, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request, Int] {
  if input.length() < 28 || input.length() > 1084 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.groups
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 128)
  }
  let part2 = value.timeout_seconds
  writer.float64(part2)
  let part3 = value.poll_seconds
  writer.float64(part3)
}
fn read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request {
  let part0 = reader.unsigned(8)
  let part1 : Array[String] = []
  let count1 = reader.count(8, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(128))
  }
  let part2 = reader.float64()
  let part3 = reader.float64()
  { sequence: part0, groups: part1, timeout_seconds: part2, poll_seconds: part3 }
}

pub(all) struct Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response {
  mut status : UInt
  mut error : String
  mut complete : Bool
}
pub fn Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response {
  {
    status: 0U,
    error: "",
    complete: false,
  }
}
pub(all) struct Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec::new(
  
) -> Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f",
    min_wire_bytes: 9, max_wire_bytes: 137 }
}
pub fn Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec::encode(
  _self : Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec,
  value : Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 137, error: 0 }
  write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec::decode(
  _self : Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec,
  input : Bytes
) -> Result[Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response, Int] {
  if input.length() < 9 || input.length() > 137 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(writer : BoundedWriter, value : Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.complete
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(reader : BoundedReader) -> Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.boolean()
  { status: part0, error: part1, complete: part2 }
}

