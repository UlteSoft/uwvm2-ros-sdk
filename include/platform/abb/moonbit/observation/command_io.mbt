/// @file command_io.mbt
/// @brief Validate finite WASI arguments and emit whole observation JSON.
/// @details This helper copies memory0 bytes through linker-reserved scratch
/// below 65536, outside the ROS arena and managed heap. It opens no descriptor,
/// file, native connection or ROS capability. All normal operations are checked.

///|
/// @brief Query finite WASI command argument count and byte extent.
fn args_sizes_get(count : Int32, bytes : Int32) -> Int32 = "wasi_snapshot_preview1" "args_sizes_get"

///|
/// @brief Copy the complete native argument vector into the reserved scratch.
fn args_get(pointers : Int32, bytes : Int32) -> Int32 = "wasi_snapshot_preview1" "args_get"

///|
/// @brief Write one finite stdout iovec without repeating a ROS operation.
fn fd_write(fd : Int32, iov : Int32, count : Int32, written : Int32) -> Int32 = "wasi_snapshot_preview1" "fd_write"

///|
/// @brief Terminate the command after checked observation cleanup and output.
/// @param code Process status, clamped by output_observation when appropriate.
/// @details WASI termination runs no language finalizers or controller recovery.
pub fn exit(code : Int32) -> Unit = "wasi_snapshot_preview1" "proc_exit"

///|
/// @brief Import the real WASI Preview 1 finite event wait operation.
fn poll_oneoff(
  input : Int32,
  output : Int32,
  count : Int32,
  ready : Int32,
) -> Int32 = "wasi_snapshot_preview1" "poll_oneoff"

///|
/// @brief Read one unsigned scratch byte without casting a managed object.
extern "wasm" fn load_byte(address : Int32) -> Int32 =
  #|(func (param i32) (result i32) (i32.load8_u (local.get 0)))

///|
/// @brief Read one little-endian wasm32 scratch word.
extern "wasm" fn load_word(address : Int32) -> Int32 =
  #|(func (param i32) (result i32) (i32.load (local.get 0)))

///|
/// @brief Write one scratch byte inside the explicitly reserved ABI region.
extern "wasm" fn store_byte(address : Int32, value : Int32) -> Unit =
  #|(func (param i32 i32) (i32.store8 (local.get 0) (local.get 1)))

///|
/// @brief Write one wasm32 scratch word without managed-pointer assumptions.
extern "wasm" fn store_word(address : Int32, value : Int32) -> Unit =
  #|(func (param i32 i32) (i32.store (local.get 0) (local.get 1)))

///|
/// @brief Write one full-width little-endian scratch slot.
extern "wasm" fn store_u64(address : Int32, value : UInt64) -> Unit =
  #|(func (param i32 i64) (i64.store (local.get 0) (local.get 1)))

///|
/// @brief Read a complete bounded WASI argument vector with strict UTF-8.
/// @return Owned argument strings or Err(22) for malformed/refused input.
/// @details At most 16 arguments and 4096 aggregate bytes are accepted. Every
/// pointer and NUL terminator must lie inside the supplied argument byte region.
pub fn read_arguments() -> Result[Array[String], Int32] {
  if args_sizes_get(4096, 4100) != 0 {
    return Err(22)
  }
  let count = load_word(4096)
  let size = load_word(4100)
  if count < 1 || count > 16 || size < 1 || size > 4096 {
    return Err(22)
  }
  if args_get(4160, 4224) != 0 {
    return Err(22)
  }
  let values : Array[String] = []
  for index = 0; index < count; index = index + 1 {
    let begin = load_word(4160 + index * 4)
    if begin < 4224 || begin >= 4224 + size {
      return Err(22)
    }
    let mut end = begin
    while end < 4224 + size && load_byte(end) != 0 {
      end = end + 1
    }
    if end == 4224 + size {
      return Err(22)
    }
    let bytes = Bytes::makei(end - begin, fn(i) {
      load_byte(begin + i).to_byte()
    })
    let value = @utf8.decode(bytes[:], ignore_bom=false) catch {
      _ => return Err(22)
    }
    values.push(value)
  }
  Ok(values)
}

