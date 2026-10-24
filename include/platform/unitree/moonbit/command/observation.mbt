/// @file observation.mbt
/// @brief Own complete typed Unitree values and exact original native facts.
/// @details Genuine MoonBit owns every original field, complete codec call,
/// explicit unsigned ABI slot and once-only normal close. Scratch offsets stay
/// below the reserved heap. Fatal traps require outer instance retirement.
///|
/// @brief Retain a complete original value and independent transport/close facts.
/// @details Handles and lengths never pass through signed or floating casts.
pub(all) struct Observation[T] {
  mut primary : UInt
  mut cleanup : UInt
  mut cleanup_present : Bool
  mut rpc_status : UInt
  mut rpc_present : Bool
  mut required_present : Bool
  mut required : UInt64
  mut polls : UInt
  mut value : T?
  mut wire : Bytes
}
///|
/// @brief Create local empty facts without acquiring native authority.
/// @return Owned result whose original length slot starts at the explicit sentinel.
fn[T] Observation::new() -> Observation[T] {
  {
    primary: 0U,
    cleanup: 0U,
    cleanup_present: false,
    rpc_status: 0U,
    rpc_present: false,
    required_present: false,
    required: 0xffffffffffffffffUL,
    polls: 0U,
    value: None,
    wire: b"",
  }
}
///|
/// @brief Read a complete original u64 scratch slot without narrowing its bits.
extern "wasm" fn load_u64(address : Int32) -> UInt64 =
  #|(func (param i32) (result i64) (i64.load (local.get 0)))
///|
/// @brief Receive one whole original record under a finite caller poll budget.
/// @param capability_alias Existing strict UTF-8 exact-type grant; no fallback.
/// @param maximum Exact complete schema ceiling, 1..32768 inclusive bytes.
/// @param decode Pure complete-value decoder with transactional refusal.
/// @param encode Pure full-record encoder; all returned bytes must match input.
/// @param attempts Total poll budget 1..250 including the immediate poll.
/// @param pause Caller-controlled synchronous idle wait, without owner reentry.
/// @return Entire owned value and independent unsigned RPC/length/cleanup facts.
/// @details Idle 11 alone permits another poll. Capacity, decode and transport
/// failures never trigger replay. Managed object addresses do not cross the ABI.
pub fn[T] receive(
  capability_alias : String,
  maximum : Int32,
  decode : (Bytes) -> Result[T, Int32],
  encode : (T) -> Result[Bytes, Int32],
  attempts : Int32,
  pause : () -> Int32,
) -> Observation[T] {
  let result : Observation[T] = Observation::new()
  if attempts < 1 || attempts > 250 || maximum < 1 || maximum > 32768 {
    result.primary = 22U
    return result
  }
  let name = match @wire.bounded_utf8(capability_alias, 255) {
    Ok(value) => value
    Err(_) => {
      result.primary = 22U;
      return result
    }
  }
  if name.length() == 0 {
    result.primary = 22U;
    return result
  }
  for byte in name {
    if byte.to_int() == 0 {
      result.primary = 22U;
      return result
    }
  }
  if @ros.raw_abi_version() != 1 {
    result.primary = 38U;
    return result
  }
  for i = 0; i < name.length(); i = i + 1 {
    store_byte(8192 + i, name[i].to_int())
  }
  store_u64(8960, 0UL)
  result.primary = @ros.raw_capability_open(0, 8192UL, name.length().to_uint64(), 8960UL).reinterpret_as_uint()
  if result.primary != 0U {
    return result
  }
  let owner = load_u64(8960)
  if owner == 0UL {
    result.primary = 5U;
    return result
  }
  result.primary = @ros.raw_topic_subscribe(owner).reinterpret_as_uint()
  if result.primary == 0U {
    for attempt = 0; attempt < attempts; attempt = attempt + 1 {
      store_u64(8976, 0xffffffffffffffffUL)
      result.rpc_present = true
      result.rpc_status = @ros.raw_event_poll(owner, 0, 65536UL, maximum.to_uint64(), 8976UL).reinterpret_as_uint()
      result.polls = result.polls + 1U
      result.required = load_u64(8976)
      // Legacy error 90 may leave the original length slot unwritten.
      // Preserve its full bits and derive presence independently of the errno.
      result.required_present = result.required != 0xffffffffffffffffUL
      result.primary = result.rpc_status
      if result.rpc_status != 11U || attempt + 1 == attempts {
        break
      }
      result.primary = pause().reinterpret_as_uint()
      if result.primary != 0U {
        break
      }
    }
    if result.primary == 0U {
      if result.required > maximum.to_uint64() {
        result.primary = 22U
      } else {
        let bytes = Bytes::makei(result.required.to_int(), fn(i) {
            load_byte(65536 + i).to_byte()
          })
        match decode(bytes) {
          Err(code) => result.primary = code.reinterpret_as_uint()
          Ok(value) => match encode(value) {
            Err(code) => result.primary = code.reinterpret_as_uint()
            Ok(encoded) => {
              let mut equal = encoded.length() == bytes.length()
              if equal {
                for i = 0; i < bytes.length(); i = i + 1 {
                  if encoded[i] != bytes[i] {
                    equal = false;
                    break
                  }
                }
              }
              if !equal {
                result.primary = 22U
              } else {
                result.value = Some(value);
                result.wire = encoded
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
