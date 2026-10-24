/// @file bounded_records.mbt
/// @brief Preserve every original Unitree catalog record and field.
/// @details Codecs preserve exact original declarations, full integer widths, nested arrays, strict
/// UTF-8, finite numeric policy, source constants and explicit wire limits. No host operation, native
/// serialization, identity registration or authority occurs here.

/// @brief Own one bounded canonical writer with sticky failure state.
priv struct Writer {
  bytes : Array[Byte]
  limit : Int32
  mut status : Int32
}

///| @brief Allocate a private finite writer before any native operation.
fn Writer::new(limit : Int32) -> Writer {
  {
    bytes: [], limit, status: 0
  }
}

///| @brief Append one byte or retain the original aggregate-capacity error.
fn Writer::byte(self : Writer, value : Byte) -> Unit {
  if self.status != 0 {
    return
  }
  if self.bytes.length() >= self.limit {
    self.status = 90;
    return
  }
  self.bytes.push(value)
}

///| @brief Write the low width bytes of a full-width little-endian integer.
fn Writer::integer(self : Writer, value : UInt64, width : Int32) -> Unit {
  for i = 0; i < width; i = i + 1 {
    self.byte(((value >> (i * 8)) & 255UL).to_int().to_byte())
  }
}

///| @brief Append strict bounded UTF-8 with its exact u32 byte extent.
fn Writer::text(self : Writer, value : String, maximum : Int32) -> Unit {
  if self.status != 0 {
    return
  }
  let bytes = match @wire.bounded_utf8(value, maximum) {
    Ok(value) => value
    Err(_) => {
      self.status = 22;
      return
    }
  }
  for byte in bytes {
    if byte.to_int() == 0 {
      self.status = 22;
      return
    }
  }
  self.integer(bytes.length().to_uint64(), 4)
  for byte in bytes {
    self.byte(byte)
  }
}

///| @brief Return one complete owned wire value or the original writer error.
fn Writer::finish(self : Writer) -> Result[Bytes, Int32] {
  if self.status != 0 {
    return Err(self.status)
  }
  Ok(Bytes::makei(self.bytes.length(), fn(i) {
        self.bytes[i]
      }))
}

/// @brief Borrow complete canonical input while tracking a checked local cursor.
priv struct Reader {
  bytes : Bytes
  mut at : Int32
  mut status : Int32
}

///| @brief Read one little-endian integer without narrowing its unsigned bits.
fn Reader::integer(self : Reader, width : Int32) -> UInt64 {
  if self.status != 0 {
    return 0UL
  }
  if width < 0 || width > self.bytes.length() - self.at {
    self.status = 22
    return 0UL
  }
  let mut value = 0UL
  for i = 0; i < width; i = i + 1 {
    value = value | (self.bytes[self.at + i].to_int().to_uint64() << (i * 8))
  }
  self.at = self.at + width
  value
}

///| @brief Read a finite sequence extent before allocating any element storage.
fn Reader::count(self : Reader, maximum : Int32) -> Int32 {
  let count = self.integer(4)
  if count > maximum.to_uint64() {
    self.status = 22;
    return 0
  }
  if self.status != 0 {
    0
  } else {
    count.to_int()
  }
}

///| @brief Decode strict UTF-8 without replacement, NUL acceptance or clipping.
fn Reader::text(self : Reader, maximum : Int32) -> String {
  let count = self.count(maximum)
  if self.status != 0 {
    return ""
  }
  if count > self.bytes.length() - self.at {
    self.status = 22;
    return ""
  }
  let begin = self.at
  self.at = self.at + count
  for i = begin; i < self.at; i = i + 1 {
    if self.bytes[i].to_int() == 0 {
      self.status = 22;
      return ""
    }
  }
  try {
    @utf8.decode(self.bytes[begin:self.at], ignore_bom=false)
  } catch {
    _ => {
      self.status = 22;
      ""
    }
  }
}

///| @brief Reinterpret all original IEEE 754 float32 bits without a numeric cast.
extern "wasm" fn float_from_bits(value : Int32) -> Float =
  #|(func (param i32) (result f32) (f32.reinterpret_i32 (local.get 0)))

///| @brief Preserve the exact IEEE 754 float32 bit pattern in an unsigned word.
extern "wasm" fn float_bits(value : Float) -> UInt =
  #|(func (param f32) (result i32) (i32.reinterpret_f32 (local.get 0)))

