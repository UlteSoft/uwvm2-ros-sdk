/// @file main.swift
/// @brief Execute complete ros2 subscribe_string using genuine Embedded Swift.
/// @details Swift owns original records, canonical codecs, statuses and cleanup.
/// C exposes scalar transport calls and lossless result output only.
/// @return First operation, independent owner-close, or ordinary stdout error.
@_cdecl("nl_entry")
public func nativeROSEntry() -> UInt32 {
  let facts = rosRun(2, [115, 97, 109, 112, 108, 101])
  return rosReport(facts)
}
