// @file api.odin
// @brief Typed complete boston_dynamics observers and service clients.
package api
import core "native:odin/observation"
import records "boston_dynamics:odin/ros2"
// @brief Call complete uwvm_spot_bridge/srv/State exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Uwvm_spot_bridgeSrvState :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros2Uwvm_spot_bridgeSrvState_Request,
) -> core.Observation(records.Ros2Uwvm_spot_bridgeSrvState_Response) {
    result: core.Observation(records.Ros2Uwvm_spot_bridgeSrvState_Response)
    if requestValue.field_token == 0 || requestValue.field_nonce == 0 || requestValue.field_budget_ns == 0 ||
        requestValue.field_budget_ns > 5000000000 { result.primary = 22; return result }
    bytes: [24]u8
    size, code := records.encode_Ros2Uwvm_spot_bridgeSrvState_Request(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros2Uwvm_spot_bridgeSrvState_Response, aliasBytes, 21433,
        records.decode_Ros2Uwvm_spot_bridgeSrvState_Response, records.encode_Ros2Uwvm_spot_bridgeSrvState_Response,
        1, bytes[:size],
    )
    if result.response_present && (result.value.field_token != requestValue.field_token ||
        result.value.field_nonce != requestValue.field_nonce) {
        result.primary = 22; result.response_present = false; result.size = 0
    }
    return result
}

// @brief Call complete uwvm_spot_bridge/srv/Lease exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Uwvm_spot_bridgeSrvLease :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros2Uwvm_spot_bridgeSrvLease_Request,
) -> core.Observation(records.Ros2Uwvm_spot_bridgeSrvLease_Response) {
    result: core.Observation(records.Ros2Uwvm_spot_bridgeSrvLease_Response)
    if requestValue.field_token == 0 || requestValue.field_nonce == 0 || requestValue.field_budget_ns == 0 ||
        requestValue.field_budget_ns > 5000000000 { result.primary = 22; return result }
    bytes: [24]u8
    size, code := records.encode_Ros2Uwvm_spot_bridgeSrvLease_Request(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros2Uwvm_spot_bridgeSrvLease_Response, aliasBytes, 22,
        records.decode_Ros2Uwvm_spot_bridgeSrvLease_Response, records.encode_Ros2Uwvm_spot_bridgeSrvLease_Response,
        1, bytes[:size],
    )
    if result.response_present && (result.value.field_token != requestValue.field_token ||
        result.value.field_nonce != requestValue.field_nonce) {
        result.primary = 22; result.response_present = false; result.size = 0
    }
    return result
}

// @brief Call complete uwvm_spot_bridge/srv/Command exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Uwvm_spot_bridgeSrvCommand :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros2Uwvm_spot_bridgeSrvCommand_Request,
) -> core.Observation(records.Ros2Uwvm_spot_bridgeSrvCommand_Response) {
    result: core.Observation(records.Ros2Uwvm_spot_bridgeSrvCommand_Response)
    if requestValue.field_token == 0 || requestValue.field_nonce == 0 || requestValue.field_budget_ns == 0 ||
        requestValue.field_budget_ns > 5000000000 { result.primary = 22; return result }
    bytes: [24]u8
    size, code := records.encode_Ros2Uwvm_spot_bridgeSrvCommand_Request(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros2Uwvm_spot_bridgeSrvCommand_Response, aliasBytes, 26,
        records.decode_Ros2Uwvm_spot_bridgeSrvCommand_Response, records.encode_Ros2Uwvm_spot_bridgeSrvCommand_Response,
        1, bytes[:size],
    )
    if result.response_present && (result.value.field_token != requestValue.field_token ||
        result.value.field_nonce != requestValue.field_nonce) {
        result.primary = 22; result.response_present = false; result.size = 0
    }
    return result
}

// @brief Call complete uwvm_spot_bridge/srv/Velocity exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Uwvm_spot_bridgeSrvVelocity :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros2Uwvm_spot_bridgeSrvVelocity_Request,
) -> core.Observation(records.Ros2Uwvm_spot_bridgeSrvVelocity_Response) {
    result: core.Observation(records.Ros2Uwvm_spot_bridgeSrvVelocity_Response)
    if requestValue.field_token == 0 || requestValue.field_nonce == 0 || requestValue.field_budget_ns == 0 ||
        requestValue.field_budget_ns > 5000000000 { result.primary = 22; return result }
    bytes: [56]u8
    size, code := records.encode_Ros2Uwvm_spot_bridgeSrvVelocity_Request(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros2Uwvm_spot_bridgeSrvVelocity_Response, aliasBytes, 26,
        records.decode_Ros2Uwvm_spot_bridgeSrvVelocity_Response, records.encode_Ros2Uwvm_spot_bridgeSrvVelocity_Response,
        1, bytes[:size],
    )
    if result.response_present && (result.value.field_token != requestValue.field_token ||
        result.value.field_nonce != requestValue.field_nonce) {
        result.primary = 22; result.response_present = false; result.size = 0
    }
    return result
}

// @brief Call complete uwvm_spot_bridge/srv/Feedback exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Uwvm_spot_bridgeSrvFeedback :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros2Uwvm_spot_bridgeSrvFeedback_Request,
) -> core.Observation(records.Ros2Uwvm_spot_bridgeSrvFeedback_Response) {
    result: core.Observation(records.Ros2Uwvm_spot_bridgeSrvFeedback_Response)
    if requestValue.field_token == 0 || requestValue.field_nonce == 0 || requestValue.field_budget_ns == 0 ||
        requestValue.field_budget_ns > 5000000000 { result.primary = 22; return result }
    bytes: [32]u8
    size, code := records.encode_Ros2Uwvm_spot_bridgeSrvFeedback_Request(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros2Uwvm_spot_bridgeSrvFeedback_Response, aliasBytes, 16429,
        records.decode_Ros2Uwvm_spot_bridgeSrvFeedback_Response, records.encode_Ros2Uwvm_spot_bridgeSrvFeedback_Response,
        1, bytes[:size],
    )
    if result.response_present && (result.value.field_token != requestValue.field_token ||
        result.value.field_nonce != requestValue.field_nonce) {
        result.primary = 22; result.response_present = false; result.size = 0
    }
    return result
}
