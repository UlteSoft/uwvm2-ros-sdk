## @file main.nim
## @brief Use the complete original uwvm_spot_bridge/srv/Feedback_Response through an explicit native alias.
## @details Preserve every original field and independent request/close status. No permission is granted.
import boston_dynamics/nim/ros2/observation as api
import boston_dynamics/nim/ros2/records as records
import native/nim/observation as core
proc nlEntry(): uint32 {.exportc: "nl_entry", cdecl.} =
    ## @brief Enter the actual compiled language with one exact alias argument.
    ## @return Original primary, independent close, then stdout status; no replay.
    if core.argumentCount() != 2: return 22
    var requestValue: records.Ros2Uwvm_spot_bridgeSrvFeedback_Request
    requestValue.field_token = 1
    requestValue.field_nonce = 1
    requestValue.field_budget_ns = 1000000000
    var result = api.callRos2Uwvm_spot_bridgeSrvFeedback(core.argument(1), requestValue)
    core.report(result)
