/// @file native_command.mbt
/// @brief Own complete native ROS String/Trigger records and explicit command lifetimes.
/// @details Genuine MoonBit owns all fields, scalar import choices and checked
/// once-only cleanup. Scratch offsets lie below the explicitly reserved heap;
/// managed object addresses never cross the ABI. Fatal traps require outer cleanup.

///|
/// @brief Own the complete original String data field within an explicit byte quota.
pub(all) struct StringValue {
  data : String
}

///|
/// @brief Own both original Trigger response fields; its request has no fields.
pub(all) struct TriggerResponse {
  success : Bool
  message : String
}

///|
/// @brief Own complete values and separate original operation/transport/cleanup facts.
/// @details All status bits remain UInt; original length and handles remain UInt64.
pub(all) struct Outcome {
  mut primary : UInt
  mut cleanup : UInt
  mut rpc : UInt
  mut cleanup_present : Bool
  mut rpc_present : Bool
  mut response_present : Bool
  mut length : UInt64
  mut string : StringValue
  mut trigger : TriggerResponse
  mut wire : Bytes
}

///|
/// @brief Construct local empty facts without native effects or invented length writes.
fn empty() -> Outcome {
  { primary: 0U, cleanup: 0U, rpc: 0U, cleanup_present: false,
    rpc_present: false, response_present: false, length: 0xffffffffffffffffUL,
    string: { data: "" }, trigger: { success: false, message: "" }, wire: b"" }
}

///|
/// @brief Encode one complete strict UTF-8 field without NUL.
/// @param text Whole original text. @param maximum Explicit inclusive SDK byte quota.
/// @return Whole owned canonical bytes or exact canonical error 22.
fn encode_text(text : String, maximum : Int32) -> Result[Bytes, UInt] {
  let bytes = match @wire.bounded_utf8(text, maximum) {
    Ok(value) => value
    Err(_) => return Err(22U)
  }
  for byte in bytes { if byte.to_int() == 0 { return Err(22U) } }
  Ok(@wire.i32(bytes.length()) + bytes)
}

///|
/// @brief Decode exactly one complete strict UTF-8 length-prefixed field.
/// @param bytes Whole canonical input. @param maximum Explicit inclusive byte quota.
/// @return Whole owned original text; malformed/trailing input yields 22.
fn decode_text(bytes : Bytes, maximum : Int32) -> Result[String, UInt] {
  if bytes.length() < 4 || bytes.length() > maximum + 4 { return Err(22U) }
  for i = 4; i < bytes.length(); i = i + 1 {
    if bytes[i].to_int() == 0 { return Err(22U) }
  }
  match @wire.read_string(bytes) {
    Ok(value) => Ok(value)
    Err(_) => Err(22U)
  }
}

///|
/// @brief Encode the complete original String. @param value Whole field. @return Bytes or 22.
pub fn StringValue::encode(value : StringValue) -> Result[Bytes, UInt] {
  encode_text(value.data, 252)
}

///|
/// @brief Decode a whole original String. @param bytes Complete input. @return Owned value or 22.
pub fn StringValue::decode(bytes : Bytes) -> Result[StringValue, UInt] {
  match decode_text(bytes, 252) {
    Ok(data) => Ok({ data, })
    Err(code) => Err(code)
  }
}

///|
/// @brief Encode both original Trigger fields, retaining false and full diagnostic.
/// @param value Whole response. @return Complete owned bytes or 22.
pub fn TriggerResponse::encode(value : TriggerResponse) -> Result[Bytes, UInt] {
  match encode_text(value.message, 251) {
    Ok(bytes) => Ok(@wire.bool_bytes(value.success) + bytes)
    Err(code) => Err(code)
  }
}

///|
/// @brief Decode both original Trigger fields transactionally with strict boolean checks.
/// @param bytes Whole input. @return Complete owned response or 22; no partial value escapes.
pub fn TriggerResponse::decode(bytes : Bytes) -> Result[TriggerResponse, UInt] {
  if bytes.length() < 5 || bytes.length() > 256 || bytes[0].to_int() > 1 { return Err(22U) }
  let text = Bytes::makei(bytes.length() - 1, fn(i) { bytes[i + 1] })
  match decode_text(text, 251) {
    Ok(message) => Ok({ success: bytes[0].to_int() == 1, message })
    Err(code) => Err(code)
  }
}

