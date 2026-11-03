;; SPDX-License-Identifier: Apache-2.0
;; The real static object must resolve this symbol during the final link.
(module
  (import "wasi_snapshot_preview1" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_read" (func $fd_read (param i32 i32 i32 i32) (result i32)))
  (import "env" "checksum_bias" (func $checksum_bias (param i32) (result i32)))
  (memory 1)
  (data (i32.const 8192) "SDK_LIBRARY_READY:static\0a")
  (data (i32.const 8288) "SDK_LIBRARY_PASS:static\0a")
  (func $emit (param $offset i32) (param $length i32)
    i32.const 8448 local.get $offset i32.store
    i32.const 8452 local.get $length i32.store
    i32.const 1 i32.const 8448 i32.const 1 i32.const 8464 call $fd_write
    if unreachable end
    i32.const 8464 i32.load local.get $length i32.ne if unreachable end)
  (func $ready
    i32.const 8192 i32.const 25 call $emit
    i32.const 8448 i32.const 8480 i32.store
    i32.const 8452 i32.const 1 i32.store
    i32.const 0 i32.const 8448 i32.const 1 i32.const 8464 call $fd_read
    if unreachable end
    i32.const 8464 i32.load i32.const 1 i32.ne if unreachable end
    i32.const 8480 i32.load8_u i32.const 82 i32.ne if unreachable end)
  (func $passed
    i32.const 8288 i32.const 24 call $emit)
  (func $_start (export "_start")
    call $ready
    i32.const 35 call $checksum_bias i32.const 42 i32.ne
    if unreachable end
    call $passed))
