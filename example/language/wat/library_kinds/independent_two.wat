;; SPDX-License-Identifier: Apache-2.0
;; Business assertions run only inside the real Wasm instance graph.
(module
  (import "wasi_snapshot_preview1" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_read" (func $fd_read (param i32 i32 i32 i32) (result i32)))
  (import "private-copy" "snapshot" (func $snapshot (param i32 i32) (result i32)))
  (import "private-copy" "write_result" (func $result (param i32 i32) (result i32)))
  (memory $channel (export "memory") 1 4)
  (data (i32.const 8192) "SDK_LIBRARY_READY:independent-two\0a")
  (data (i32.const 8288) "SDK_LIBRARY_PASS:independent-two\0a")
  (func $emit (param $offset i32) (param $length i32)
    i32.const 8448 local.get $offset i32.store
    i32.const 8452 local.get $length i32.store
    i32.const 1 i32.const 8448 i32.const 1 i32.const 8464 call $fd_write
    if unreachable end
    i32.const 8464 i32.load local.get $length i32.ne if unreachable end)
  (func $ready
    i32.const 8192 i32.const 34 call $emit
    i32.const 8448 i32.const 8480 i32.store
    i32.const 8452 i32.const 1 i32.store
    i32.const 0 i32.const 8448 i32.const 1 i32.const 8464 call $fd_read
    if unreachable end
    i32.const 8464 i32.load i32.const 1 i32.ne if unreachable end
    i32.const 8480 i32.load8_u i32.const 82 i32.ne if unreachable end)
  (func $passed
    i32.const 8288 i32.const 33 call $emit)
  (func $equal (param i32 i32)
    local.get 0 local.get 1 i32.ne if unreachable end)
  (func (export "_start")
    call $ready
    i32.const 0 i32.const 0x04030201 i32.store
    i32.const 0 i32.const 4 call $snapshot i32.const 4 call $equal
    i32.const 0 i32.const -1 i32.store
    i32.const 128 i32.const -1 i32.store
    i32.const 32 i32.const 8 call $result i32.const 8 call $equal
    i32.const 32 i32.load i32.const 10 call $equal
    i32.const 36 i32.load i32.const 4 call $equal
    i32.const -2 i32.const 4 call $snapshot i32.const -1 call $equal
    i32.const 32 i32.const 7 call $result i32.const -1 call $equal
    i32.const 32 i32.load i32.const 10 call $equal
    i32.const 1 memory.grow i32.const 1 call $equal
    i32.const 65536 i32.const 8 call $result i32.const 8 call $equal
    i32.const 65536 i32.load i32.const 10 call $equal
    i32.const 131072 i32.const 0 call $snapshot i32.const 0 call $equal
    i32.const 32 i32.const 8 call $result i32.const 8 call $equal
    i32.const 32 i32.load i32.const 0 call $equal
    call $passed))
