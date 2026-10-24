// Basic WASIp1 I/O only. Low scratch0..4128 is explicitly disjoint from the
// shared ROS linear buffers65536+ and the selected heap8519680+. No managed
// pointer is cast to a numeric offset, and no ROS bridge is duplicated here.
fn fd_read(fd : Int, iovs : Int, count : Int, size : Int) -> Int =
  "wasi_snapshot_preview1" "fd_read"

fn fd_write(fd : Int, iovs : Int, count : Int, size : Int) -> Int =
  "wasi_snapshot_preview1" "fd_write"

fn proc_exit(code : Int) -> Unit = "wasi_snapshot_preview1" "proc_exit"

extern "wasm" fn prepare(count : Int) -> Unit =
  #|(func (param i32)
  #|  (i32.store (i32.const 0) (i32.const 32))
  #|  (i32.store (i32.const 4) (local.get 0))
  #|  (i32.store (i32.const 8) (i32.const -1)))

extern "wasm" fn complete(count : Int) -> Bool =
  #|(func (param i32) (result i32)
  #|  (i32.eq (i32.load (i32.const 8)) (local.get 0)))

extern "wasm" fn store_byte(index : Int, value : Int) -> Unit =
  #|(func (param i32 i32)
  #|  (i32.store8 (i32.add (i32.const 32) (local.get 0)) (local.get 1)))

extern "wasm" fn first_byte() -> Int =
  #|(func (result i32) (i32.load8_u (i32.const 32)))

/// @brief Read one explicit bounded basic-stdin byte using actual WASIp1.
/// @details No file/socket/ROS authority is added. Uses reserved low scratch;
/// selected app link layout must match. EOF/short/failed read aborts before
/// returning a partial byte. Command input is read before capability acquisition.
/// @return Integer0..255; runtime trap/abort is not a successful application run.
/// @see read_bytes write_bytes exit
pub fn read_byte() -> Int {
  prepare(1)
  if fd_read(0, 0, 1, 8) != 0 || !complete(1) { abort("exact basic stdin byte required") }
  first_byte()
}

/// @brief Read one finite explicit input field before any ROS owner opens.
/// @details Copies at most4096 bytes without exposing managed memory addresses.
/// Short input aborts; it never manufactures a partial Goal or permission.
/// @param count Integer0..4096 input bytes, selected by the bounded command grammar.
/// @return Owned complete Bytes; invalid extent aborts before native ROS use.
/// @see read_byte write_bytes
pub fn read_bytes(count : Int) -> Bytes {
  if count < 0 || count > 4096 { abort("basic input field bound") }
  Bytes::makei(count, fn(_) { read_byte().to_byte() })
}

/// @brief Write one complete finite basic-stdout record after checked cleanup.
/// @details Uses reserved low scratch and one real WASIp1 call. Nonzero errno,
/// short or unwritten output returns failure; no ROS operation is retried.
/// @param bytes Borrowed immutable Bytes of at most4096 bytes.
/// @return Original WASI status,0 on complete write,22 for size or5 for short write.
/// @see read_bytes exit
pub fn write_bytes(bytes : Bytes) -> Int {
  if bytes.length() > 4096 { return 22 }
  for i = 0; i < bytes.length(); i = i + 1 { store_byte(i, bytes[i].to_int()) }
  prepare(bytes.length())
  let code = fd_write(1, 0, 1, 8)
  if code != 0 { code } else if !complete(bytes.length()) { 5 } else { 0 }
}

/// @brief Terminate only this Guest after all independently checked cleanup.
/// @details This is standard WASIp1 termination, not a ROS management route.
/// It performs no close/cancellation and must not substitute for cleanup.
/// @param code Original primary/cleanup status; process representation caps at125.
/// @see write_bytes
pub fn exit(code : Int) -> Unit {
  proc_exit(if code < 0 { 22 } else if code > 125 { 125 } else { code })
}
