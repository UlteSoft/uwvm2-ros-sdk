;; SPDX-License-Identifier: Apache-2.0
;; Serial/unshared-memory profile only. No host import or callback can reenter
;; between the checked copy and computation. Concurrent peer scheduling still
;; needs a separately qualified runtime protocol; copy alone is not a lock.
(module
  (import "memory-channel" "memory" (memory $channel 1 4))
  (memory $private 1 1)
  (global $length (mut i32) (i32.const 0))
  (func $within (param $offset i32) (param $length i32) (result i32)
    local.get $offset i64.extend_i32_u
    local.get $length i64.extend_i32_u i64.add
    memory.size $channel i64.extend_i32_u i64.const 16 i64.shl i64.le_u)
  (func (export "snapshot") (param $offset i32) (param $size i32) (result i32)
    local.get $size i32.const 4096 i32.gt_u
    if i32.const -1 return end
    local.get $offset local.get $size call $within i32.eqz
    if i32.const -1 return end
    i32.const 128 local.get $offset local.get $size
    memory.copy $private $channel
    local.get $size global.set $length
    local.get $size)
  (func $checksum (result i32)
    (local $i i32) (local $sum i32)
    block $done
      loop $bytes
        local.get $i global.get $length i32.ge_u br_if $done
        local.get $sum i32.const 128 local.get $i i32.add
        i32.load8_u $private i32.add local.set $sum
        local.get $i i32.const 1 i32.add local.set $i
        br $bytes
      end
    end
    local.get $sum)
  (func (export "write_result") (param $offset i32) (param $capacity i32) (result i32)
    local.get $capacity i32.const 8 i32.lt_u
    if i32.const -1 return end
    local.get $offset i32.const 8 call $within i32.eqz
    if i32.const -1 return end
    i32.const 0 call $checksum i32.store $private
    i32.const 4 global.get $length i32.store $private
    local.get $offset i32.const 0 i32.const 8 memory.copy $channel $private
    i32.const 8))
