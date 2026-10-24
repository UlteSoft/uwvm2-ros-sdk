## @file main.nim
## @brief Use the complete original clearpath_platform_msgs/msg/DriveFeedback through an explicit native alias.
## @details Preserve every original field and independent request/close status. No permission is granted.
import clearpath/nim/ros2/humble/observation as api
import native/nim/observation as core
proc nlEntry(): uint32 {.exportc: "nl_entry", cdecl.} =
    ## @brief Enter the actual compiled language with one exact alias argument.
    ## @return Original primary, independent close, then stdout status; no replay.
    if core.argumentCount() != 2: return 22
    var result = api.waitRos2Clearpath_platform_msgsMsgDriveFeedback(core.argument(1), 250'u32)
    core.report(result)
