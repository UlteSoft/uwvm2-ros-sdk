// @file main.odin
// @brief Read the complete ABB system_state reply through genuine Odin records.
// @details The exact alias and optional IO name are original WASI arguments.
package main
import abb "abb:odin"
// @brief Execute one bounded observation. @return Full original numeric status.
@(export)
nl_entry :: proc "c"() -> u32 {
    outcome := abb.observe(3, abb.argument(1), abb.argument(2), 1000)
    return abb.report(&outcome)
}