///|
/// @brief Write one complete ASCII JSON line with checked short-write handling.
/// @param text Whole JSON value using ASCII numeric and hexadecimal fields.
/// @return Zero after all bytes, or 5 on a WASI refusal/invalid write count.
/// @details Encoding is strict UTF-8. No file is opened and no ROS call repeats.
fn output(text : String) -> Int32 {
  let bytes = match @wire.bounded_utf8(text, 131072) {
    Ok(value) => value
    Err(_) => return 5
  }
  let mut at = 0
  while at < bytes.length() {
    let count = if bytes.length() - at < 4096 {
      bytes.length() - at
    } else {
      4096
    }
    for i = 0; i < count; i = i + 1 {
      store_byte(4224 + i, bytes[at + i].to_int())
    }
    store_word(4160, 4224)
    store_word(4164, count)
    store_word(4168, 0)
    if fd_write(1, 4160, 1, 4168) != 0 {
      return 5
    }
    let written = load_word(4168)
    if written < 1 || written > count {
      return 5
    }
    at = at + written
  }
  0
}

///|
/// @brief Preserve every validated response byte in the complete JSON observation.
/// @param result Borrowed whole typed response and independent operation facts.
/// @return Primary-before-cleanup status clamped to 125; output failure is 5 after prior success.
/// @details required retains its full UInt64 value. Unknown-length errors never
/// invent a length. Formatting/output occurs after checked capability retirement.
pub fn[T] output_observation(result : Observation[T]) -> Int32 {
  let mut wire = ""
  let digits = [
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f",
  ]
  for byte in result.wire {
    let value = byte.to_int()
    wire = wire + digits[(value >> 4) & 15] + digits[value & 15]
  }
  let mut rpc_present = 0
  let mut rpc_status = 0
  let mut required_present = 0
  let mut required = 0UL
  match result.rpc {
    Some(reply) => {
      rpc_present = 1
      rpc_status = reply.code
      if reply.code == 0 {
        required_present = 1
        required = reply.data.length().to_uint64()
      } else {
        match reply.required {
          Some(value) => {
            required_present = 1
            required = value
          }
          None => ()
        }
      }
    }
    None => ()
  }
  let cleanup_present = if result.cleanup_present { 1 } else { 0 }
  let response_present = match result.value {
    Some(_) => 1
    None => 0
  }
  let text =
    "{\"primary\":\{result.primary},\"cleanup\":\{result.cleanup},\"cleanup_presen" +
    "t\":\{cleanup_present},\"response_present\":\{response_present},\"rpc_present\":" +
    "\{rpc_present},\"rpc_status\":\{rpc_status},\"required_present\":\{required_present},\"r" +
    "equired\":\{required},\"encoding\":0,\"wire_hex\":\"\{wire}\"}\n"
  let written = output(text)
  let mut status = result.status()
  if status == 0 && written != 0 {
    status = written
  }
  if status < 0 || status > 125 {
    125
  } else {
    status
  }
}

///|
/// @brief Wait 20 ms through a genuine monotonic WASI clock subscription.
/// @return Zero for one complete successful clock event; 5 on refusal/malformed output.
/// @details Uses fixed Preview 1 wasm32 layouts in reserved scratch. Called only
/// between idle polls. No native timer thread or application request is created.
pub fn pause_for_sample() -> Int32 {
  for i = 0; i < 96; i = i + 1 {
    store_byte(4096 + i, 0)
  }
  store_word(4112, 1)
  store_u64(4120, 20000000UL)
  store_u64(4128, 1000000UL)
  if poll_oneoff(4096, 4144, 1, 4176) != 0 ||
    load_word(4176) != 1 ||
    load_byte(4152) != 0 ||
    load_byte(4153) != 0 ||
    load_byte(4154) != 0 {
    5
  } else {
    0
  }
}