///|
/// @brief Read one reserved scratch byte without a managed-pointer cast.
extern "wasm" fn load_byte(address : Int32) -> Int32 =
  #|(func (param i32) (result i32) (i32.load8_u (local.get 0)))

///|
/// @brief Read one complete reserved full-width slot without numeric narrowing.
extern "wasm" fn load_u64(address : Int32) -> UInt64 =
  #|(func (param i32) (result i64) (i64.load (local.get 0)))

///|
/// @brief Write one reserved scratch byte; callers supply the bounded original extent.
extern "wasm" fn store_byte(address : Int32, value : Int32) -> Unit =
  #|(func (param i32 i32) (i32.store8 (local.get 0) (local.get 1)))

///|
/// @brief Write one reserved wasm32 scratch word without a managed-pointer cast.
extern "wasm" fn store_word(address : Int32, value : Int32) -> Unit =
  #|(func (param i32 i32) (i32.store (local.get 0) (local.get 1)))

///|
/// @brief Write one full-width original scratch slot without truncation.
extern "wasm" fn store_u64(address : Int32, value : UInt64) -> Unit =
  #|(func (param i32 i64) (i64.store (local.get 0) (local.get 1)))

///|
/// @brief Import the genuine WASI Preview 1 finite monotonic event wait.
fn poll_oneoff(input : Int32, output : Int32, count : Int32, ready : Int32) -> Int32 = "wasi_snapshot_preview1" "poll_oneoff"

///|
/// @brief Wait a finite monotonic duration without issuing or replaying a ROS operation.
/// @param milliseconds Explicit duration in 0..1000. @return Original WASI/event error or local 22/5.
fn pause(milliseconds : Int32) -> UInt {
  if milliseconds < 0 || milliseconds > 1000 { return 22U }
  for i = 0; i < 96; i = i + 1 { store_byte(4096 + i, 0) }
  store_word(4112, 1)
  store_u64(4120, milliseconds.to_uint64() * 1000000UL)
  store_u64(4128, 1000000UL)
  let code = poll_oneoff(4096, 4144, 1, 4176).reinterpret_as_uint()
  if code != 0U { return code }
  if load_byte(4176) != 1 || load_byte(4177) != 0 || load_byte(4178) != 0 || load_byte(4179) != 0 || load_byte(4154) != 0 { return 5U }
  (load_byte(4152) | (load_byte(4153) << 8)).reinterpret_as_uint()
}

///|
/// @brief Execute one original finite native operation and normally close its owner once.
/// @param operation Exactly 1 publish, 2 subscribe, or 3 service.call.
/// @param capability_alias Existing original strict UTF-8 grant alias, synchronously borrowed.
/// @return Complete typed fields, original unsigned RPC/length, and independent close facts.
/// @details Publication schedules two samples with a discovery second between them.
/// Only idle 11 permits another of at most 250 polls; admitted calls never replay.
pub fn run(operation : Int32, capability_alias : String) -> Outcome {
  let result = empty()
  if operation < 1 || operation > 3 { result.primary = 22U; return result }
  let alias_bytes = match encode_text(capability_alias, 255) {
    Ok(value) => value
    Err(code) => { result.primary = code; return result }
  }
  if alias_bytes.length() == 4 { result.primary = 22U; return result }
  if operation == 1 {
    result.string = { data: "hello native ROS" }
    result.wire = match result.string.encode() {
      Ok(value) => value
      Err(code) => { result.primary = code; return result }
    }
  }
  if @ros.raw_abi_version() != 1 { result.primary = 95U; return result }
  for i = 4; i < alias_bytes.length(); i = i + 1 { store_byte(8192 + i - 4, alias_bytes[i].to_int()) }
  store_u64(8960, 0UL)
  result.primary = @ros.raw_capability_open(0, 8192UL, (alias_bytes.length() - 4).to_uint64(), 8960UL).reinterpret_as_uint()
  if result.primary != 0U { return result }
  let owner = load_u64(8960)
  if owner == 0UL { result.primary = 5U; return result }
  if operation == 1 {
    for i = 0; i < result.wire.length(); i = i + 1 { store_byte(8448 + i, result.wire[i].to_int()) }
    result.rpc_present = true
    result.rpc = @ros.raw_topic_publish(owner, 0, 8448UL, result.wire.length().to_uint64()).reinterpret_as_uint()
    result.primary = result.rpc
    if result.primary == 0U { result.primary = pause(1000) }
    if result.primary == 0U {
      result.rpc = @ros.raw_topic_publish(owner, 0, 8448UL, result.wire.length().to_uint64()).reinterpret_as_uint()
      result.primary = result.rpc
    }
    if result.primary == 0U { result.primary = pause(200) }
  } else {
    if operation == 2 { result.primary = @ros.raw_topic_subscribe(owner).reinterpret_as_uint() }
    if result.primary == 0U {
      for attempt = 0; attempt < 250; attempt = attempt + 1 {
        store_u64(8976, 0xffffffffffffffffUL)
        result.rpc_present = true
        result.rpc = if operation == 2 {
          @ros.raw_event_poll(owner, 0, 8704UL, 256UL, 8976UL).reinterpret_as_uint()
        } else {
          @ros.raw_service_call(owner, 0, 8448UL, 0UL, 8704UL, 256UL, 8976UL).reinterpret_as_uint()
        }
        result.length = load_u64(8976)
        result.primary = result.rpc
        if operation != 2 || result.rpc != 11U || attempt == 249 { break }
        result.primary = pause(20)
        if result.primary != 0U { break }
      }
    }
    if result.primary == 0U {
      if result.length > 256UL { result.primary = 22U }
      else {
        let bytes = Bytes::makei(result.length.to_int(), fn(i) { load_byte(8704 + i).to_byte() })
        if operation == 2 {
          match StringValue::decode(bytes) {
            Err(code) => result.primary = code
            Ok(value) => match value.encode() {
              Err(code) => result.primary = code
              Ok(encoded) => { result.string = value; result.wire = encoded; result.response_present = true }
            }
          }
        } else {
          match TriggerResponse::decode(bytes) {
            Err(code) => result.primary = code
            Ok(value) => match value.encode() {
              Err(code) => result.primary = code
              Ok(encoded) => {
                result.trigger = value; result.wire = encoded; result.response_present = true
                if !value.success { result.primary = 5U }
              }
            }
          }
        }
      }
    }
  }
  result.cleanup_present = true
  result.cleanup = @ros.raw_capability_close(owner).reinterpret_as_uint()
  result
}

