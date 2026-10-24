/// @file main.swift
/// @brief Use the complete original clearpath_platform_msgs/StopStatus through an explicit native alias.
/// @details Preserve every original field and independent request/close status. No permission is granted.
/// @brief Enter the actual compiled language with one exact alias argument.
/// @return Original primary, independent close, then stdout status; no replay.
@_cdecl("nl_entry")
public func platformEntry() -> UInt32 {
  if nativeArgumentCount() != 2 { return 22 }
  let result = ClearpathRos1API.waitRos1Clearpath_platform_msgsStopStatus(nativeArgument(1), 250)
  return nativeReport(result)
}
