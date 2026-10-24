// @file main.odin
// @brief Read the complete ABB read_io reply through genuine Odin records.
// @details The exact alias and optional IO name are original WASI arguments.
package main
import abb "abb:odin"
// @brief Execute one bounded observation. @return Full original numeric status.
@(export)
nl_entry :: proc "c"() -> u32 {
    outcome := abb.observe(2, abb.argument(1), abb.argument(2), 1000)
    return abb.report(&outcome)
}
