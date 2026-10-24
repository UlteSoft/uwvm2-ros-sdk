// @file main.odin
// @brief Use the complete original clearpath_platform_msgs/StopStatus through an explicit native alias.
// @details Preserve every original field and independent request/close status. No permission is granted.
package main
import api "clearpath:odin/ros1/api"
import core "native:odin/observation"
// @brief Enter the actual compiled language with one exact alias argument.
// @return Original primary, independent close, then stdout status; no replay.
@(export)
nl_entry :: proc "c"() -> u32 {
    if core.argument_count() != 2 { return 22 }
    result := api.wait_Ros1Clearpath_platform_msgsStopStatus(core.argument(1), 250)
    return core.report(&result)
}
