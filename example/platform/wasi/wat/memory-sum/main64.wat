;; @file main64.wat
;; @brief Sum four real linear-memory values with target-width addresses.
;; @details Four initialized i32 values occupy bytes 0 through 15 of owned memory.
;; The loop uses target-width addresses and sums their values to 42.
;; No ROS capability or host I/O is needed; a mismatched result traps.
(module
    (memory i64 1)
    (func
        (export "_start")
        (local $index i64)
        (local $sum i32)
        i64.const 0
        i32.const 6
        i32.store
        i64.const 4
        i32.const 9
        i32.store
        i64.const 8
        i32.const 12
        i32.store
        i64.const 12
        i32.const 15
        i32.store
        (loop $next
            local.get $sum
            local.get $index
            i32.load
            i32.add
            local.set $sum
            local.get $index
            i64.const 4
            i64.add
            local.tee $index
            i64.const 16
            i64.lt_u
            br_if $next
        )
        local.get $sum
        i32.const 42
        i32.ne
        if
            unreachable
        end
    )
)
