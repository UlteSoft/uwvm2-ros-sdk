;; @file main32.wat
;; @brief Consume an actual lazily extracted WAT archive member.
;; @details The command imports one arithmetic symbol from a real static archive.
;; It traps unless lazy symbol extraction and the linked helper produce 42.
;; The declared imported memory must match the selected memory32 or memory64 target.
(module
    (import "env" "memory" (memory 1))
    (import "env" "wat_increment" (func $wat_increment (param i32) (result i32)))
    (func $_start
        (export "_start")
        i32.const 39
        call $wat_increment
        i32.const 42
        i32.ne
        if
            unreachable
        end
    )
)
