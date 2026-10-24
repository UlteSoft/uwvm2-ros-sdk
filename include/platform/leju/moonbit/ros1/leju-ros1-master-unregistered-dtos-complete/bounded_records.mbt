/// @file bounded_records.mbt
/// @brief Bound complete MoonBit field writes and reads for this catalog.
/// @details Shared trusted cursor template used by leju ros1_master_unregistered_dtos. The adjacent generated
/// catalog supplies 2 complete record layouts. Writer and reader track independent bounded extents; malformed or
/// partial values must not be exposed. Encoding grants no native authority. This source still requires the pinned
/// MoonBit compiler and real guest tests.
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

pub(all) struct Ros1Kuavo_sdkQv {
  mut value : Array[Double]
}
pub fn Ros1Kuavo_sdkQv::new() -> Ros1Kuavo_sdkQv {
  {
    value: [],
  }
}
pub(all) struct Ros1Kuavo_sdkQvCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Kuavo_sdkQvCodec::new() -> Ros1Kuavo_sdkQvCodec {
  { ros_version: 1, native_type: "kuavo_sdk/qv",
    native_identity: None,
    codec_identity: "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32",
    min_wire_bytes: 4, max_wire_bytes: 132 }
}
pub fn Ros1Kuavo_sdkQvCodec::encode(_self : Ros1Kuavo_sdkQvCodec, value : Ros1Kuavo_sdkQv) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 132, error: 0 }
  write_Ros1Kuavo_sdkQv(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Kuavo_sdkQvCodec::decode(_self : Ros1Kuavo_sdkQvCodec, input : Bytes) -> Result[Ros1Kuavo_sdkQv, Int] {
  if input.length() < 4 || input.length() > 132 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Kuavo_sdkQv(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Kuavo_sdkQv(writer : BoundedWriter, value : Ros1Kuavo_sdkQv) -> Unit {
  let part0 = value.value
  let count0 = part0.length()
  if count0 > 16 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
}
fn read_Ros1Kuavo_sdkQv(reader : BoundedReader) -> Ros1Kuavo_sdkQv {
  let part0 : Array[Double] = []
  let count0 = reader.count(16, 8)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  { value: part0 }
}

pub(all) struct Ros1Kuavo_sdkFullBodyTargetTrajectories {
  mut timeTrajectory : Array[Double]
  mut footIndexTrajectory : Array[Int]
  mut fullBodyQTrajectory : Array[Ros1Kuavo_sdkQv]
  mut fullBodyVTrajectory : Array[Ros1Kuavo_sdkQv]
}
pub fn Ros1Kuavo_sdkFullBodyTargetTrajectories::new() -> Ros1Kuavo_sdkFullBodyTargetTrajectories {
  {
    timeTrajectory: [],
    footIndexTrajectory: [],
    fullBodyQTrajectory: [],
    fullBodyVTrajectory: [],
  }
}
pub(all) struct Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec::new() -> Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec {
  { ros_version: 1, native_type: "kuavo_sdk/fullBodyTargetTrajectories",
    native_identity: None,
    codec_identity: "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32",
    min_wire_bytes: 16, max_wire_bytes: 2320 }
}
pub fn Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec::encode(
  _self : Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec,
  value : Ros1Kuavo_sdkFullBodyTargetTrajectories
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2320, error: 0 }
  write_Ros1Kuavo_sdkFullBodyTargetTrajectories(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec::decode(
  _self : Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec,
  input : Bytes
) -> Result[Ros1Kuavo_sdkFullBodyTargetTrajectories, Int] {
  if input.length() < 16 || input.length() > 2320 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Kuavo_sdkFullBodyTargetTrajectories(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Kuavo_sdkFullBodyTargetTrajectories(writer : BoundedWriter, value : Ros1Kuavo_sdkFullBodyTargetTrajectories) -> Unit {
  let part0 = value.timeTrajectory
  let count0 = part0.length()
  if count0 > 16 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.footIndexTrajectory
  let count1 = part1.length()
  if count1 > 16 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  }
  let part2 = value.fullBodyQTrajectory
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros1Kuavo_sdkQv(writer, element)
  }
  let part3 = value.fullBodyVTrajectory
  let count3 = part3.length()
  if count3 > 8 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    write_Ros1Kuavo_sdkQv(writer, element)
  }
}
fn read_Ros1Kuavo_sdkFullBodyTargetTrajectories(reader : BoundedReader) -> Ros1Kuavo_sdkFullBodyTargetTrajectories {
  let part0 : Array[Double] = []
  let count0 = reader.count(16, 8)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Int] = []
  let count1 = reader.count(16, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.unsigned(4).to_uint().reinterpret_as_int())
  }
  let part2 : Array[Ros1Kuavo_sdkQv] = []
  let count2 = reader.count(8, 4)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros1Kuavo_sdkQv(reader))
  }
  let part3 : Array[Ros1Kuavo_sdkQv] = []
  let count3 = reader.count(8, 4)
  for index = 0; index < count3; index = index + 1 {
    part3.push(read_Ros1Kuavo_sdkQv(reader))
  }
  { timeTrajectory: part0, footIndexTrajectory: part1, fullBodyQTrajectory: part2, fullBodyVTrajectory: part3 }
}

