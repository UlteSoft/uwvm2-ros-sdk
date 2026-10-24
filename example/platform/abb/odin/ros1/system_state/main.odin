// @file main.odin
// @brief Observe one complete original ROS 1 system_state native message.
// @details One explicit alias is required; the real Odin observer closes before stdout.
package main
import core "ros:odin/observation"
import abb "abb:odin/ros1/observation"
// @brief Enter the genuine compiled Odin command with its original numeric status.
// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
@(export, link_name="nl_entry")
entry :: proc "c"() -> u32 {
    if core.argument_count() != 2 {
        return 22
    }
    value := abb.wait_system_state(core.argument(1), 250)
    return core.report(&value)
}
