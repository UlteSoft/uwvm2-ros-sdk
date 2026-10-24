;; @file math32.wat
;; @brief Supply globally named genuine relocatable arithmetic functions.
;; @details The exported function adds three through a separate helper symbol.
;; The assembler emits linking metadata and relocations for archive extraction;
;; this source is an object input and is not a standalone deployed application.
(module
    (import "env" "memory" (memory 1))
    (func $helper
        (param i32)
        (result i32)
        local.get 0
        i32.const 3
        i32.add
    )
    (func $wat_increment
        (export "wat_increment")
        (param i32)
        (result i32)
        local.get 0
        call $helper
    )
)
