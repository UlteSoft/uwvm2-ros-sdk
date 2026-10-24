/// @file main.swift
/// @brief Read the complete ABB system_state reply in genuine Embedded Swift.
/// @details Original WASI arguments supply the exact granted alias and IO name.
/// @brief Execute one bounded observation. @return Full original numeric status.
@_cdecl("nl_entry") public func nativeEntry() -> UInt32 {
  abbReport(abbObserve(3, abbArgument(1), abbArgument(2), 1000))
}
