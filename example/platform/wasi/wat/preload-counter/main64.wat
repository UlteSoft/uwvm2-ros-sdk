;; @file main64.wat
;; @brief Check the preloaded WAT initializer count and resulting arithmetic.
;; @details The command calls the explicitly named counter preload through scalar imports.
;; It checks one initialization and verifies that input 39 produces 42.
;; A duplicate initialization or incorrect import binding causes a trap.
(module
    (import "counter" "wat_increment" (func $increment (param i32) (result i32)))
    (import "counter" "get_init_count" (func $count (result i32)))
    (memory i64 1)
    (func
        (export "_start")
        call $count
        i32.const 1
        i32.ne
        if
            unreachable
        end
        i32.const 39
        call $increment
        i32.const 42
        i32.ne
        if
            unreachable
        end
    )
)
