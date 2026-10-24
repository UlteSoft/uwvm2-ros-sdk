-- | @file Observation.hs
-- @brief Typed complete boston_dynamics observers and service clients.
module Boston_dynamics.Ros2.Observation where
import Data.Word
import Native.Observation
import qualified Boston_dynamics.Ros2.Records as R
-- @brief Call complete uwvm_spot_bridge/srv/State exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Uwvm_spot_bridgeSrvState ::
    [Word8] ->
    R.Ros2Uwvm_spot_bridgeSrvState_Request ->
    IO (Observation R.Ros2Uwvm_spot_bridgeSrvState_Response)
callRos2Uwvm_spot_bridgeSrvState aliasBytes requestValue
    | R.ros2Uwvm_spot_bridgeSrvState_Request_token requestValue == 0 || R.ros2Uwvm_spot_bridgeSrvState_Request_nonce requestValue == 0
        || R.ros2Uwvm_spot_bridgeSrvState_Request_budget_ns requestValue == 0 || R.ros2Uwvm_spot_bridgeSrvState_Request_budget_ns requestValue > 5000000000 =
        pure empty {primary = 22}
    | otherwise = case R.encodeRos2Uwvm_spot_bridgeSrvState_Request requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos2Uwvm_spot_bridgeSrvState_Response
                    R.encodeRos2Uwvm_spot_bridgeSrvState_Response
                    21433 aliasBytes 1 bytes
                case response result of
                    Just value | R.ros2Uwvm_spot_bridgeSrvState_Response_token value /= R.ros2Uwvm_spot_bridgeSrvState_Request_token requestValue
                        || R.ros2Uwvm_spot_bridgeSrvState_Response_nonce value /= R.ros2Uwvm_spot_bridgeSrvState_Request_nonce requestValue ->
                            pure result {primary = 22, response = Nothing, wire = []}
                    _ -> pure result

-- @brief Call complete uwvm_spot_bridge/srv/Lease exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Uwvm_spot_bridgeSrvLease ::
    [Word8] ->
    R.Ros2Uwvm_spot_bridgeSrvLease_Request ->
    IO (Observation R.Ros2Uwvm_spot_bridgeSrvLease_Response)
callRos2Uwvm_spot_bridgeSrvLease aliasBytes requestValue
    | R.ros2Uwvm_spot_bridgeSrvLease_Request_token requestValue == 0 || R.ros2Uwvm_spot_bridgeSrvLease_Request_nonce requestValue == 0
        || R.ros2Uwvm_spot_bridgeSrvLease_Request_budget_ns requestValue == 0 || R.ros2Uwvm_spot_bridgeSrvLease_Request_budget_ns requestValue > 5000000000 =
        pure empty {primary = 22}
    | otherwise = case R.encodeRos2Uwvm_spot_bridgeSrvLease_Request requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos2Uwvm_spot_bridgeSrvLease_Response
                    R.encodeRos2Uwvm_spot_bridgeSrvLease_Response
                    22 aliasBytes 1 bytes
                case response result of
                    Just value | R.ros2Uwvm_spot_bridgeSrvLease_Response_token value /= R.ros2Uwvm_spot_bridgeSrvLease_Request_token requestValue
                        || R.ros2Uwvm_spot_bridgeSrvLease_Response_nonce value /= R.ros2Uwvm_spot_bridgeSrvLease_Request_nonce requestValue ->
                            pure result {primary = 22, response = Nothing, wire = []}
                    _ -> pure result

-- @brief Call complete uwvm_spot_bridge/srv/Command exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Uwvm_spot_bridgeSrvCommand ::
    [Word8] ->
    R.Ros2Uwvm_spot_bridgeSrvCommand_Request ->
    IO (Observation R.Ros2Uwvm_spot_bridgeSrvCommand_Response)
