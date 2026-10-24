/// @file main.swift
/// @brief Use the complete original uwvm_spot_bridge/srv/State_Response through an explicit native alias.
/// @details Preserve every original field and independent request/close status. No permission is granted.
/// @brief Enter the actual compiled language with one exact alias argument.
/// @return Original primary, independent close, then stdout status; no replay.
@_cdecl("nl_entry")
public func platformEntry() -> UInt32 {
  if nativeArgumentCount() != 2 { return 22 }
  var requestValue = Ros2Uwvm_spot_bridgeSrvState_Request()
  requestValue.field_token = 1
  requestValue.field_nonce = 1
  requestValue.field_budget_ns = 1_000_000_000
  let result = Boston_dynamicsRos2API.callRos2Uwvm_spot_bridgeSrvState(
    nativeArgument(1), &requestValue)
  return nativeReport(result)
}
