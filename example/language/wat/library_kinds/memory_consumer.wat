;; SPDX-License-Identifier: Apache-2.0
;; Assertions execute in Wasm. A host codec, text scan or native result cannot
;; stand in for these calls through the actual loaded memory/module graph.
(module
  (import "wasi_snapshot_preview1" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_read" (func $fd_read (param i32 i32 i32 i32) (result i32)))
  (import "memory-channel" "memory" (memory $channel 1 4))
  (import "offset-dynamic" "increment" (func $increment (param i32 i32) (result i32)))
  (import "private-copy" "snapshot" (func $snapshot (param i32 i32) (result i32)))
  (import "private-copy" "write_result" (func $write_result (param i32 i32) (result i32)))
  (data (i32.const 8192) "SDK_LIBRARY_READY:shared-channel\0a")
  (data (i32.const 8288) "SDK_LIBRARY_PASS:shared-channel\0a")
  (func $emit (param $offset i32) (param $length i32)
    i32.const 8448 local.get $offset i32.store
    i32.const 8452 local.get $length i32.store
    i32.const 1 i32.const 8448 i32.const 1 i32.const 8464 call $fd_write
    if unreachable end
    i32.const 8464 i32.load local.get $length i32.ne if unreachable end)
  (func $ready
    i32.const 8192 i32.const 33 call $emit
    i32.const 8448 i32.const 8480 i32.store
    i32.const 8452 i32.const 1 i32.store
    i32.const 0 i32.const 8448 i32.const 1 i32.const 8464 call $fd_read
    if unreachable end
    i32.const 8464 i32.load i32.const 1 i32.ne if unreachable end
    i32.const 8480 i32.load8_u i32.const 82 i32.ne if unreachable end)
  (func $passed
    i32.const 8288 i32.const 32 call $emit)
  (func $equal (param i32 i32)
    local.get 0 local.get 1 i32.ne if unreachable end)
  ;; Only transport status crosses the function boundary. The computed value
  ;; and length return through a bounded memory.copy into communication memory.
  (func $result_checksum (result i32)
    i32.const 32 i32.const 8 call $write_result i32.const 8 call $equal
    i32.const 32 i32.load $channel)
  (func (export "_start")
    call $ready
    i32.const 0 i32.const 0x04030201 i32.store $channel
    i32.const 0 i32.const 4 call $increment i32.const 0 call $equal
    i32.const 0 i32.load $channel i32.const 0x05040302 call $equal
    i32.const 0 i32.const 4 call $snapshot i32.const 4 call $equal
    call $result_checksum i32.const 14 call $equal
    ;; The same numerical offset in communication memory is a different heap.
    i32.const 128 i32.const 0xffffffff i32.store $channel
    i32.const 0 i32.const 0x11111111 i32.store $channel
    call $result_checksum i32.const 14 call $equal
    i32.const 32 i32.const 8 call $write_result i32.const 8 call $equal
    i32.const 32 i32.load $channel i32.const 14 call $equal
    i32.const 36 i32.load $channel i32.const 4 call $equal
    ;; Invalid inputs must leave both the shared marker and prior snapshot intact.
    i32.const 65535 i32.const 2 call $snapshot i32.const -1 call $equal
    i32.const -2 i32.const 4 call $snapshot i32.const -1 call $equal
    i32.const 0 i32.const 4097 call $snapshot i32.const -1 call $equal
    i32.const -1 i32.const 8 call $write_result i32.const -1 call $equal
    i32.const 32 i32.const 7 call $write_result i32.const -1 call $equal
    i32.const 65536 i32.const 1 call $increment i32.const -1 call $equal
    i32.const -2 i32.const 4 call $increment i32.const -1 call $equal
    i32.const 0 i32.load $channel i32.const 0x11111111 call $equal
    call $result_checksum i32.const 14 call $equal
    ;; Zero length at the exact end is valid; beyond the end is not.
    i32.const 65536 i32.const 0 call $increment i32.const 0 call $equal
    i32.const 65537 i32.const 0 call $increment i32.const -1 call $equal
    ;; Imported aliases observe actual growth, without changing private data.
    i32.const 1 memory.grow $channel i32.const 1 call $equal
    i32.const 65536 i32.const 4 call $increment i32.const 0 call $equal
    i32.const 65536 i32.load $channel i32.const 0x01010101 call $equal
    i32.const 65536 i32.const 8 call $write_result i32.const 8 call $equal
    i32.const 65536 i32.load $channel i32.const 14 call $equal
    call $result_checksum i32.const 14 call $equal
    i32.const 131072 i32.const 0 call $snapshot i32.const 0 call $equal
    call $result_checksum i32.const 0 call $equal
    i32.const 131073 i32.const 0 call $snapshot i32.const -1 call $equal
    call $passed))