callRos2Uwvm_spot_bridgeSrvCommand aliasBytes requestValue
    | R.ros2Uwvm_spot_bridgeSrvCommand_Request_token requestValue == 0 || R.ros2Uwvm_spot_bridgeSrvCommand_Request_nonce requestValue == 0
        || R.ros2Uwvm_spot_bridgeSrvCommand_Request_budget_ns requestValue == 0 || R.ros2Uwvm_spot_bridgeSrvCommand_Request_budget_ns requestValue > 5000000000 =
        pure empty {primary = 22}
    | otherwise = case R.encodeRos2Uwvm_spot_bridgeSrvCommand_Request requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos2Uwvm_spot_bridgeSrvCommand_Response
                    R.encodeRos2Uwvm_spot_bridgeSrvCommand_Response
                    26 aliasBytes 1 bytes
                case response result of
                    Just value | R.ros2Uwvm_spot_bridgeSrvCommand_Response_token value /= R.ros2Uwvm_spot_bridgeSrvCommand_Request_token requestValue
                        || R.ros2Uwvm_spot_bridgeSrvCommand_Response_nonce value /= R.ros2Uwvm_spot_bridgeSrvCommand_Request_nonce requestValue ->
                            pure result {primary = 22, response = Nothing, wire = []}
                    _ -> pure result

-- @brief Call complete uwvm_spot_bridge/srv/Velocity exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Uwvm_spot_bridgeSrvVelocity ::
    [Word8] ->
    R.Ros2Uwvm_spot_bridgeSrvVelocity_Request ->
    IO (Observation R.Ros2Uwvm_spot_bridgeSrvVelocity_Response)
callRos2Uwvm_spot_bridgeSrvVelocity aliasBytes requestValue
    | R.ros2Uwvm_spot_bridgeSrvVelocity_Request_token requestValue == 0 || R.ros2Uwvm_spot_bridgeSrvVelocity_Request_nonce requestValue == 0
        || R.ros2Uwvm_spot_bridgeSrvVelocity_Request_budget_ns requestValue == 0 || R.ros2Uwvm_spot_bridgeSrvVelocity_Request_budget_ns requestValue > 5000000000 =
        pure empty {primary = 22}
    | otherwise = case R.encodeRos2Uwvm_spot_bridgeSrvVelocity_Request requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos2Uwvm_spot_bridgeSrvVelocity_Response
                    R.encodeRos2Uwvm_spot_bridgeSrvVelocity_Response
                    26 aliasBytes 1 bytes
                case response result of
                    Just value | R.ros2Uwvm_spot_bridgeSrvVelocity_Response_token value /= R.ros2Uwvm_spot_bridgeSrvVelocity_Request_token requestValue
                        || R.ros2Uwvm_spot_bridgeSrvVelocity_Response_nonce value /= R.ros2Uwvm_spot_bridgeSrvVelocity_Request_nonce requestValue ->
                            pure result {primary = 22, response = Nothing, wire = []}
                    _ -> pure result

-- @brief Call complete uwvm_spot_bridge/srv/Feedback exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Uwvm_spot_bridgeSrvFeedback ::
    [Word8] ->
    R.Ros2Uwvm_spot_bridgeSrvFeedback_Request ->
    IO (Observation R.Ros2Uwvm_spot_bridgeSrvFeedback_Response)
callRos2Uwvm_spot_bridgeSrvFeedback aliasBytes requestValue
    | R.ros2Uwvm_spot_bridgeSrvFeedback_Request_token requestValue == 0 || R.ros2Uwvm_spot_bridgeSrvFeedback_Request_nonce requestValue == 0
        || R.ros2Uwvm_spot_bridgeSrvFeedback_Request_budget_ns requestValue == 0 || R.ros2Uwvm_spot_bridgeSrvFeedback_Request_budget_ns requestValue > 5000000000 =
        pure empty {primary = 22}
    | otherwise = case R.encodeRos2Uwvm_spot_bridgeSrvFeedback_Request requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos2Uwvm_spot_bridgeSrvFeedback_Response
                    R.encodeRos2Uwvm_spot_bridgeSrvFeedback_Response
                    16429 aliasBytes 1 bytes
                case response result of
                    Just value | R.ros2Uwvm_spot_bridgeSrvFeedback_Response_token value /= R.ros2Uwvm_spot_bridgeSrvFeedback_Request_token requestValue
                        || R.ros2Uwvm_spot_bridgeSrvFeedback_Response_nonce value /= R.ros2Uwvm_spot_bridgeSrvFeedback_Request_nonce requestValue ->
                            pure result {primary = 22, response = Nothing, wire = []}
                    _ -> pure result
