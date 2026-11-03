;; SPDX-License-Identifier: Apache-2.0
;; Explicit shared memory; no allocator, stack, table, host imports or callbacks.
(module
  (import "memory-channel" "memory" (memory $channel 1 4))
  (func (export "increment") (param $offset i32) (param $length i32) (result i32)
    (local $i i32)
    local.get $length i32.const 4096 i32.gt_u
    if i32.const -1 return end
    ;; Widen BEFORE adding; offset + length can never wrap the bounds check.
    local.get $offset i64.extend_i32_u
    local.get $length i64.extend_i32_u i64.add
    memory.size $channel i64.extend_i32_u i64.const 16 i64.shl i64.gt_u
    if i32.const -1 return end
    block $done
      loop $bytes
        local.get $i local.get $length i32.ge_u br_if $done
        local.get $offset local.get $i i32.add
        local.get $offset local.get $i i32.add i32.load8_u $channel
        i32.const 1 i32.add i32.store8 $channel
        local.get $i i32.const 1 i32.add local.set $i
        br $bytes
      end
    end
    i32.const 0))
