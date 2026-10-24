/// @file main.swift
/// @brief Observe one complete original ROS 2 alarm_info native message.
/// @details One explicit alias is required; the real Swift observer closes before stdout.

/// @brief Enter the genuine compiled Swift command with its original numeric status.
/// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
/// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
/// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
/// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
@_cdecl("nl_entry")
public func yaskawaEntry() -> UInt32 {
  if rosArgumentCount() != 2 {
    return 22
  }
  let value = YaskawaRos2.waitAlarmInfo(rosArgument(1), 250)
  return rosReport(value)
}
