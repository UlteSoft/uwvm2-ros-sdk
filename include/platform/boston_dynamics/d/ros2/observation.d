/// @file observation.d
/// @brief Typed complete boston_dynamics observers and service clients.
module boston_dynamics.d.ros2.observation;
public
import native.d.observation;
import native.d.wire;
public
import boston_dynamics.d.ros2.records;
/// @brief Call complete uwvm_spot_bridge/srv/State exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros2Uwvm_spot_bridgeSrvState_Response callRos2Uwvm_spot_bridgeSrvState(
    const(ubyte)[] aliasBytes, ref const(Ros2Uwvm_spot_bridgeSrvState_Request) requestValue) @nogc nothrow
{
    Observation !Ros2Uwvm_spot_bridgeSrvState_Response result;
    if (!requestValue.field_token || !requestValue.field_nonce || !requestValue.field_budget_ns ||
        requestValue.field_budget_ns > 5000000000UL)
    {
        result.primary = 22;
        return result;
    }
    ubyte[24] bytes;
    size_t written;
    Ros2Uwvm_spot_bridgeSrvState_Request owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros2Uwvm_spot_bridgeSrvState_Response(aliasBytes, 1, bytes[0 ..written]);
    if (result.responsePresent &&
        (result.value.field_token != requestValue.field_token || result.value.field_nonce != requestValue.field_nonce))
    {
        result.primary = 22;
        result.responsePresent = false;
        result.size = 0;
    }
    return result;
}

/// @brief Call complete uwvm_spot_bridge/srv/Lease exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros2Uwvm_spot_bridgeSrvLease_Response callRos2Uwvm_spot_bridgeSrvLease(
    const(ubyte)[] aliasBytes, ref const(Ros2Uwvm_spot_bridgeSrvLease_Request) requestValue) @nogc nothrow
{
    Observation !Ros2Uwvm_spot_bridgeSrvLease_Response result;
    if (!requestValue.field_token || !requestValue.field_nonce || !requestValue.field_budget_ns ||
        requestValue.field_budget_ns > 5000000000UL)
    {
        result.primary = 22;
        return result;
    }
    ubyte[24] bytes;
    size_t written;
    Ros2Uwvm_spot_bridgeSrvLease_Request owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros2Uwvm_spot_bridgeSrvLease_Response(aliasBytes, 1, bytes[0 ..written]);
    if (result.responsePresent &&
        (result.value.field_token != requestValue.field_token || result.value.field_nonce != requestValue.field_nonce))
    {
        result.primary = 22;
        result.responsePresent = false;
        result.size = 0;
    }
    return result;
}

/// @brief Call complete uwvm_spot_bridge/srv/Command exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros2Uwvm_spot_bridgeSrvCommand_Response callRos2Uwvm_spot_bridgeSrvCommand(
    const(ubyte)[] aliasBytes, ref const(Ros2Uwvm_spot_bridgeSrvCommand_Request) requestValue) @nogc nothrow
{
    Observation !Ros2Uwvm_spot_bridgeSrvCommand_Response result;
    if (!requestValue.field_token || !requestValue.field_nonce || !requestValue.field_budget_ns ||
        requestValue.field_budget_ns > 5000000000UL)
    {
        result.primary = 22;
        return result;
    }
    ubyte[24] bytes;
    size_t written;
    Ros2Uwvm_spot_bridgeSrvCommand_Request owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros2Uwvm_spot_bridgeSrvCommand_Response(aliasBytes, 1, bytes[0 ..written]);
    if (result.responsePresent &&
        (result.value.field_token != requestValue.field_token || result.value.field_nonce != requestValue.field_nonce))
    {
        result.primary = 22;
        result.responsePresent = false;
        result.size = 0;
    }
    return result;
}

/// @brief Call complete uwvm_spot_bridge/srv/Velocity exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros2Uwvm_spot_bridgeSrvVelocity_Response callRos2Uwvm_spot_bridgeSrvVelocity(
    const(ubyte)[] aliasBytes, ref const(Ros2Uwvm_spot_bridgeSrvVelocity_Request) requestValue) @nogc nothrow
{
    Observation !Ros2Uwvm_spot_bridgeSrvVelocity_Response result;
    if (!requestValue.field_token || !requestValue.field_nonce || !requestValue.field_budget_ns ||
        requestValue.field_budget_ns > 5000000000UL)
    {
        result.primary = 22;
        return result;
    }
    ubyte[56] bytes;
    size_t written;
    Ros2Uwvm_spot_bridgeSrvVelocity_Request owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros2Uwvm_spot_bridgeSrvVelocity_Response(aliasBytes, 1, bytes[0 ..written]);
    if (result.responsePresent &&
        (result.value.field_token != requestValue.field_token || result.value.field_nonce != requestValue.field_nonce))
    {
        result.primary = 22;
        result.responsePresent = false;
        result.size = 0;
    }
    return result;
}

/// @brief Call complete uwvm_spot_bridge/srv/Feedback exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros2Uwvm_spot_bridgeSrvFeedback_Response callRos2Uwvm_spot_bridgeSrvFeedback(
    const(ubyte)[] aliasBytes, ref const(Ros2Uwvm_spot_bridgeSrvFeedback_Request) requestValue) @nogc nothrow
{
    Observation !Ros2Uwvm_spot_bridgeSrvFeedback_Response result;
    if (!requestValue.field_token || !requestValue.field_nonce || !requestValue.field_budget_ns ||
        requestValue.field_budget_ns > 5000000000UL)
    {
        result.primary = 22;
        return result;
    }
    ubyte[32] bytes;
    size_t written;
    Ros2Uwvm_spot_bridgeSrvFeedback_Request owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros2Uwvm_spot_bridgeSrvFeedback_Response(aliasBytes, 1, bytes[0 ..written]);
    if (result.responsePresent &&
        (result.value.field_token != requestValue.field_token || result.value.field_nonce != requestValue.field_nonce))
    {
        result.primary = 22;
        result.responsePresent = false;
        result.size = 0;
    }
    return result;
}
