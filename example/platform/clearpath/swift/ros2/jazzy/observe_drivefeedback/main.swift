/// @file main.swift
/// @brief Use the complete original clearpath_platform_msgs/msg/DriveFeedback through an explicit native alias.
/// @details Preserve every original field and independent request/close status. No permission is granted.
/// @brief Enter the actual compiled language with one exact alias argument.
/// @return Original primary, independent close, then stdout status; no replay.
@_cdecl("nl_entry")
public func platformEntry() -> UInt32 {
  if nativeArgumentCount() != 2 { return 22 }
  let result = ClearpathRos2_jazzyAPI.waitRos2Clearpath_platform_msgsMsgDriveFeedback(
    nativeArgument(1), 250)
  return nativeReport(result)
}
