## @file observation.nim
## @brief Typed complete boston_dynamics observers and service clients.
import native/nim/observation as core
import native/nim/wire
import boston_dynamics/nim/ros2/records
proc callRos2Uwvm_spot_bridgeSrvState*(
    aliasBytes: openArray[byte];
    requestValue: Ros2Uwvm_spot_bridgeSrvState_Request
): core.Observation[Ros2Uwvm_spot_bridgeSrvState_Response] =
    ## @brief Call complete uwvm_spot_bridge/srv/State exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    if requestValue.field_token == 0 or requestValue.field_nonce == 0 or requestValue.field_budget_ns == 0 or
        requestValue.field_budget_ns > 5000000000'u64:
        result.primary = 22
        return
    var bytes: array[24, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 24, written)
    if result.primary != 0: return
    result = core.request[Ros2Uwvm_spot_bridgeSrvState_Response](aliasBytes, 57, 21433, 1,
        bytes.toOpenArray(0, written - 1))
    if result.responsePresent and (result.value.field_token != requestValue.field_token or
        result.value.field_nonce != requestValue.field_nonce):
        result.primary = 22
        result.responsePresent = false
        result.size = 0

proc callRos2Uwvm_spot_bridgeSrvLease*(
    aliasBytes: openArray[byte];
    requestValue: Ros2Uwvm_spot_bridgeSrvLease_Request
): core.Observation[Ros2Uwvm_spot_bridgeSrvLease_Response] =
    ## @brief Call complete uwvm_spot_bridge/srv/Lease exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    if requestValue.field_token == 0 or requestValue.field_nonce == 0 or requestValue.field_budget_ns == 0 or
        requestValue.field_budget_ns > 5000000000'u64:
        result.primary = 22
        return
    var bytes: array[24, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 24, written)
    if result.primary != 0: return
    result = core.request[Ros2Uwvm_spot_bridgeSrvLease_Response](aliasBytes, 22, 22, 1,
        bytes.toOpenArray(0, written - 1))
    if result.responsePresent and (result.value.field_token != requestValue.field_token or
        result.value.field_nonce != requestValue.field_nonce):
        result.primary = 22
        result.responsePresent = false
        result.size = 0

proc callRos2Uwvm_spot_bridgeSrvCommand*(
    aliasBytes: openArray[byte];
    requestValue: Ros2Uwvm_spot_bridgeSrvCommand_Request
): core.Observation[Ros2Uwvm_spot_bridgeSrvCommand_Response] =
    ## @brief Call complete uwvm_spot_bridge/srv/Command exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    if requestValue.field_token == 0 or requestValue.field_nonce == 0 or requestValue.field_budget_ns == 0 or
        requestValue.field_budget_ns > 5000000000'u64:
        result.primary = 22
        return
    var bytes: array[24, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 24, written)
    if result.primary != 0: return
    result = core.request[Ros2Uwvm_spot_bridgeSrvCommand_Response](aliasBytes, 26, 26, 1,
        bytes.toOpenArray(0, written - 1))
    if result.responsePresent and (result.value.field_token != requestValue.field_token or
        result.value.field_nonce != requestValue.field_nonce):
        result.primary = 22
        result.responsePresent = false
        result.size = 0

proc callRos2Uwvm_spot_bridgeSrvVelocity*(
    aliasBytes: openArray[byte];
    requestValue: Ros2Uwvm_spot_bridgeSrvVelocity_Request
): core.Observation[Ros2Uwvm_spot_bridgeSrvVelocity_Response] =
    ## @brief Call complete uwvm_spot_bridge/srv/Velocity exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    if requestValue.field_token == 0 or requestValue.field_nonce == 0 or requestValue.field_budget_ns == 0 or
        requestValue.field_budget_ns > 5000000000'u64:
        result.primary = 22
        return
    var bytes: array[56, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 56, written)
    if result.primary != 0: return
    result = core.request[Ros2Uwvm_spot_bridgeSrvVelocity_Response](aliasBytes, 26, 26, 1,
        bytes.toOpenArray(0, written - 1))
    if result.responsePresent and (result.value.field_token != requestValue.field_token or
        result.value.field_nonce != requestValue.field_nonce):
        result.primary = 22
        result.responsePresent = false
        result.size = 0

proc callRos2Uwvm_spot_bridgeSrvFeedback*(
    aliasBytes: openArray[byte];
    requestValue: Ros2Uwvm_spot_bridgeSrvFeedback_Request
): core.Observation[Ros2Uwvm_spot_bridgeSrvFeedback_Response] =
    ## @brief Call complete uwvm_spot_bridge/srv/Feedback exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    if requestValue.field_token == 0 or requestValue.field_nonce == 0 or requestValue.field_budget_ns == 0 or
        requestValue.field_budget_ns > 5000000000'u64:
        result.primary = 22
        return
    var bytes: array[32, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 32, written)
    if result.primary != 0: return
    result = core.request[Ros2Uwvm_spot_bridgeSrvFeedback_Response](aliasBytes, 45, 16429, 1,
        bytes.toOpenArray(0, written - 1))
    if result.responsePresent and (result.value.field_token != requestValue.field_token or
        result.value.field_nonce != requestValue.field_nonce):
        result.primary = 22
        result.responsePresent = false
        result.size = 0
