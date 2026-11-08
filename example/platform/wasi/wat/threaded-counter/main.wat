;; Two real child activations must both reach the shared arrival barrier before
;; main releases either. A synchronous serialized thread-entry substitute hangs
;; and fails the external process deadline. These are Guest WASI tids, not OS tids.
(module
  (import "env" "memory" (memory 1 2 shared))
  (import "wasi" "thread-spawn" (func $spawn (param i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $exit (param i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $write (param i32 i32 i32 i32) (result i32)))
  (export "memory" (memory 0))
  (func $assert (param $condition i32)
    local.get $condition i32.eqz
    if i32.const 78 call $exit unreachable end)
  (func (export "_start") (local $first i32) (local $second i32) (local $observed i32)
    i32.const 0 i32.const 0 i32.atomic.store
    i32.const 4 i32.const 0 i32.atomic.store
    i32.const 16 i32.const 0 i32.atomic.store
    i32.const 20 i32.const 0 i32.atomic.store
    i32.const 0 call $spawn local.tee $first i32.const 0 i32.le_s
    if i32.const 77 call $exit unreachable end
    i32.const 1 call $spawn local.tee $second i32.const 0 i32.le_s
    if i32.const 77 call $exit unreachable end
    local.get $first local.get $second i32.ne call $assert
    block $arrived
      loop $arrival
        i32.const 16 i32.atomic.load local.tee $observed i32.const 2 i32.eq br_if $arrived
        i32.const 16 local.get $observed i64.const 1000000 memory.atomic.wait32 drop
        br $arrival
      end
    end
    i32.const 24 i32.atomic.load local.get $first i32.eq call $assert
    i32.const 28 i32.atomic.load local.get $second i32.eq call $assert
    i32.const 20 i32.const 1 i32.atomic.store
    i32.const 20 i32.const 2 memory.atomic.notify drop
    block $finished
      loop $wait
        i32.const 4 i32.atomic.load local.tee $observed i32.const 2 i32.eq br_if $finished
        i32.const 4 local.get $observed i64.const 1000000 memory.atomic.wait32 drop
        br $wait
      end
    end
    i32.const 0 i32.atomic.load i32.const 2000 i32.eq call $assert
    i32.const 8 i32.atomic.load i32.const 1000 i32.eq call $assert
    i32.const 12 i32.atomic.load i32.const 1000 i32.eq call $assert
    ;; Return the actual recorded child tids and shared counter as three LE u32s.
    i32.const 40 i32.const 24 i32.store
    i32.const 44 i32.const 8 i32.store
    i32.const 48 i32.const 0 i32.store
    i32.const 52 i32.const 4 i32.store
    i32.const 1 i32.const 40 i32.const 2 i32.const 56 call $write i32.eqz call $assert
    i32.const 56 i32.load i32.const 12 i32.eq call $assert)
  (func (export "wasi_thread_start") (param $tid i32) (param $arg i32) (local $i i32)
    local.get $tid i32.const 0 i32.gt_s call $assert
    local.get $arg i32.const 2 i32.lt_u call $assert
    i32.const 24 local.get $arg i32.const 4 i32.mul i32.add local.get $tid i32.atomic.store
    i32.const 16 i32.const 1 i32.atomic.rmw.add drop
    i32.const 16 i32.const 2 memory.atomic.notify drop
    block $released
      loop $barrier
        i32.const 20 i32.atomic.load br_if $released
        i32.const 20 i32.const 0 i64.const 1000000 memory.atomic.wait32 drop
        br $barrier
      end
    end
    loop $work
      i32.const 0 i32.const 1 i32.atomic.rmw.add drop
      local.get $i i32.const 1 i32.add local.tee $i
      i32.const 1000 i32.lt_u br_if $work
    end
    i32.const 8 local.get $arg i32.const 4 i32.mul i32.add local.get $i i32.atomic.store
    i32.const 4 i32.const 1 i32.atomic.rmw.add drop
    i32.const 4 i32.const 1 memory.atomic.notify drop))
