;; @file counter32.wat
;; @brief Initialize real module-owned state exactly once before named calls.
;; @details Each loaded module instance owns its counter and linear memory.
;; The loader invokes the exported initializer once before cross-module calls.
;; Scalar exports reveal initialization count without sharing guest pointers.
(module
    (memory (export "memory") 1)
    (global $count (mut i32) (i32.const 0))
    (func $initialize
        (export "_initialize")
        global.get $count
        i32.const 1
        i32.add
        global.set $count
    )
    (func
        (export "get_init_count")
        (result i32)
        global.get $count
    )
    (func
        (export "wat_increment")
        (param i32)
        (result i32)
        local.get 0
        i32.const 2
        i32.add
        global.get $count
        i32.add
    )
)