///|
/// @brief Represent complete original unitree_legged_msgs/BmsCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros1Unitree_legged_msgsBmsCmd {
  /// @brief Exact native native_off field; uint8.
  native_off : UInt
  /// @brief Exact native native_reserve field; uint8 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros1Unitree_legged_msgsBmsCmd::new() -> Ros1Unitree_legged_msgsBmsCmd {
  Ros1Unitree_legged_msgsBmsCmd:: {
    native_off: 0U,
    native_reserve: Array::makei(3, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros1Unitree_legged_msgsBmsCmd::max_wire_bytes() -> Int32 {
  4
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros1Unitree_legged_msgsBmsCmd::codec_identity() -> String {
  "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros1Unitree_legged_msgsBmsCmd::write_fields(
  self : Ros1Unitree_legged_msgsBmsCmd,
  writer : Writer,
) -> Unit {
  if self.native_off > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_off.to_uint64(), 1)
  if self.native_reserve.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros1Unitree_legged_msgsBmsCmd::encode(self : Ros1Unitree_legged_msgsBmsCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(4)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros1Unitree_legged_msgsBmsCmd::read_fields(reader : Reader) -> Ros1Unitree_legged_msgsBmsCmd {
  let native_off = reader.integer(1).to_uint()
  let native_reserve_count = 3
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(1).to_uint())
  }
  Ros1Unitree_legged_msgsBmsCmd:: {
    native_off,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros1Unitree_legged_msgsBmsCmd::decode(
  bytes : Bytes,
) -> Result[Ros1Unitree_legged_msgsBmsCmd, Int32] {
  if bytes.length() > 4 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros1Unitree_legged_msgsBmsCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_legged_msgs/BmsState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros1Unitree_legged_msgsBmsState {
  /// @brief Exact native native_version_h field; uint8.
  native_version_h : UInt
  /// @brief Exact native native_version_l field; uint8.
  native_version_l : UInt
  /// @brief Exact native native_bms_status field; uint8.
  native_bms_status : UInt
  /// @brief Exact native native_SOC field; uint8.
  native_SOC : UInt
  /// @brief Exact native native_current field; int32.
  native_current : Int32
  /// @brief Exact native native_cycle field; uint16.
  native_cycle : UInt
  /// @brief Exact native native_BQ_NTC field; int8 array.
  native_BQ_NTC : Array[Int32]
  /// @brief Exact native native_MCU_NTC field; int8 array.
  native_MCU_NTC : Array[Int32]
  /// @brief Exact native native_cell_vol field; uint16 array.
  native_cell_vol : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros1Unitree_legged_msgsBmsState::new() -> Ros1Unitree_legged_msgsBmsState {
  Ros1Unitree_legged_msgsBmsState:: {
    native_version_h: 0U,
    native_version_l: 0U,
    native_bms_status: 0U,
    native_SOC: 0U,
    native_current: 0,
    native_cycle: 0U,
    native_BQ_NTC: Array::makei(2, fn(_) {
        0
      }),
    native_MCU_NTC: Array::makei(2, fn(_) {
        0
      }),
    native_cell_vol: Array::makei(10, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 34 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros1Unitree_legged_msgsBmsState::max_wire_bytes() -> Int32 {
  34
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros1Unitree_legged_msgsBmsState::codec_identity() -> String {
  "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros1Unitree_legged_msgsBmsState::write_fields(
  self : Ros1Unitree_legged_msgsBmsState,
  writer : Writer,
) -> Unit {
  if self.native_version_h > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_version_h.to_uint64(), 1)
  if self.native_version_l > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_version_l.to_uint64(), 1)
  if self.native_bms_status > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_bms_status.to_uint64(), 1)
  if self.native_SOC > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_SOC.to_uint64(), 1)
  writer.integer(self.native_current.to_uint64(), 4)
  if self.native_cycle > 65535U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_cycle.to_uint64(), 2)
  if self.native_BQ_NTC.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_BQ_NTC {
    if item < -128 || item > 127 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_MCU_NTC.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_MCU_NTC {
    if item < -128 || item > 127 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_cell_vol.length() != 10 {
    writer.status = 22;
    return
  }
  for item in self.native_cell_vol {
    if item > 65535U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros1Unitree_legged_msgsBmsState::encode(self : Ros1Unitree_legged_msgsBmsState) -> Result[Bytes, Int32] {
  let writer = Writer::new(34)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros1Unitree_legged_msgsBmsState::read_fields(reader : Reader) -> Ros1Unitree_legged_msgsBmsState {
  let native_version_h = reader.integer(1).to_uint()
  let native_version_l = reader.integer(1).to_uint()
  let native_bms_status = reader.integer(1).to_uint()
  let native_SOC = reader.integer(1).to_uint()
  let native_current = reader.integer(4).to_int()
  let native_cycle = reader.integer(2).to_uint()
  let native_BQ_NTC_count = 2
  let native_BQ_NTC : Array[Int32] = []
  for i = 0; i < native_BQ_NTC_count; i = i + 1 {
    native_BQ_NTC.push(((reader.integer(1).to_int() << 24) >> 24))
  }
  let native_MCU_NTC_count = 2
  let native_MCU_NTC : Array[Int32] = []
  for i = 0; i < native_MCU_NTC_count; i = i + 1 {
    native_MCU_NTC.push(((reader.integer(1).to_int() << 24) >> 24))
  }
  let native_cell_vol_count = 10
  let native_cell_vol : Array[UInt] = []
  for i = 0; i < native_cell_vol_count; i = i + 1 {
    native_cell_vol.push(reader.integer(2).to_uint())
  }
  Ros1Unitree_legged_msgsBmsState:: {
    native_version_h,
    native_version_l,
    native_bms_status,
    native_SOC,
    native_current,
    native_cycle,
    native_BQ_NTC,
    native_MCU_NTC,
    native_cell_vol,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros1Unitree_legged_msgsBmsState::decode(
  bytes : Bytes,
) -> Result[Ros1Unitree_legged_msgsBmsState, Int32] {
  if bytes.length() > 34 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros1Unitree_legged_msgsBmsState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_legged_msgs/Cartesian.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros1Unitree_legged_msgsCartesian {
  /// @brief Exact native native_x field; float32.
  native_x : Float
  /// @brief Exact native native_y field; float32.
  native_y : Float
  /// @brief Exact native native_z field; float32.
  native_z : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros1Unitree_legged_msgsCartesian::new() -> Ros1Unitree_legged_msgsCartesian {
  Ros1Unitree_legged_msgsCartesian:: {
    native_x: 0.0F,
    native_y: 0.0F,
    native_z: 0.0F,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 12 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros1Unitree_legged_msgsCartesian::max_wire_bytes() -> Int32 {
  12
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros1Unitree_legged_msgsCartesian::codec_identity() -> String {
  "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros1Unitree_legged_msgsCartesian::write_fields(
  self : Ros1Unitree_legged_msgsCartesian,
  writer : Writer,
) -> Unit {
  if self.native_x.is_nan() || self.native_x.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_x).to_uint64(), 4)
  if self.native_y.is_nan() || self.native_y.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_y).to_uint64(), 4)
  if self.native_z.is_nan() || self.native_z.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_z).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros1Unitree_legged_msgsCartesian::encode(self : Ros1Unitree_legged_msgsCartesian) -> Result[Bytes, Int32] {
  let writer = Writer::new(12)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros1Unitree_legged_msgsCartesian::read_fields(reader : Reader) -> Ros1Unitree_legged_msgsCartesian {
  let native_x = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_y = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_z = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  Ros1Unitree_legged_msgsCartesian:: {
    native_x,
    native_y,
    native_z,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros1Unitree_legged_msgsCartesian::decode(
  bytes : Bytes,
) -> Result[Ros1Unitree_legged_msgsCartesian, Int32] {
  if bytes.length() > 12 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros1Unitree_legged_msgsCartesian::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_legged_msgs/LED.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros1Unitree_legged_msgsLED {
  /// @brief Exact native native_r field; uint8.
  native_r : UInt
  /// @brief Exact native native_g field; uint8.
  native_g : UInt
  /// @brief Exact native native_b field; uint8.
  native_b : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros1Unitree_legged_msgsLED::new() -> Ros1Unitree_legged_msgsLED {
  Ros1Unitree_legged_msgsLED:: {
    native_r: 0U,
    native_g: 0U,
    native_b: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 3 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros1Unitree_legged_msgsLED::max_wire_bytes() -> Int32 {
  3
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros1Unitree_legged_msgsLED::codec_identity() -> String {
  "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros1Unitree_legged_msgsLED::write_fields(
  self : Ros1Unitree_legged_msgsLED,
  writer : Writer,
) -> Unit {
  if self.native_r > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_r.to_uint64(), 1)
  if self.native_g > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_g.to_uint64(), 1)
  if self.native_b > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_b.to_uint64(), 1)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros1Unitree_legged_msgsLED::encode(self : Ros1Unitree_legged_msgsLED) -> Result[Bytes, Int32] {
  let writer = Writer::new(3)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros1Unitree_legged_msgsLED::read_fields(reader : Reader) -> Ros1Unitree_legged_msgsLED {
  let native_r = reader.integer(1).to_uint()
  let native_g = reader.integer(1).to_uint()
  let native_b = reader.integer(1).to_uint()
  Ros1Unitree_legged_msgsLED:: {
    native_r,
    native_g,
    native_b,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros1Unitree_legged_msgsLED::decode(
  bytes : Bytes,
) -> Result[Ros1Unitree_legged_msgsLED, Int32] {
  if bytes.length() > 3 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros1Unitree_legged_msgsLED::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_legged_msgs/HighCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros1Unitree_legged_msgsHighCmd {
  /// @brief Exact native native_head field; uint8 array.
  native_head : Array[UInt]
  /// @brief Exact native native_levelFlag field; uint8.
  native_levelFlag : UInt
  /// @brief Exact native native_frameReserve field; uint8.
  native_frameReserve : UInt
  /// @brief Exact native native_SN field; uint32 array.
  native_SN : Array[UInt]
  /// @brief Exact native native_version field; uint32 array.
  native_version : Array[UInt]
  /// @brief Exact native native_bandWidth field; uint16.
  native_bandWidth : UInt
  /// @brief Exact native native_mode field; uint8.
  native_mode : UInt
  /// @brief Exact native native_gaitType field; uint8.
  native_gaitType : UInt
  /// @brief Exact native native_speedLevel field; uint8.
  native_speedLevel : UInt
  /// @brief Exact native native_footRaiseHeight field; float32.
  native_footRaiseHeight : Float
  /// @brief Exact native native_bodyHeight field; float32.
  native_bodyHeight : Float
  /// @brief Exact native native_position field; float32 array.
  native_position : Array[Float]
  /// @brief Exact native native_euler field; float32 array.
  native_euler : Array[Float]
  /// @brief Exact native native_velocity field; float32 array.
  native_velocity : Array[Float]
  /// @brief Exact native native_yawSpeed field; float32.
  native_yawSpeed : Float
  /// @brief Exact native native_bms field; unitree_legged_msgs/BmsCmd.
  native_bms : Ros1Unitree_legged_msgsBmsCmd
  /// @brief Exact native native_led field; unitree_legged_msgs/LED array.
  native_led : Array[Ros1Unitree_legged_msgsLED]
  /// @brief Exact native native_wirelessRemote field; uint8 array.
  native_wirelessRemote : Array[UInt]
  /// @brief Exact native native_reserve field; uint32.
  native_reserve : UInt
  /// @brief Exact native native_crc field; uint32.
  native_crc : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros1Unitree_legged_msgsHighCmd::new() -> Ros1Unitree_legged_msgsHighCmd {
  Ros1Unitree_legged_msgsHighCmd:: {
    native_head: Array::makei(2, fn(_) {
        0U
      }),
    native_levelFlag: 0U,
    native_frameReserve: 0U,
    native_SN: Array::makei(2, fn(_) {
        0U
      }),
    native_version: Array::makei(2, fn(_) {
        0U
      }),
    native_bandWidth: 0U,
    native_mode: 0U,
    native_gaitType: 0U,
    native_speedLevel: 0U,
    native_footRaiseHeight: 0.0F,
    native_bodyHeight: 0.0F,
    native_position: Array::makei(2, fn(_) {
        0.0F
      }),
    native_euler: Array::makei(3, fn(_) {
        0.0F
      }),
    native_velocity: Array::makei(2, fn(_) {
        0.0F
      }),
    native_yawSpeed: 0.0F,
    native_bms: Ros1Unitree_legged_msgsBmsCmd::new(),
    native_led: Array::makei(4, fn(_) {
        Ros1Unitree_legged_msgsLED::new()
      }),
    native_wirelessRemote: Array::makei(40, fn(_) {
        0U
      }),
    native_reserve: 0U,
    native_crc: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 129 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros1Unitree_legged_msgsHighCmd::max_wire_bytes() -> Int32 {
  129
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros1Unitree_legged_msgsHighCmd::codec_identity() -> String {
  "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros1Unitree_legged_msgsHighCmd::write_fields(
  self : Ros1Unitree_legged_msgsHighCmd,
  writer : Writer,
) -> Unit {
  if self.native_head.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_head {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_levelFlag > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_levelFlag.to_uint64(), 1)
  if self.native_frameReserve > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_frameReserve.to_uint64(), 1)
  if self.native_SN.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_SN {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_version.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_version {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_bandWidth > 65535U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_bandWidth.to_uint64(), 2)
  if self.native_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode.to_uint64(), 1)
  if self.native_gaitType > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_gaitType.to_uint64(), 1)
  if self.native_speedLevel > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_speedLevel.to_uint64(), 1)
  if self.native_footRaiseHeight.is_nan() || self.native_footRaiseHeight.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_footRaiseHeight).to_uint64(), 4)
  if self.native_bodyHeight.is_nan() || self.native_bodyHeight.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_bodyHeight).to_uint64(), 4)
  if self.native_position.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_position {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_euler.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_euler {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_velocity.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_velocity {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_yawSpeed.is_nan() || self.native_yawSpeed.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_yawSpeed).to_uint64(), 4)
  self.native_bms.write_fields(writer)
  if self.native_led.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_led {
    item.write_fields(writer)
  }
  if self.native_wirelessRemote.length() != 40 {
    writer.status = 22;
    return
  }
  for item in self.native_wirelessRemote {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  writer.integer(self.native_reserve.to_uint64(), 4)
  writer.integer(self.native_crc.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros1Unitree_legged_msgsHighCmd::encode(self : Ros1Unitree_legged_msgsHighCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(129)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros1Unitree_legged_msgsHighCmd::read_fields(reader : Reader) -> Ros1Unitree_legged_msgsHighCmd {
  let native_head_count = 2
  let native_head : Array[UInt] = []
  for i = 0; i < native_head_count; i = i + 1 {
    native_head.push(reader.integer(1).to_uint())
  }
  let native_levelFlag = reader.integer(1).to_uint()
  let native_frameReserve = reader.integer(1).to_uint()
  let native_SN_count = 2
  let native_SN : Array[UInt] = []
  for i = 0; i < native_SN_count; i = i + 1 {
    native_SN.push(reader.integer(4).to_uint())
  }
  let native_version_count = 2
  let native_version : Array[UInt] = []
  for i = 0; i < native_version_count; i = i + 1 {
    native_version.push(reader.integer(4).to_uint())
  }
  let native_bandWidth = reader.integer(2).to_uint()
  let native_mode = reader.integer(1).to_uint()
  let native_gaitType = reader.integer(1).to_uint()
  let native_speedLevel = reader.integer(1).to_uint()
  let native_footRaiseHeight = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_bodyHeight = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_position_count = 2
  let native_position : Array[Float] = []
  for i = 0; i < native_position_count; i = i + 1 {
    native_position.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_euler_count = 3
  let native_euler : Array[Float] = []
  for i = 0; i < native_euler_count; i = i + 1 {
    native_euler.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_velocity_count = 2
  let native_velocity : Array[Float] = []
  for i = 0; i < native_velocity_count; i = i + 1 {
    native_velocity.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_yawSpeed = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_bms = Ros1Unitree_legged_msgsBmsCmd::read_fields(reader)
  let native_led_count = 4
  let native_led : Array[Ros1Unitree_legged_msgsLED] = []
  for i = 0; i < native_led_count; i = i + 1 {
    native_led.push(Ros1Unitree_legged_msgsLED::read_fields(reader))
  }
  let native_wirelessRemote_count = 40
  let native_wirelessRemote : Array[UInt] = []
  for i = 0; i < native_wirelessRemote_count; i = i + 1 {
    native_wirelessRemote.push(reader.integer(1).to_uint())
  }
  let native_reserve = reader.integer(4).to_uint()
  let native_crc = reader.integer(4).to_uint()
  Ros1Unitree_legged_msgsHighCmd:: {
    native_head,
    native_levelFlag,
    native_frameReserve,
    native_SN,
    native_version,
    native_bandWidth,
    native_mode,
    native_gaitType,
    native_speedLevel,
    native_footRaiseHeight,
    native_bodyHeight,
    native_position,
    native_euler,
    native_velocity,
    native_yawSpeed,
    native_bms,
    native_led,
    native_wirelessRemote,
    native_reserve,
    native_crc,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros1Unitree_legged_msgsHighCmd::decode(
  bytes : Bytes,
) -> Result[Ros1Unitree_legged_msgsHighCmd, Int32] {
  if bytes.length() > 129 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros1Unitree_legged_msgsHighCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_legged_msgs/IMU.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros1Unitree_legged_msgsIMU {
  /// @brief Exact native native_quaternion field; float32 array.
  native_quaternion : Array[Float]
  /// @brief Exact native native_gyroscope field; float32 array.
  native_gyroscope : Array[Float]
  /// @brief Exact native native_accelerometer field; float32 array.
  native_accelerometer : Array[Float]
  /// @brief Exact native native_rpy field; float32 array.
  native_rpy : Array[Float]
  /// @brief Exact native native_temperature field; int8.
  native_temperature : Int32
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros1Unitree_legged_msgsIMU::new() -> Ros1Unitree_legged_msgsIMU {
  Ros1Unitree_legged_msgsIMU:: {
    native_quaternion: Array::makei(4, fn(_) {
        0.0F
      }),
    native_gyroscope: Array::makei(3, fn(_) {
        0.0F
      }),
    native_accelerometer: Array::makei(3, fn(_) {
        0.0F
      }),
    native_rpy: Array::makei(3, fn(_) {
        0.0F
      }),
    native_temperature: 0,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 53 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros1Unitree_legged_msgsIMU::max_wire_bytes() -> Int32 {
  53
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros1Unitree_legged_msgsIMU::codec_identity() -> String {
  "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros1Unitree_legged_msgsIMU::write_fields(
  self : Ros1Unitree_legged_msgsIMU,
  writer : Writer,
) -> Unit {
  if self.native_quaternion.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_quaternion {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_gyroscope.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_gyroscope {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_accelerometer.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_accelerometer {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_rpy.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_rpy {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_temperature < -128 || self.native_temperature > 127 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_temperature.to_uint64(), 1)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros1Unitree_legged_msgsIMU::encode(self : Ros1Unitree_legged_msgsIMU) -> Result[Bytes, Int32] {
  let writer = Writer::new(53)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros1Unitree_legged_msgsIMU::read_fields(reader : Reader) -> Ros1Unitree_legged_msgsIMU {
  let native_quaternion_count = 4
  let native_quaternion : Array[Float] = []
  for i = 0; i < native_quaternion_count; i = i + 1 {
    native_quaternion.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_gyroscope_count = 3
  let native_gyroscope : Array[Float] = []
  for i = 0; i < native_gyroscope_count; i = i + 1 {
    native_gyroscope.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_accelerometer_count = 3
  let native_accelerometer : Array[Float] = []
  for i = 0; i < native_accelerometer_count; i = i + 1 {
    native_accelerometer.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_rpy_count = 3
  let native_rpy : Array[Float] = []
  for i = 0; i < native_rpy_count; i = i + 1 {
    native_rpy.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_temperature = ((reader.integer(1).to_int() << 24) >> 24)
  Ros1Unitree_legged_msgsIMU:: {
    native_quaternion,
    native_gyroscope,
    native_accelerometer,
    native_rpy,
    native_temperature,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros1Unitree_legged_msgsIMU::decode(
  bytes : Bytes,
) -> Result[Ros1Unitree_legged_msgsIMU, Int32] {
  if bytes.length() > 53 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros1Unitree_legged_msgsIMU::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_legged_msgs/MotorState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros1Unitree_legged_msgsMotorState {
  /// @brief Exact native native_mode field; uint8.
  native_mode : UInt
  /// @brief Exact native native_q field; float32.
  native_q : Float
  /// @brief Exact native native_dq field; float32.
  native_dq : Float
  /// @brief Exact native native_ddq field; float32.
  native_ddq : Float
  /// @brief Exact native native_tauEst field; float32.
  native_tauEst : Float
  /// @brief Exact native native_q_raw field; float32.
  native_q_raw : Float
  /// @brief Exact native native_dq_raw field; float32.
  native_dq_raw : Float
  /// @brief Exact native native_ddq_raw field; float32.
  native_ddq_raw : Float
  /// @brief Exact native native_temperature field; int8.
  native_temperature : Int32
  /// @brief Exact native native_reserve field; uint32 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros1Unitree_legged_msgsMotorState::new() -> Ros1Unitree_legged_msgsMotorState {
  Ros1Unitree_legged_msgsMotorState:: {
    native_mode: 0U,
    native_q: 0.0F,
    native_dq: 0.0F,
    native_ddq: 0.0F,
    native_tauEst: 0.0F,
    native_q_raw: 0.0F,
    native_dq_raw: 0.0F,
    native_ddq_raw: 0.0F,
    native_temperature: 0,
    native_reserve: Array::makei(2, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 38 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros1Unitree_legged_msgsMotorState::max_wire_bytes() -> Int32 {
  38
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros1Unitree_legged_msgsMotorState::codec_identity() -> String {
  "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros1Unitree_legged_msgsMotorState::write_fields(
  self : Ros1Unitree_legged_msgsMotorState,
  writer : Writer,
) -> Unit {
  if self.native_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode.to_uint64(), 1)
  if self.native_q.is_nan() || self.native_q.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_q).to_uint64(), 4)
  if self.native_dq.is_nan() || self.native_dq.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_dq).to_uint64(), 4)
  if self.native_ddq.is_nan() || self.native_ddq.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_ddq).to_uint64(), 4)
  if self.native_tauEst.is_nan() || self.native_tauEst.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_tauEst).to_uint64(), 4)
  if self.native_q_raw.is_nan() || self.native_q_raw.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_q_raw).to_uint64(), 4)
  if self.native_dq_raw.is_nan() || self.native_dq_raw.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_dq_raw).to_uint64(), 4)
  if self.native_ddq_raw.is_nan() || self.native_ddq_raw.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_ddq_raw).to_uint64(), 4)
  if self.native_temperature < -128 || self.native_temperature > 127 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_temperature.to_uint64(), 1)
  if self.native_reserve.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    writer.integer(item.to_uint64(), 4)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros1Unitree_legged_msgsMotorState::encode(self : Ros1Unitree_legged_msgsMotorState) -> Result[Bytes, Int32] {
  let writer = Writer::new(38)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros1Unitree_legged_msgsMotorState::read_fields(reader : Reader) -> Ros1Unitree_legged_msgsMotorState {
  let native_mode = reader.integer(1).to_uint()
  let native_q = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_dq = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_ddq = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_tauEst = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_q_raw = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_dq_raw = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_ddq_raw = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_temperature = ((reader.integer(1).to_int() << 24) >> 24)
  let native_reserve_count = 2
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(4).to_uint())
  }
  Ros1Unitree_legged_msgsMotorState:: {
    native_mode,
    native_q,
    native_dq,
    native_ddq,
    native_tauEst,
    native_q_raw,
    native_dq_raw,
    native_ddq_raw,
    native_temperature,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros1Unitree_legged_msgsMotorState::decode(
  bytes : Bytes,
) -> Result[Ros1Unitree_legged_msgsMotorState, Int32] {
  if bytes.length() > 38 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros1Unitree_legged_msgsMotorState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_legged_msgs/HighState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros1Unitree_legged_msgsHighState {
  /// @brief Exact native native_head field; uint8 array.
  native_head : Array[UInt]
  /// @brief Exact native native_levelFlag field; uint8.
  native_levelFlag : UInt
  /// @brief Exact native native_frameReserve field; uint8.
  native_frameReserve : UInt
  /// @brief Exact native native_SN field; uint32 array.
  native_SN : Array[UInt]
  /// @brief Exact native native_version field; uint32 array.
  native_version : Array[UInt]
  /// @brief Exact native native_bandWidth field; uint16.
  native_bandWidth : UInt
  /// @brief Exact native native_imu field; unitree_legged_msgs/IMU.
  native_imu : Ros1Unitree_legged_msgsIMU
  /// @brief Exact native native_motorState field; unitree_legged_msgs/MotorState array.
  native_motorState : Array[Ros1Unitree_legged_msgsMotorState]
  /// @brief Exact native native_bms field; unitree_legged_msgs/BmsState.
  native_bms : Ros1Unitree_legged_msgsBmsState
  /// @brief Exact native native_footForce field; int16 array.
  native_footForce : Array[Int32]
  /// @brief Exact native native_footForceEst field; int16 array.
  native_footForceEst : Array[Int32]
  /// @brief Exact native native_mode field; uint8.
  native_mode : UInt
  /// @brief Exact native native_progress field; float32.
  native_progress : Float
  /// @brief Exact native native_gaitType field; uint8.
  native_gaitType : UInt
  /// @brief Exact native native_footRaiseHeight field; float32.
  native_footRaiseHeight : Float
  /// @brief Exact native native_position field; float32 array.
  native_position : Array[Float]
  /// @brief Exact native native_bodyHeight field; float32.
  native_bodyHeight : Float
  /// @brief Exact native native_velocity field; float32 array.
  native_velocity : Array[Float]
  /// @brief Exact native native_yawSpeed field; float32.
  native_yawSpeed : Float
  /// @brief Exact native native_rangeObstacle field; float32 array.
  native_rangeObstacle : Array[Float]
  /// @brief Exact native native_footPosition2Body field; unitree_legged_msgs/Cartesian array.
  native_footPosition2Body : Array[Ros1Unitree_legged_msgsCartesian]
  /// @brief Exact native native_footSpeed2Body field; unitree_legged_msgs/Cartesian array.
  native_footSpeed2Body : Array[Ros1Unitree_legged_msgsCartesian]
  /// @brief Exact native native_wirelessRemote field; uint8 array.
  native_wirelessRemote : Array[UInt]
  /// @brief Exact native native_reserve field; uint32.
  native_reserve : UInt
  /// @brief Exact native native_crc field; uint32.
  native_crc : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros1Unitree_legged_msgsHighState::new() -> Ros1Unitree_legged_msgsHighState {
  Ros1Unitree_legged_msgsHighState:: {
    native_head: Array::makei(2, fn(_) {
        0U
      }),
    native_levelFlag: 0U,
    native_frameReserve: 0U,
    native_SN: Array::makei(2, fn(_) {
        0U
      }),
    native_version: Array::makei(2, fn(_) {
        0U
      }),
    native_bandWidth: 0U,
    native_imu: Ros1Unitree_legged_msgsIMU::new(),
    native_motorState: Array::makei(20, fn(_) {
        Ros1Unitree_legged_msgsMotorState::new()
      }),
    native_bms: Ros1Unitree_legged_msgsBmsState::new(),
    native_footForce: Array::makei(4, fn(_) {
        0
      }),
    native_footForceEst: Array::makei(4, fn(_) {
        0
      }),
    native_mode: 0U,
    native_progress: 0.0F,
    native_gaitType: 0U,
    native_footRaiseHeight: 0.0F,
    native_position: Array::makei(3, fn(_) {
        0.0F
      }),
    native_bodyHeight: 0.0F,
    native_velocity: Array::makei(3, fn(_) {
        0.0F
      }),
    native_yawSpeed: 0.0F,
    native_rangeObstacle: Array::makei(4, fn(_) {
        0.0F
      }),
    native_footPosition2Body: Array::makei(4, fn(_) {
        Ros1Unitree_legged_msgsCartesian::new()
      }),
    native_footSpeed2Body: Array::makei(4, fn(_) {
        Ros1Unitree_legged_msgsCartesian::new()
      }),
    native_wirelessRemote: Array::makei(40, fn(_) {
        0U
      }),
    native_reserve: 0U,
    native_crc: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1087 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros1Unitree_legged_msgsHighState::max_wire_bytes() -> Int32 {
  1087
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros1Unitree_legged_msgsHighState::codec_identity() -> String {
  "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros1Unitree_legged_msgsHighState::write_fields(
  self : Ros1Unitree_legged_msgsHighState,
  writer : Writer,
) -> Unit {
  if self.native_head.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_head {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_levelFlag > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_levelFlag.to_uint64(), 1)
  if self.native_frameReserve > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_frameReserve.to_uint64(), 1)
  if self.native_SN.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_SN {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_version.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_version {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_bandWidth > 65535U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_bandWidth.to_uint64(), 2)
  self.native_imu.write_fields(writer)
  if self.native_motorState.length() != 20 {
    writer.status = 22;
    return
  }
  for item in self.native_motorState {
    item.write_fields(writer)
  }
  self.native_bms.write_fields(writer)
  if self.native_footForce.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_footForce {
    if item < -32768 || item > 32767 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  if self.native_footForceEst.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_footForceEst {
    if item < -32768 || item > 32767 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  if self.native_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode.to_uint64(), 1)
  if self.native_progress.is_nan() || self.native_progress.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_progress).to_uint64(), 4)
  if self.native_gaitType > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_gaitType.to_uint64(), 1)
  if self.native_footRaiseHeight.is_nan() || self.native_footRaiseHeight.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_footRaiseHeight).to_uint64(), 4)
  if self.native_position.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_position {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_bodyHeight.is_nan() || self.native_bodyHeight.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_bodyHeight).to_uint64(), 4)
  if self.native_velocity.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_velocity {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_yawSpeed.is_nan() || self.native_yawSpeed.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_yawSpeed).to_uint64(), 4)
  if self.native_rangeObstacle.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_rangeObstacle {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_footPosition2Body.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_footPosition2Body {
    item.write_fields(writer)
  }
  if self.native_footSpeed2Body.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_footSpeed2Body {
    item.write_fields(writer)
  }
  if self.native_wirelessRemote.length() != 40 {
    writer.status = 22;
    return
  }
  for item in self.native_wirelessRemote {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  writer.integer(self.native_reserve.to_uint64(), 4)
  writer.integer(self.native_crc.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros1Unitree_legged_msgsHighState::encode(self : Ros1Unitree_legged_msgsHighState) -> Result[Bytes, Int32] {
  let writer = Writer::new(1087)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros1Unitree_legged_msgsHighState::read_fields(reader : Reader) -> Ros1Unitree_legged_msgsHighState {
  let native_head_count = 2
  let native_head : Array[UInt] = []
  for i = 0; i < native_head_count; i = i + 1 {
    native_head.push(reader.integer(1).to_uint())
  }
  let native_levelFlag = reader.integer(1).to_uint()
  let native_frameReserve = reader.integer(1).to_uint()
  let native_SN_count = 2
  let native_SN : Array[UInt] = []
  for i = 0; i < native_SN_count; i = i + 1 {
    native_SN.push(reader.integer(4).to_uint())
  }
  let native_version_count = 2
  let native_version : Array[UInt] = []
  for i = 0; i < native_version_count; i = i + 1 {
    native_version.push(reader.integer(4).to_uint())
  }
  let native_bandWidth = reader.integer(2).to_uint()
  let native_imu = Ros1Unitree_legged_msgsIMU::read_fields(reader)
  let native_motorState_count = 20
  let native_motorState : Array[Ros1Unitree_legged_msgsMotorState] = []
  for i = 0; i < native_motorState_count; i = i + 1 {
    native_motorState.push(Ros1Unitree_legged_msgsMotorState::read_fields(reader))
  }
  let native_bms = Ros1Unitree_legged_msgsBmsState::read_fields(reader)
  let native_footForce_count = 4
  let native_footForce : Array[Int32] = []
  for i = 0; i < native_footForce_count; i = i + 1 {
    native_footForce.push(((reader.integer(2).to_int() << 16) >> 16))
  }
  let native_footForceEst_count = 4
  let native_footForceEst : Array[Int32] = []
  for i = 0; i < native_footForceEst_count; i = i + 1 {
    native_footForceEst.push(((reader.integer(2).to_int() << 16) >> 16))
  }
  let native_mode = reader.integer(1).to_uint()
  let native_progress = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_gaitType = reader.integer(1).to_uint()
  let native_footRaiseHeight = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_position_count = 3
  let native_position : Array[Float] = []
  for i = 0; i < native_position_count; i = i + 1 {
    native_position.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_bodyHeight = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_velocity_count = 3
  let native_velocity : Array[Float] = []
  for i = 0; i < native_velocity_count; i = i + 1 {
    native_velocity.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_yawSpeed = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_rangeObstacle_count = 4
  let native_rangeObstacle : Array[Float] = []
  for i = 0; i < native_rangeObstacle_count; i = i + 1 {
    native_rangeObstacle.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_footPosition2Body_count = 4
  let native_footPosition2Body : Array[Ros1Unitree_legged_msgsCartesian] = []
  for i = 0; i < native_footPosition2Body_count; i = i + 1 {
    native_footPosition2Body.push(Ros1Unitree_legged_msgsCartesian::read_fields(reader))
  }
  let native_footSpeed2Body_count = 4
  let native_footSpeed2Body : Array[Ros1Unitree_legged_msgsCartesian] = []
  for i = 0; i < native_footSpeed2Body_count; i = i + 1 {
    native_footSpeed2Body.push(Ros1Unitree_legged_msgsCartesian::read_fields(reader))
  }
  let native_wirelessRemote_count = 40
  let native_wirelessRemote : Array[UInt] = []
  for i = 0; i < native_wirelessRemote_count; i = i + 1 {
    native_wirelessRemote.push(reader.integer(1).to_uint())
  }
  let native_reserve = reader.integer(4).to_uint()
  let native_crc = reader.integer(4).to_uint()
  Ros1Unitree_legged_msgsHighState:: {
    native_head,
    native_levelFlag,
    native_frameReserve,
    native_SN,
    native_version,
    native_bandWidth,
    native_imu,
    native_motorState,
    native_bms,
    native_footForce,
    native_footForceEst,
    native_mode,
    native_progress,
    native_gaitType,
    native_footRaiseHeight,
    native_position,
    native_bodyHeight,
    native_velocity,
    native_yawSpeed,
    native_rangeObstacle,
    native_footPosition2Body,
    native_footSpeed2Body,
    native_wirelessRemote,
    native_reserve,
    native_crc,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros1Unitree_legged_msgsHighState::decode(
  bytes : Bytes,
) -> Result[Ros1Unitree_legged_msgsHighState, Int32] {
  if bytes.length() > 1087 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros1Unitree_legged_msgsHighState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_legged_msgs/MotorCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros1Unitree_legged_msgsMotorCmd {
  /// @brief Exact native native_mode field; uint8.
  native_mode : UInt
  /// @brief Exact native native_q field; float32.
  native_q : Float
  /// @brief Exact native native_dq field; float32.
  native_dq : Float
  /// @brief Exact native native_tau field; float32.
  native_tau : Float
  /// @brief Exact native native_Kp field; float32.
  native_Kp : Float
  /// @brief Exact native native_Kd field; float32.
  native_Kd : Float
  /// @brief Exact native native_reserve field; uint32 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros1Unitree_legged_msgsMotorCmd::new() -> Ros1Unitree_legged_msgsMotorCmd {
  Ros1Unitree_legged_msgsMotorCmd:: {
    native_mode: 0U,
    native_q: 0.0F,
    native_dq: 0.0F,
    native_tau: 0.0F,
    native_Kp: 0.0F,
    native_Kd: 0.0F,
    native_reserve: Array::makei(3, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 33 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros1Unitree_legged_msgsMotorCmd::max_wire_bytes() -> Int32 {
  33
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros1Unitree_legged_msgsMotorCmd::codec_identity() -> String {
  "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros1Unitree_legged_msgsMotorCmd::write_fields(
  self : Ros1Unitree_legged_msgsMotorCmd,
  writer : Writer,
) -> Unit {
  if self.native_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode.to_uint64(), 1)
  if self.native_q.is_nan() || self.native_q.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_q).to_uint64(), 4)
  if self.native_dq.is_nan() || self.native_dq.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_dq).to_uint64(), 4)
  if self.native_tau.is_nan() || self.native_tau.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_tau).to_uint64(), 4)
  if self.native_Kp.is_nan() || self.native_Kp.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_Kp).to_uint64(), 4)
  if self.native_Kd.is_nan() || self.native_Kd.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_Kd).to_uint64(), 4)
  if self.native_reserve.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    writer.integer(item.to_uint64(), 4)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros1Unitree_legged_msgsMotorCmd::encode(self : Ros1Unitree_legged_msgsMotorCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(33)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros1Unitree_legged_msgsMotorCmd::read_fields(reader : Reader) -> Ros1Unitree_legged_msgsMotorCmd {
  let native_mode = reader.integer(1).to_uint()
  let native_q = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_dq = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_tau = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_Kp = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_Kd = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_reserve_count = 3
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(4).to_uint())
  }
  Ros1Unitree_legged_msgsMotorCmd:: {
    native_mode,
    native_q,
    native_dq,
    native_tau,
    native_Kp,
    native_Kd,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros1Unitree_legged_msgsMotorCmd::decode(
  bytes : Bytes,
) -> Result[Ros1Unitree_legged_msgsMotorCmd, Int32] {
  if bytes.length() > 33 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros1Unitree_legged_msgsMotorCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_legged_msgs/LowCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros1Unitree_legged_msgsLowCmd {
  /// @brief Exact native native_head field; uint8 array.
  native_head : Array[UInt]
  /// @brief Exact native native_levelFlag field; uint8.
  native_levelFlag : UInt
  /// @brief Exact native native_frameReserve field; uint8.
  native_frameReserve : UInt
  /// @brief Exact native native_SN field; uint32 array.
  native_SN : Array[UInt]
  /// @brief Exact native native_version field; uint32 array.
  native_version : Array[UInt]
  /// @brief Exact native native_bandWidth field; uint16.
  native_bandWidth : UInt
  /// @brief Exact native native_motorCmd field; unitree_legged_msgs/MotorCmd array.
  native_motorCmd : Array[Ros1Unitree_legged_msgsMotorCmd]
  /// @brief Exact native native_bms field; unitree_legged_msgs/BmsCmd.
  native_bms : Ros1Unitree_legged_msgsBmsCmd
  /// @brief Exact native native_wirelessRemote field; uint8 array.
  native_wirelessRemote : Array[UInt]
  /// @brief Exact native native_reserve field; uint32.
  native_reserve : UInt
  /// @brief Exact native native_crc field; uint32.
  native_crc : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros1Unitree_legged_msgsLowCmd::new() -> Ros1Unitree_legged_msgsLowCmd {
  Ros1Unitree_legged_msgsLowCmd:: {
    native_head: Array::makei(2, fn(_) {
        0U
      }),
    native_levelFlag: 0U,
    native_frameReserve: 0U,
    native_SN: Array::makei(2, fn(_) {
        0U
      }),
    native_version: Array::makei(2, fn(_) {
        0U
      }),
    native_bandWidth: 0U,
    native_motorCmd: Array::makei(20, fn(_) {
        Ros1Unitree_legged_msgsMotorCmd::new()
      }),
    native_bms: Ros1Unitree_legged_msgsBmsCmd::new(),
    native_wirelessRemote: Array::makei(40, fn(_) {
        0U
      }),
    native_reserve: 0U,
    native_crc: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 734 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros1Unitree_legged_msgsLowCmd::max_wire_bytes() -> Int32 {
  734
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros1Unitree_legged_msgsLowCmd::codec_identity() -> String {
  "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros1Unitree_legged_msgsLowCmd::write_fields(
  self : Ros1Unitree_legged_msgsLowCmd,
  writer : Writer,
) -> Unit {
  if self.native_head.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_head {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_levelFlag > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_levelFlag.to_uint64(), 1)
  if self.native_frameReserve > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_frameReserve.to_uint64(), 1)
  if self.native_SN.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_SN {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_version.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_version {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_bandWidth > 65535U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_bandWidth.to_uint64(), 2)
  if self.native_motorCmd.length() != 20 {
    writer.status = 22;
    return
  }
  for item in self.native_motorCmd {
    item.write_fields(writer)
  }
  self.native_bms.write_fields(writer)
  if self.native_wirelessRemote.length() != 40 {
    writer.status = 22;
    return
  }
  for item in self.native_wirelessRemote {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  writer.integer(self.native_reserve.to_uint64(), 4)
  writer.integer(self.native_crc.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros1Unitree_legged_msgsLowCmd::encode(self : Ros1Unitree_legged_msgsLowCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(734)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros1Unitree_legged_msgsLowCmd::read_fields(reader : Reader) -> Ros1Unitree_legged_msgsLowCmd {
  let native_head_count = 2
  let native_head : Array[UInt] = []
  for i = 0; i < native_head_count; i = i + 1 {
    native_head.push(reader.integer(1).to_uint())
  }
  let native_levelFlag = reader.integer(1).to_uint()
  let native_frameReserve = reader.integer(1).to_uint()
  let native_SN_count = 2
  let native_SN : Array[UInt] = []
  for i = 0; i < native_SN_count; i = i + 1 {
    native_SN.push(reader.integer(4).to_uint())
  }
  let native_version_count = 2
  let native_version : Array[UInt] = []
  for i = 0; i < native_version_count; i = i + 1 {
    native_version.push(reader.integer(4).to_uint())
  }
  let native_bandWidth = reader.integer(2).to_uint()
  let native_motorCmd_count = 20
  let native_motorCmd : Array[Ros1Unitree_legged_msgsMotorCmd] = []
  for i = 0; i < native_motorCmd_count; i = i + 1 {
    native_motorCmd.push(Ros1Unitree_legged_msgsMotorCmd::read_fields(reader))
  }
  let native_bms = Ros1Unitree_legged_msgsBmsCmd::read_fields(reader)
  let native_wirelessRemote_count = 40
  let native_wirelessRemote : Array[UInt] = []
  for i = 0; i < native_wirelessRemote_count; i = i + 1 {
    native_wirelessRemote.push(reader.integer(1).to_uint())
  }
  let native_reserve = reader.integer(4).to_uint()
  let native_crc = reader.integer(4).to_uint()
  Ros1Unitree_legged_msgsLowCmd:: {
    native_head,
    native_levelFlag,
    native_frameReserve,
    native_SN,
    native_version,
    native_bandWidth,
    native_motorCmd,
    native_bms,
    native_wirelessRemote,
    native_reserve,
    native_crc,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros1Unitree_legged_msgsLowCmd::decode(
  bytes : Bytes,
) -> Result[Ros1Unitree_legged_msgsLowCmd, Int32] {
  if bytes.length() > 734 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros1Unitree_legged_msgsLowCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_legged_msgs/LowState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros1Unitree_legged_msgsLowState {
  /// @brief Exact native native_head field; uint8 array.
  native_head : Array[UInt]
  /// @brief Exact native native_levelFlag field; uint8.
  native_levelFlag : UInt
  /// @brief Exact native native_frameReserve field; uint8.
  native_frameReserve : UInt
  /// @brief Exact native native_SN field; uint32 array.
  native_SN : Array[UInt]
  /// @brief Exact native native_version field; uint32 array.
  native_version : Array[UInt]
  /// @brief Exact native native_bandWidth field; uint16.
  native_bandWidth : UInt
  /// @brief Exact native native_imu field; unitree_legged_msgs/IMU.
  native_imu : Ros1Unitree_legged_msgsIMU
  /// @brief Exact native native_motorState field; unitree_legged_msgs/MotorState array.
  native_motorState : Array[Ros1Unitree_legged_msgsMotorState]
  /// @brief Exact native native_bms field; unitree_legged_msgs/BmsState.
  native_bms : Ros1Unitree_legged_msgsBmsState
  /// @brief Exact native native_footForce field; int16 array.
  native_footForce : Array[Int32]
  /// @brief Exact native native_footForceEst field; int16 array.
  native_footForceEst : Array[Int32]
  /// @brief Exact native native_tick field; uint32.
  native_tick : UInt
  /// @brief Exact native native_wirelessRemote field; uint8 array.
  native_wirelessRemote : Array[UInt]
  /// @brief Exact native native_reserve field; uint32.
  native_reserve : UInt
  /// @brief Exact native native_crc field; uint32.
  native_crc : UInt
  /// @brief Exact native native_eeForceRaw field; unitree_legged_msgs/Cartesian array.
  native_eeForceRaw : Array[Ros1Unitree_legged_msgsCartesian]
  /// @brief Exact native native_eeForce field; unitree_legged_msgs/Cartesian array.
  native_eeForce : Array[Ros1Unitree_legged_msgsCartesian]
  /// @brief Exact native native_position field; unitree_legged_msgs/Cartesian.
  native_position : Ros1Unitree_legged_msgsCartesian
  /// @brief Exact native native_velocity field; unitree_legged_msgs/Cartesian.
  native_velocity : Ros1Unitree_legged_msgsCartesian
  /// @brief Exact native native_velocity_w field; unitree_legged_msgs/Cartesian.
  native_velocity_w : Ros1Unitree_legged_msgsCartesian
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros1Unitree_legged_msgsLowState::new() -> Ros1Unitree_legged_msgsLowState {
  Ros1Unitree_legged_msgsLowState:: {
    native_head: Array::makei(2, fn(_) {
        0U
      }),
    native_levelFlag: 0U,
    native_frameReserve: 0U,
    native_SN: Array::makei(2, fn(_) {
        0U
      }),
    native_version: Array::makei(2, fn(_) {
        0U
      }),
    native_bandWidth: 0U,
    native_imu: Ros1Unitree_legged_msgsIMU::new(),
    native_motorState: Array::makei(20, fn(_) {
        Ros1Unitree_legged_msgsMotorState::new()
      }),
    native_bms: Ros1Unitree_legged_msgsBmsState::new(),
    native_footForce: Array::makei(4, fn(_) {
        0
      }),
    native_footForceEst: Array::makei(4, fn(_) {
        0
      }),
    native_tick: 0U,
    native_wirelessRemote: Array::makei(40, fn(_) {
        0U
      }),
    native_reserve: 0U,
    native_crc: 0U,
    native_eeForceRaw: Array::makei(4, fn(_) {
        Ros1Unitree_legged_msgsCartesian::new()
      }),
    native_eeForce: Array::makei(4, fn(_) {
        Ros1Unitree_legged_msgsCartesian::new()
      }),
    native_position: Ros1Unitree_legged_msgsCartesian::new(),
    native_velocity: Ros1Unitree_legged_msgsCartesian::new(),
    native_velocity_w: Ros1Unitree_legged_msgsCartesian::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1069 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros1Unitree_legged_msgsLowState::max_wire_bytes() -> Int32 {
  1069
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros1Unitree_legged_msgsLowState::codec_identity() -> String {
  "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros1Unitree_legged_msgsLowState::write_fields(
  self : Ros1Unitree_legged_msgsLowState,
  writer : Writer,
) -> Unit {
  if self.native_head.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_head {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_levelFlag > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_levelFlag.to_uint64(), 1)
  if self.native_frameReserve > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_frameReserve.to_uint64(), 1)
  if self.native_SN.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_SN {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_version.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_version {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_bandWidth > 65535U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_bandWidth.to_uint64(), 2)
  self.native_imu.write_fields(writer)
  if self.native_motorState.length() != 20 {
    writer.status = 22;
    return
  }
  for item in self.native_motorState {
    item.write_fields(writer)
  }
  self.native_bms.write_fields(writer)
  if self.native_footForce.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_footForce {
    if item < -32768 || item > 32767 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  if self.native_footForceEst.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_footForceEst {
    if item < -32768 || item > 32767 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  writer.integer(self.native_tick.to_uint64(), 4)
  if self.native_wirelessRemote.length() != 40 {
    writer.status = 22;
    return
  }
  for item in self.native_wirelessRemote {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  writer.integer(self.native_reserve.to_uint64(), 4)
  writer.integer(self.native_crc.to_uint64(), 4)
  if self.native_eeForceRaw.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_eeForceRaw {
    item.write_fields(writer)
  }
  if self.native_eeForce.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_eeForce {
    item.write_fields(writer)
  }
  self.native_position.write_fields(writer)
  self.native_velocity.write_fields(writer)
  self.native_velocity_w.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros1Unitree_legged_msgsLowState::encode(self : Ros1Unitree_legged_msgsLowState) -> Result[Bytes, Int32] {
  let writer = Writer::new(1069)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros1Unitree_legged_msgsLowState::read_fields(reader : Reader) -> Ros1Unitree_legged_msgsLowState {
  let native_head_count = 2
  let native_head : Array[UInt] = []
  for i = 0; i < native_head_count; i = i + 1 {
    native_head.push(reader.integer(1).to_uint())
  }
  let native_levelFlag = reader.integer(1).to_uint()
  let native_frameReserve = reader.integer(1).to_uint()
  let native_SN_count = 2
  let native_SN : Array[UInt] = []
  for i = 0; i < native_SN_count; i = i + 1 {
    native_SN.push(reader.integer(4).to_uint())
  }
  let native_version_count = 2
  let native_version : Array[UInt] = []
  for i = 0; i < native_version_count; i = i + 1 {
    native_version.push(reader.integer(4).to_uint())
  }
  let native_bandWidth = reader.integer(2).to_uint()
  let native_imu = Ros1Unitree_legged_msgsIMU::read_fields(reader)
  let native_motorState_count = 20
  let native_motorState : Array[Ros1Unitree_legged_msgsMotorState] = []
  for i = 0; i < native_motorState_count; i = i + 1 {
    native_motorState.push(Ros1Unitree_legged_msgsMotorState::read_fields(reader))
  }
  let native_bms = Ros1Unitree_legged_msgsBmsState::read_fields(reader)
  let native_footForce_count = 4
  let native_footForce : Array[Int32] = []
  for i = 0; i < native_footForce_count; i = i + 1 {
    native_footForce.push(((reader.integer(2).to_int() << 16) >> 16))
  }
  let native_footForceEst_count = 4
  let native_footForceEst : Array[Int32] = []
  for i = 0; i < native_footForceEst_count; i = i + 1 {
    native_footForceEst.push(((reader.integer(2).to_int() << 16) >> 16))
  }
  let native_tick = reader.integer(4).to_uint()
  let native_wirelessRemote_count = 40
  let native_wirelessRemote : Array[UInt] = []
  for i = 0; i < native_wirelessRemote_count; i = i + 1 {
    native_wirelessRemote.push(reader.integer(1).to_uint())
  }
  let native_reserve = reader.integer(4).to_uint()
  let native_crc = reader.integer(4).to_uint()
  let native_eeForceRaw_count = 4
  let native_eeForceRaw : Array[Ros1Unitree_legged_msgsCartesian] = []
  for i = 0; i < native_eeForceRaw_count; i = i + 1 {
    native_eeForceRaw.push(Ros1Unitree_legged_msgsCartesian::read_fields(reader))
  }
  let native_eeForce_count = 4
  let native_eeForce : Array[Ros1Unitree_legged_msgsCartesian] = []
  for i = 0; i < native_eeForce_count; i = i + 1 {
    native_eeForce.push(Ros1Unitree_legged_msgsCartesian::read_fields(reader))
  }
  let native_position = Ros1Unitree_legged_msgsCartesian::read_fields(reader)
  let native_velocity = Ros1Unitree_legged_msgsCartesian::read_fields(reader)
  let native_velocity_w = Ros1Unitree_legged_msgsCartesian::read_fields(reader)
  Ros1Unitree_legged_msgsLowState:: {
    native_head,
    native_levelFlag,
    native_frameReserve,
    native_SN,
    native_version,
    native_bandWidth,
    native_imu,
    native_motorState,
    native_bms,
    native_footForce,
    native_footForceEst,
    native_tick,
    native_wirelessRemote,
    native_reserve,
    native_crc,
    native_eeForceRaw,
    native_eeForce,
    native_position,
    native_velocity,
    native_velocity_w,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros1Unitree_legged_msgsLowState::decode(
  bytes : Bytes,
) -> Result[Ros1Unitree_legged_msgsLowState, Int32] {
  if bytes.length() > 1069 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros1Unitree_legged_msgsLowState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}
