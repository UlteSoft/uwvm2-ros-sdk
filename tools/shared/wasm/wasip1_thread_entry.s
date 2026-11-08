# Guest Wasm entry; no Host shim or C prologue precedes stack selection.
.globaltype __stack_pointer, i32
.functype uwvm_wasip1_thread_main (i32, i32) -> ()
.globl wasi_thread_start
.type wasi_thread_start,@function
wasi_thread_start:
  .functype wasi_thread_start (i32, i32) -> ()
  .local i32, i32
  local.get 1
  i32.load 0
  local.tee 2
  i32.const 15
  i32.and
  if
    unreachable
  end_if
  local.get 1
  i32.load 4
  local.tee 3
  local.get 2
  i32.ge_u
  if
    unreachable
  end_if
  local.get 2
  local.get 3
  i32.sub
  i32.const 16384
  i32.lt_u
  if
    unreachable
  end_if
  local.get 2
  global.set __stack_pointer
  local.get 0
  local.get 1
  call uwvm_wasip1_thread_main
  end_function
