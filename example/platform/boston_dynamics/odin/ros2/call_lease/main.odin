// @file main.odin
// @brief Use the complete original uwvm_spot_bridge/srv/Lease_Response through an explicit native alias.
// @details Preserve every original field and independent request/close status. No permission is granted.
package main
import api "boston_dynamics:odin/ros2/api"
import core "native:odin/observation"
import records "boston_dynamics:odin/ros2"
// @brief Enter the actual compiled language with one exact alias argument.
// @return Original primary, independent close, then stdout status; no replay.
@(export)
nl_entry :: proc "c"() -> u32 {
    if core.argument_count() != 2 { return 22 }
    requestValue: records.Ros2Uwvm_spot_bridgeSrvLease_Request
    requestValue.field_token = 1
    requestValue.field_nonce = 1
    requestValue.field_budget_ns = 1000000000
    result := api.callRos2Uwvm_spot_bridgeSrvLease(core.argument(1), &requestValue)
    return core.report(&result)
}
