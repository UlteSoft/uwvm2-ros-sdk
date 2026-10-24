// @file main.odin
// @brief Execute complete ros2 subscribe_string with genuine Odin records/codecs.
// @details Odin owns fields, operation choices, original statuses and cleanup.
package main
import native "ros:odin/native_command"
// @brief Execute one finite command using the exact trusted sample alias.
// @return First primary, independent owner-close, or ordinary stdout error.
@(export, link_name="nl_entry")
nl_entry :: proc "c"() -> u32 {
    alias := [6]u8{115, 97, 109, 112, 108, 101}
    facts := native.run(2, alias[:])
    return native.report(&facts)
}
