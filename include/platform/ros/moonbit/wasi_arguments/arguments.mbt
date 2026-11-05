/// @file arguments.mbt
/// @brief Own the complete WASI argument vector using dynamically sized arrays.
/// @details FixedArray borrows expose the linear-memory element region, as in
/// MoonBit's WASI random_get adapter. No host-specific MoonBit env ABI is used.
/// The returned pointers are checked against the exact allocated byte extent.
///|
#unsafe_skip_stub_check
#borrow(count, bytes)
fn sizes(count : FixedArray[Int32], bytes : FixedArray[Int32]) -> Int32 = "wasi_snapshot_preview1" "args_sizes_get"
///|
#unsafe_skip_stub_check
#borrow(pointers, bytes)
fn fetch(pointers : FixedArray[UInt], bytes : FixedArray[Byte]) -> Int32 = "wasi_snapshot_preview1" "args_get"
///|
#borrow(bytes)
extern "wasm" fn address(bytes : FixedArray[Byte]) -> UInt =
  #|(func (param i32) (result i32) (local.get 0))
///|
pub fn exit(code : Int32) -> Unit = "wasi_snapshot_preview1" "proc_exit"
///|
/// @brief Return owned strict UTF-8 arguments or the original WASI error.
/// @details Integer checks protect array extents; there is no fixed path or
/// argument-byte quota. Allocation is governed by the command's memory limit.
pub fn args() -> Result[Array[String], Int32] {
  let counts : FixedArray[Int32] = [0]
  let sizes_ : FixedArray[Int32] = [0]
  let error = sizes(counts, sizes_)
  if error != 0 { return Err(error) }
  let count = counts[0]
  let size = sizes_[0]
  if count < 0 || count > 0x3fffffff || size < 0 || count > size { return Err(22) }
  if count == 0 { return Ok([]) }
  let pointers : FixedArray[UInt] = FixedArray::make(count, 0U)
  let bytes : FixedArray[Byte] = FixedArray::make(size, 0)
  let error = fetch(pointers, bytes)
  if error != 0 { return Err(error) }
  let begin = address(bytes)
  let values : Array[String] = []
  for pointer in pointers {
    if pointer < begin || pointer - begin >= size.to_uint() { return Err(22) }
    let start = (pointer - begin).to_int()
    let mut end = start
    while end < size && bytes[end] != 0 { end = end + 1 }
    if end == size { return Err(22) }
    let value = @utf8.decode(Bytes::makei(end - start, fn(i) { bytes[start + i] })[:], ignore_bom=false) catch {
      _ => return Err(22)
    }
    values.push(value)
  }
  Ok(values)
}
