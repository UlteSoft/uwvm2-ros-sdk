/// @file Observation.swift
/// @brief Typed complete boston_dynamics observers and service clients.
public enum Boston_dynamicsRos2API {
  /// @brief Call complete uwvm_spot_bridge/srv/State exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos2Uwvm_spot_bridgeSrvState(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros2Uwvm_spot_bridgeSrvState_Request
  )
    -> NativeObservation<Ros2Uwvm_spot_bridgeSrvState_Response>
  {
    if requestValue.field_token == 0 || requestValue.field_nonce == 0
      || requestValue.field_budget_ns == 0 || requestValue.field_budget_ns > 5_000_000_000
    {
      var refused = NativeObservation<Ros2Uwvm_spot_bridgeSrvState_Response>()
      refused.primary = 22
      return refused
    }
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros2Uwvm_spot_bridgeSrvState_Response>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 21433, 1, encoded.bytes, Ros2Uwvm_spot_bridgeSrvState_Response.decode,
      { $0.encode() })
    if result.responsePresent, let value = result.value {
      if value.field_token != requestValue.field_token
        || value.field_nonce != requestValue.field_nonce
      {
        result.primary = 22
        result.responsePresent = false
        result.wire = []
        result.value = nil
      }
    }
    return result
  }

  /// @brief Call complete uwvm_spot_bridge/srv/Lease exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos2Uwvm_spot_bridgeSrvLease(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros2Uwvm_spot_bridgeSrvLease_Request
  )
    -> NativeObservation<Ros2Uwvm_spot_bridgeSrvLease_Response>
  {
    if requestValue.field_token == 0 || requestValue.field_nonce == 0
      || requestValue.field_budget_ns == 0 || requestValue.field_budget_ns > 5_000_000_000
    {
      var refused = NativeObservation<Ros2Uwvm_spot_bridgeSrvLease_Response>()
      refused.primary = 22
      return refused
    }
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros2Uwvm_spot_bridgeSrvLease_Response>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 22, 1, encoded.bytes, Ros2Uwvm_spot_bridgeSrvLease_Response.decode,
      { $0.encode() })
    if result.responsePresent, let value = result.value {
      if value.field_token != requestValue.field_token
        || value.field_nonce != requestValue.field_nonce
      {
        result.primary = 22
        result.responsePresent = false
        result.wire = []
        result.value = nil
      }
    }
    return result
  }

  /// @brief Call complete uwvm_spot_bridge/srv/Command exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos2Uwvm_spot_bridgeSrvCommand(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros2Uwvm_spot_bridgeSrvCommand_Request
  )
    -> NativeObservation<Ros2Uwvm_spot_bridgeSrvCommand_Response>
  {
    if requestValue.field_token == 0 || requestValue.field_nonce == 0
      || requestValue.field_budget_ns == 0 || requestValue.field_budget_ns > 5_000_000_000
    {
      var refused = NativeObservation<Ros2Uwvm_spot_bridgeSrvCommand_Response>()
      refused.primary = 22
      return refused
    }
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros2Uwvm_spot_bridgeSrvCommand_Response>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 26, 1, encoded.bytes, Ros2Uwvm_spot_bridgeSrvCommand_Response.decode,
      { $0.encode() })
    if result.responsePresent, let value = result.value {
      if value.field_token != requestValue.field_token
        || value.field_nonce != requestValue.field_nonce
      {
        result.primary = 22
        result.responsePresent = false
        result.wire = []
        result.value = nil
      }
    }
    return result
  }

  /// @brief Call complete uwvm_spot_bridge/srv/Velocity exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos2Uwvm_spot_bridgeSrvVelocity(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros2Uwvm_spot_bridgeSrvVelocity_Request
  )
    -> NativeObservation<Ros2Uwvm_spot_bridgeSrvVelocity_Response>
  {
    if requestValue.field_token == 0 || requestValue.field_nonce == 0
      || requestValue.field_budget_ns == 0 || requestValue.field_budget_ns > 5_000_000_000
    {
      var refused = NativeObservation<Ros2Uwvm_spot_bridgeSrvVelocity_Response>()
      refused.primary = 22
      return refused
    }
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros2Uwvm_spot_bridgeSrvVelocity_Response>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 26, 1, encoded.bytes, Ros2Uwvm_spot_bridgeSrvVelocity_Response.decode,
      { $0.encode() })
    if result.responsePresent, let value = result.value {
      if value.field_token != requestValue.field_token
        || value.field_nonce != requestValue.field_nonce
      {
        result.primary = 22
        result.responsePresent = false
        result.wire = []
        result.value = nil
      }
    }
    return result
  }

  /// @brief Call complete uwvm_spot_bridge/srv/Feedback exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos2Uwvm_spot_bridgeSrvFeedback(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros2Uwvm_spot_bridgeSrvFeedback_Request
  )
    -> NativeObservation<Ros2Uwvm_spot_bridgeSrvFeedback_Response>
  {
    if requestValue.field_token == 0 || requestValue.field_nonce == 0
      || requestValue.field_budget_ns == 0 || requestValue.field_budget_ns > 5_000_000_000
    {
      var refused = NativeObservation<Ros2Uwvm_spot_bridgeSrvFeedback_Response>()
      refused.primary = 22
      return refused
    }
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros2Uwvm_spot_bridgeSrvFeedback_Response>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 16429, 1, encoded.bytes, Ros2Uwvm_spot_bridgeSrvFeedback_Response.decode,
      { $0.encode() })
    if result.responsePresent, let value = result.value {
      if value.field_token != requestValue.field_token
        || value.field_nonce != requestValue.field_nonce
      {
        result.primary = 22
        result.responsePresent = false
        result.wire = []
        result.value = nil
      }
    }
    return result
  }

}