///|
/// @brief Import one checked WASI stdout write; it cannot issue a ROS operation.
fn fd_write(fd : Int32, iov : Int32, count : Int32, written : Int32) -> Int32 = "wasi_snapshot_preview1" "fd_write"

///|
/// @brief Terminate only after ordinary owner cleanup and checked output.
/// @param code Conventional process status; complete JSON statuses remain unsigned.
pub fn exit(code : Int32) -> Unit = "wasi_snapshot_preview1" "proc_exit"

///|
/// @brief Emit complete diagnostics after cleanup with exact u64 length and full canonical hex.
/// @param result Whole owned result. @return First primary, cleanup or output status, clamped for exit.
pub fn report(result : Outcome) -> Int32 {
  let mut wire = ""
  let digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
  for byte in result.wire {
    let value = byte.to_int()
    wire = wire + digits[(value >> 4) & 15] + digits[value & 15]
  }
  let clean = if result.cleanup_present { 1 } else { 0 }
  let called = if result.rpc_present { 1 } else { 0 }
  let present = if result.response_present { 1 } else { 0 }
  let text = "{\"primary\":\{result.primary},"
    + "\"cleanup\":\{result.cleanup},"
    + "\"cleanup_present\":\{clean},"
    + "\"rpc_status\":\{result.rpc},"
    + "\"rpc_present\":\{called},"
    + "\"response_present\":\{present},"
    + "\"length\":\"\{result.length}\","
    + "\"wire_hex\":\"\{wire}\"}\n"
  let bytes = @utf8.encode(text[:])
  let mut code = if result.primary != 0U { result.primary } else { result.cleanup }
  let mut at = 0
  while at < bytes.length() {
    let count = if bytes.length() - at < 4096 { bytes.length() - at } else { 4096 }
    for i = 0; i < count; i = i + 1 { store_byte(4224 + i, bytes[at + i].to_int()) }
    store_word(4160, 4224); store_word(4164, count); store_word(4168, 0)
    let output = fd_write(1, 4160, 1, 4168).reinterpret_as_uint()
    let written = load_byte(4168) | (load_byte(4169) << 8) | (load_byte(4170) << 16) | (load_byte(4171) << 24)
    if output != 0U || written < 1 || written > count {
      if code == 0U { code = 5U }
      break
    }
    at = at + written
  }
  if code > 125U { 125 } else { code.reinterpret_as_int() }
}
